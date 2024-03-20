.class Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "MiuiHeadsetFragment.java"


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

    .line 2280
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBluetoothA2dpReceiver.onReceive v2 intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    .line 2285
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const-string p1, "android.bluetooth.extra.CODEC_STATUS"

    .line 2286
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothCodecStatus;

    .line 2288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received BluetoothCodecStatus="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/os/Handler;)V

    .line 2291
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2292
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    new-instance p2, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmDelayRunnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;)V

    .line 2294
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msetDeviceAACWhiteListConfig(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2295
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2296
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDelayRunnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$DelayRunnable;

    move-result-object p2

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2298
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAndEnableCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2299
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateHeadTrackEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 2300
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "android.bluetooth.profile.extra.STATE"

    const/4 v6, 0x2

    if-eqz v2, :cond_5

    const/16 v0, 0xb

    .line 2301
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 2303
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateA2DPPlayingState transition: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "miui_store_audio_share_device_address"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2308
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2309
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "le_audio_pre"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 2310
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 2311
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 2312
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v1, "abs_volume_pre"

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_3

    .line 2313
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p1

    if-eq p1, v4, :cond_13

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    const-string p1, "LEAUDIO"

    .line 2314
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v4, :cond_13

    :cond_3
    if-eqz p2, :cond_13

    if-ne v2, v0, :cond_4

    .line 2317
    invoke-virtual {p2, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_4
    const/16 p0, 0xa

    if-ne v2, p0, :cond_13

    .line 2319
    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo p1, "support_audio_share"

    .line 2325
    invoke-static {p1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MultiA2dp.ACTION.VOLUME_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MultiA2dp.EXTRA.VOLUME_VALUE"

    const/16 v0, 0x32

    .line 2326
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_MULTIA2DP_VOLUME_CHANGED received value is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$msetAudioShareVolume(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    goto/16 :goto_1

    :cond_6
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 2330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz p1, :cond_f

    .line 2332
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAndEnableCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2333
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "getProfileProxy."

    .line 2334
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mgetProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 2338
    :cond_7
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2341
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 2342
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetRename:Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;

    if-eqz v0, :cond_9

    if-ne p1, v6, :cond_8

    move v3, v4

    .line 2343
    :cond_8
    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetRename;->onHfpChanged(Z)V

    :cond_9
    if-nez p1, :cond_b

    if-eqz p2, :cond_b

    .line 2345
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2347
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2348
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    if-nez p1, :cond_a

    .line 2349
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V

    .line 2351
    :cond_a
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 2352
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshInDisconnect()V

    goto/16 :goto_1

    :cond_b
    if-ne p1, v6, :cond_13

    if-eqz p2, :cond_13

    .line 2354
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 2356
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2357
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateHeadTrackEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    .line 2358
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportInear(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 2359
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmInearTest(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2361
    :cond_c
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmShowAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 2362
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAutoAck(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2364
    :cond_d
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSupportSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 2365
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmSilentUpgrade(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2367
    :cond_e
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2368
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVirtualSurroundSound(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_f
    const-string p1, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 2371
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2372
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 2374
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2375
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->findLeAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_10
    const-string v0, ""

    .line 2377
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MMA_STATUS_CHANGED, device= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mDevice "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " LEstr "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_13

    .line 2379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2380
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_13

    const-string/jumbo v0, "mma_type"

    .line 2382
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "mma_status"

    .line 2383
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MMA_STATUS_CHANGED, state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_13

    .line 2386
    invoke-static {p2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isConnectSate(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2387
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->refreshInDisconnect()V

    goto :goto_1

    .line 2389
    :cond_11
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshBleMmaConnection(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :cond_12
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 2393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2395
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1, v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAndEnableCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    .line 2396
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$9;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateHeadTrackEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    :cond_13
    :goto_1
    return-void
.end method
