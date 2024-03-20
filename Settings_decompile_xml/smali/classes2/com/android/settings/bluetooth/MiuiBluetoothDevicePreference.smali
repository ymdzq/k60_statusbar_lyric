.class public Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;
.super Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.source "MiuiBluetoothDevicePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lmiui/bluetooth/ble/MiBleDeviceManager;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ZLmiui/bluetooth/ble/MiBleDeviceManager;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method


# virtual methods
.method protected getBtClassDrawableWithDescription()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBleDeviceMgr:Lmiui/bluetooth/ble/MiBleDeviceManager;

    if-eqz v0, :cond_8

    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 36
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBleDeviceMgr:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_6

    const/4 v1, 0x2

    if-eq v2, v1, :cond_4

    const/16 v1, 0x45

    if-eq v2, v1, :cond_2

    const/16 v1, 0x3e7

    if-eq v2, v1, :cond_6

    const-string v0, "MiuiBluetoothDevicePreference"

    const-string v1, "getBtClassDrawableWithDescription: TYPE_MI is UNKNOWN!"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 44
    :cond_2
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 45
    sget v0, Lcom/android/settings/R$drawable;->ic_ble_mikey_bonded:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/settings/R$drawable;->ic_ble_mikey:I

    .line 44
    :goto_2
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->bluetooth_talkback_bluetooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 49
    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_5

    .line 50
    sget v0, Lcom/android/settings/R$drawable;->ic_ble_mivr_controller_bonded:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/android/settings/R$drawable;->ic_ble_mivr_controller:I

    .line 49
    :goto_3
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->bluetooth_talkback_bluetooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 39
    :cond_6
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_7

    .line 40
    sget v0, Lcom/android/settings/R$drawable;->ic_ble_bracelet_bonded:I

    goto :goto_4

    :cond_7
    sget v0, Lcom/android/settings/R$drawable;->ic_ble_bracelet:I

    .line 39
    :goto_4
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 41
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->bluetooth_talkback_bluetooth:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 61
    :cond_8
    :goto_5
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawableWithDescription()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public updateAttributes()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->updateAttributes()V

    .line 66
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget v0, Lcom/android/settings/R$string;->bluetooth_paired:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method
