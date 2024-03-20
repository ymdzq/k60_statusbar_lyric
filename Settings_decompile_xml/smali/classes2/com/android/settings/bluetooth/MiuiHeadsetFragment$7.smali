.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;
.super Ljava/lang/Object;
.source "MiuiHeadsetFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V
    .locals 0

    .line 2140
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "onA2dpServiceConnected()"

    .line 2144
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2146
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/bluetooth/BluetoothA2dp;)V

    const-string/jumbo p2, "support_audio_share"

    const/4 v0, 0x0

    .line 2148
    invoke-static {p2, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2149
    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    .line 2150
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    .line 2151
    invoke-virtual {p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p2

    if-ne p2, v2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2152
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v3, "audio_share_container"

    invoke-virtual {p2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2153
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAudioShareContainer(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/PreferenceGroup;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 2156
    :cond_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2157
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmUpdatePrefForA2DPConnected(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2158
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateCodecStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 2160
    :cond_3
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msetDeviceAACWhiteListConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2161
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2, v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAndEnableCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2162
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateHeadTrackEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 2163
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2164
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v3, "abs_volume_pre"

    invoke-virtual {p2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    if-eqz p2, :cond_6

    .line 2166
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 2167
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_store_audio_share_device_address"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2168
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "MiuiHeadsetFragment"

    .line 2170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected set abs status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    .line 2174
    :cond_4
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 2172
    :cond_5
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2178
    :cond_6
    :goto_1
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

    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "onA2dpServiceDisconnected()"

    .line 2183
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2185
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$7;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    .line 2186
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
