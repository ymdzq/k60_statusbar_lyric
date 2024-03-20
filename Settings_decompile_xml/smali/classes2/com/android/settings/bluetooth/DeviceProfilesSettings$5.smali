.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .line 1612
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo v0, "onServiceConnected()"

    .line 1616
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1618
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/bluetooth/BluetoothA2dp;)V

    const-string/jumbo p2, "support_audio_share"

    const/4 v0, 0x0

    .line 1620
    invoke-static {p2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 1621
    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 1622
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 1623
    invoke-virtual {v2, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p2

    if-ne p2, v1, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1624
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v2, "audio_share_container"

    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1626
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1629
    :cond_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1630
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1632
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    .line 1635
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1636
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "persist.vendor.bt.a2dp.choppy"

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$misDeviceInListForAudioRepair(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1637
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_3

    .line 1639
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v1, "audio_repair_container"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1640
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAudioRepairContainer(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroidx/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1645
    :cond_3
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1646
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1647
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mupdateCodecStatus(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1649
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "DeviceProfilesSettings"

    const-string/jumbo v0, "onServiceDisconnected()"

    .line 1654
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1656
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$5;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/DeviceProfilesSettings;I)V

    .line 1657
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
