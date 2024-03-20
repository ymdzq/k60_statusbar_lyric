.class public final Lcom/android/systemui/statusbar/ToggleManagerController$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/ToggleManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ToggleManagerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "com.miui.home"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const-string v0, "android"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    const-string v0, "com.mi.android.globallauncher"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_8

    .line 28
    :cond_0
    const-string p1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_8

    .line 40
    const-string p1, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    .line 42
    const/4 v0, -0x1

    .line 44
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    move-result p1

    .line 48
    const/4 p2, 0x1

    .line 49
    if-eq p1, p2, :cond_7

    .line 50
    const/4 v0, 0x2

    .line 52
    if-eq p1, v0, :cond_6

    .line 53
    const/4 v0, 0x5

    .line 55
    const/4 v1, 0x4

    .line 56
    if-eq p1, v0, :cond_5

    .line 57
    const/16 v0, 0xf

    .line 59
    if-eq p1, v0, :cond_4

    .line 61
    const/16 v0, 0x18

    .line 63
    const-string v2, "airplane_mode_on"

    .line 65
    const/4 v3, 0x0

    .line 67
    if-eq p1, v0, :cond_2

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 70
    goto/16 :goto_0

    .line 73
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 77
    check-cast p0, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->isEnabled()Z

    .line 81
    move-result p1

    .line 84
    xor-int/2addr p1, p2

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/MiuiFlashlightControllerImpl;->setFlashlight(Z)V

    .line 86
    goto/16 :goto_0

    .line 89
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mContext:Landroid/content/Context;

    .line 93
    const-class p1, Landroid/os/PowerManager;

    .line 95
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object p0

    .line 100
    check-cast p0, Landroid/os/PowerManager;

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 103
    move-result-wide p1

    .line 106
    invoke-virtual {p0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 107
    goto :goto_0

    .line 110
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 111
    iget-object p1, p1, Lcom/android/systemui/statusbar/ToggleManagerController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 115
    move-result-object p1

    .line 118
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 119
    move-result p1

    .line 122
    if-ne p1, p2, :cond_1

    .line 123
    move v3, p2

    .line 125
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 128
    xor-int/lit8 p1, v3, 0x1

    .line 130
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 132
    goto :goto_0

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 136
    iget-object p1, p1, Lcom/android/systemui/statusbar/ToggleManagerController;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 140
    move-result-object p1

    .line 143
    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 144
    move-result p1

    .line 147
    if-ne p1, p2, :cond_3

    .line 148
    move v3, p2

    .line 150
    :cond_3
    if-nez v3, :cond_8

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 155
    check-cast p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    .line 159
    move-result p1

    .line 162
    xor-int/2addr p1, p2

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->setHotspotEnabled(Z)V

    .line 164
    goto :goto_0

    .line 167
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 170
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    .line 172
    move-result p1

    .line 175
    xor-int/2addr p1, p2

    .line 176
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 177
    goto :goto_0

    .line 180
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->toggleSilent(Landroid/content/Context;I)V

    .line 185
    goto :goto_0

    .line 188
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 191
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 193
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 195
    xor-int/2addr p1, p2

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setBluetoothEnabled(Z)V

    .line 198
    goto :goto_0

    .line 201
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController$1;->this$0:Lcom/android/systemui/statusbar/ToggleManagerController;

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/ToggleManagerController;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 204
    invoke-virtual {p0}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 206
    move-result-object p1

    .line 209
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    .line 210
    move-result p1

    .line 213
    xor-int/2addr p1, p2

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 215
    :cond_8
    :goto_0
    return-void

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 220
.end method
