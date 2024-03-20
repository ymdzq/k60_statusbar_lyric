.class final Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;
.super Landroid/os/Handler;
.source "MiuiHeadsetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/os/Looper;)V
    .locals 0

    .line 4432
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4433
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 4439
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MiuiHeadsetFragment"

    .line 4440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_9

    const/4 v1, 0x0

    const/16 v2, 0x67

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 4544
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4545
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const-string/jumbo p1, "persist.vendor.bt.a2dp.disallow_reconnectlist"

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$maddToWhiteList(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4547
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const-string/jumbo p1, "persist.vendor.bt.a2dp.disallow_reconnectlist"

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mdelFromWhiteList(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4456
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$motaHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    goto/16 :goto_2

    .line 4511
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 4512
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0x75

    invoke-interface {p1, v2, v0, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 4513
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateSilentUpgrdeSwitch(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4528
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4529
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "abs_volume_pre"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 4530
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4531
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v2, "le_audio_pre"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_b

    .line 4533
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 4534
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 4535
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const-string v0, "LEAUDIO"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 4536
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p1

    if-ne p1, v3, :cond_b

    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_b

    :cond_2
    const-string p1, "MiuiHeadsetFragment"

    const-string/jumbo v0, "on resume change state"

    .line 4537
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4538
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const-string v2, "LEAUDIO"

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 4539
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p0

    if-eq p0, v3, :cond_3

    move v1, v3

    .line 4538
    :cond_3
    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAbsoluteVolume(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    goto/16 :goto_2

    :pswitch_4
    const-string p1, ""

    .line 4505
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4506
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {p1, v2, v0, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 4508
    :cond_4
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateNotificationSwitchState(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4522
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    if-eqz p1, :cond_b

    const-string p1, "MiuiHeadsetFragment"

    .line 4523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HD adudio status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHDValue(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4524
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHDValue(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/16 v1, 0x79

    invoke-interface {p1, v1, v0, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto/16 :goto_2

    .line 4517
    :pswitch_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 4518
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    const-string v0, ""

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const/16 v1, 0x7a

    invoke-interface {p1, v1, v0, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto/16 :goto_2

    .line 4499
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-interface {p1, v2, v0, v1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 4500
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->updateAtUiInfo(Ljava/lang/String;)V

    .line 4501
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mrefreshGyrStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    goto/16 :goto_2

    .line 4485
    :pswitch_8
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAncLock(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4486
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4487
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPendingAnc(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4488
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPendingAnc(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->deviceReportInfoAnc(Ljava/lang/String;)V

    .line 4489
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmAncPendingStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    .line 4490
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4491
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmPendingAnc(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 4493
    :cond_5
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fputmAncPendingStatus(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;I)V

    .line 4495
    :goto_0
    monitor-exit p1

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :pswitch_9
    const/16 p1, 0x66

    .line 4480
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4481
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$mupdateAndEnableCode(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;Z)V

    goto/16 :goto_2

    .line 4460
    :pswitch_a
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    if-nez v0, :cond_6

    .line 4461
    new-instance v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4463
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/os/Handler;

    move-result-object v5

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v6

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;)V

    iput-object v0, p1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    .line 4466
    :cond_6
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->loadDefault()V

    goto/16 :goto_2

    .line 4443
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmToken(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4444
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVid(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPid(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmFwVersion(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmToken(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-interface {v0, v2, v1, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_1

    .line 4446
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAccountResult(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4447
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmVid(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmPid(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmFwVersion(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmAccountResult(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object v4

    .line 4448
    invoke-virtual {v4}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 4447
    invoke-interface {v0, v2, v1, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 4450
    :cond_8
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_b

    .line 4451
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$motaHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)V

    goto :goto_2

    .line 4470
    :cond_9
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object v0, p1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    if-nez v0, :cond_a

    .line 4471
    new-instance v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    .line 4473
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Landroid/os/Handler;

    move-result-object v5

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v6

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->-$$Nest$fgetmWorkHandler(Lcom/android/settings/bluetooth/MiuiHeadsetFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/os/Handler;)V

    iput-object v0, p1, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    .line 4476
    :cond_a
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment$MessageHandler;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFragment;->mMiuiHeadsetAnimation:Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->checkAndDoCopy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "MiuiHeadsetFragment"

    .line 4552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
