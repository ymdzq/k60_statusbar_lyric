.class public Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;
.super Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;
.source "GroupBluetoothDevicesBondedUpdater.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mGroupId:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field private mMetricsCategory:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    .line 56
    new-instance p2, Lcom/android/settings/bluetooth/GroupUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 57
    iput p4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mGroupId:I

    .line 58
    iput p3, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mMetricsCategory:I

    return-void
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "group_options_bonded_devices_updater"

    return-object p0
.end method

.method public isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    .line 63
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 65
    sget-boolean v1, Lcom/android/settings/bluetooth/GroupBluetoothDeviceUpdater;->DBG:Z

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFilterMatched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "bond state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGroupId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mGroupId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GroupBluetoothDevicesBondedUpdater"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->isGroupDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mGroupId:I

    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/GroupUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedUpdater;->mMetricsCategory:I

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 77
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 78
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    const/4 p0, 0x1

    return p0
.end method
