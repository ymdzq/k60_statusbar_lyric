.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "DeviceProfilesSettings.java"


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

    .line 1708
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LDAC: mBluetoothA2dpReceiver.onReceive intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceProfilesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 1713
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "android.bluetooth.extra.CODEC_STATUS"

    .line 1714
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothCodecStatus;

    .line 1716
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received BluetoothCodecStatus="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Handler;)V

    .line 1719
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1720
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    new-instance p2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fputmDelayRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;)V

    .line 1722
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1723
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settings/bluetooth/DeviceProfilesSettings$DelayRunnable;

    move-result-object p0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 1724
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/16 v2, 0xb

    .line 1725
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 1727
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateA2DPPlayingState transition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "miui_store_audio_share_device_address"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1732
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1733
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "le_audio_pre"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 1734
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1735
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 1736
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v1, "abs_volume_pre"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1737
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p1

    if-eq p1, v1, :cond_6

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LEAUDIO"

    .line 1738
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_6

    :cond_3
    if-eqz p2, :cond_6

    if-ne v0, v2, :cond_4

    .line 1741
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const/16 p0, 0xa

    if-ne v0, p0, :cond_6

    .line 1743
    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo p1, "support_audio_share"

    .line 1751
    invoke-static {p1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MultiA2dp.ACTION.VOLUME_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MultiA2dp.EXTRA.VOLUME_VALUE"

    const/16 v0, 0x32

    .line 1752
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_MULTIA2DP_VOLUME_CHANGED received value is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$7;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$msetAudioShareVolume(Lcom/android/settings/bluetooth/DeviceProfilesSettings;I)V

    :cond_6
    :goto_0
    return-void
.end method
