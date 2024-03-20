.class Lcom/android/settings/bluetooth/BluetoothSettings$9;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1000
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "BluetoothSettings"

    if-nez v0, :cond_0

    .line 1001
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick() called for other View: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1004
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1005
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1009
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1017
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 1018
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 1019
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    .line 1020
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "mibandSupportHid gotoBleProfile success"

    .line 1021
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTempBLEDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1023
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->gotoBleProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1025
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->checkStartMiuiHeadset(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1026
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getConfigByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "XIAOMICONFIG"

    .line 1028
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1031
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object v0

    const-string v1, "bt_slice_settings_enabled"

    const/4 v2, 0x1

    const-string/jumbo v3, "settings_ui"

    .line 1033
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1035
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object v0

    .line 1036
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1037
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1038
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fastpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pixel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "device_address"

    .line 1040
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1039
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 1042
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->bluetooth_device_advanced_title:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1041
    invoke-static/range {v2 .. v8}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 1045
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$9;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1046
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->bluetooth_device_advanced_title:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1045
    invoke-static/range {v2 .. v8}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    :cond_4
    :goto_0
    return-void
.end method
