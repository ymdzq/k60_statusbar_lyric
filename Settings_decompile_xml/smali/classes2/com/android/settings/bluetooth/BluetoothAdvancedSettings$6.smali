.class Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 461
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 462
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string/jumbo v0, "persist.bluetooth.disableinbandringing"

    const/4 v1, 0x1

    .line 466
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 468
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAudioManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 471
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmTelephonyManager(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 472
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmAdapter(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    .line 473
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "hfp_device_status"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "lea_device_status"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v2, v1, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    move p1, v5

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v1

    .line 481
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_2
    move v4, v2

    goto :goto_3

    :sswitch_0
    const-string v0, "com.android.bluetooth.action.device_status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x4

    goto :goto_3

    :sswitch_1
    const-string v0, "com.android.bluetooth.action.lea_device_status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :sswitch_2
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v6

    goto :goto_3

    :sswitch_3
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_3

    :sswitch_4
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :cond_7
    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown action "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothAdvancedSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 487
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings$6;->this$0:Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmInbandringPreference(Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/Preference;

    move-result-object p0

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_4
        -0x5591500b -> :sswitch_3
        -0x4f0a83a5 -> :sswitch_2
        0xeef27f8 -> :sswitch_1
        0x327dfbef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
