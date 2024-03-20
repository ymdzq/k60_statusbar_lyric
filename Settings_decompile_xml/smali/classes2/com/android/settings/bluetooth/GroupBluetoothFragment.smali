.class public Lcom/android/settings/bluetooth/GroupBluetoothFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "GroupBluetoothFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final DBG:Z


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mGroupId:I

.field private mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

.field protected mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->DBG_GROUP:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_bluetooth"

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 132
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPreferenceControllers mGroupId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupBluetoothFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 137
    new-instance v2, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;

    iget v3, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v2, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaController;

    iget v3, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    invoke-direct {v2, p1, p0, v1, v3}, Lcom/android/settings/bluetooth/GroupBluetoothDevicesAvailableMediaController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v2, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;

    iget v3, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    invoke-direct {v2, p1, p0, v1, v3}, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedController;

    iget v3, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    invoke-direct {v2, p1, p0, v1, v3}, Lcom/android/settings/bluetooth/GroupBluetoothDevicesBondedController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 108
    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/GroupUtils;->isHideGroupOptions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string v0, "GroupBluetoothFragment"

    const-string v1, "finishFragment"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "GroupBluetoothFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 127
    sget p0, Lcom/android/settings/R$xml;->bluetooth_group_details_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    .line 81
    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mCtx:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/settings/bluetooth/GroupUtils;

    iget-object v1, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/GroupUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupUtils:Lcom/android/settings/bluetooth/GroupUtils;

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 84
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 86
    iget p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onAttach mGroupId not valid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mGroupId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GroupBluetoothFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 92
    :cond_0
    const-class p1, Lcom/android/settings/bluetooth/GroupBluetoothDetailsButtonsController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 150
    sget-boolean v0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged bluetoothState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GroupBluetoothFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0xd

    if-ne v0, p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 97
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/GroupBluetoothFragment;->finishFragmentIfNecessary()V

    return-void
.end method
