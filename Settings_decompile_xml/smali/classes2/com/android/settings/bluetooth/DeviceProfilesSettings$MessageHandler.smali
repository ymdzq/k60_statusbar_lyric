.class final Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;
.super Landroid/os/Handler;
.source "DeviceProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Looper;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 314
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Looper;Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "DeviceProfilesSettings"

    .line 320
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v0, 0x65

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    .line 340
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v0, "persist.vendor.bt.a2dp.disallow_reconnectlist"

    if-eqz p1, :cond_1

    .line 341
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$maddToWhiteList(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 343
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mdelFromWhiteList(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 324
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 325
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "abs_volume_pre"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 326
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .line 327
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "le_audio_pre"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_6

    .line 329
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "miui_store_audio_share_device_address"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "LEAUDIO"

    const/4 v3, 0x1

    if-nez p1, :cond_4

    if-eqz v1, :cond_6

    :try_start_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p1

    if-ne p1, v3, :cond_6

    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_6

    :cond_4
    const-string/jumbo p1, "on resume change state"

    .line 333
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmAbsAudioManager(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$MessageHandler;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getLeAudioStatus()I

    move-result p0

    if-eq p0, v3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 334
    :goto_0
    invoke-static {p1, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-$$Nest$mupdateAbsoluteVolume(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method
