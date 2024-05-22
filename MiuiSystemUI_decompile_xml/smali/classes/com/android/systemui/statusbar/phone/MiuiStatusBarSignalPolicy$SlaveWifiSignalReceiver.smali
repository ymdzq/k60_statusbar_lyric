.class public final Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 2
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSupportSlaveWifi:Z

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x4

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, -0x1

    .line 23
    sparse-switch v0, :sswitch_data_0

    .line 24
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v0, "android.net.wifi.AML_NETWORK_SLAVE_STATE_CHANGE"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    move v4, v1

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    const/4 v4, 0x3

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v0, "android.net.wifi.AML_WIFI_SLAVE_STATE_CHANGE"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    const/4 v4, 0x2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string v0, "android.net.wifi.SLAVE_STATE_CHANGE"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 66
    if-nez p1, :cond_5

    .line 67
    goto :goto_0

    .line 69
    :cond_5
    move v4, v2

    .line 70
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v0, "android.net.wifi.SLAVE_RSSI_CHANGED"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 77
    if-nez p1, :cond_6

    .line 78
    goto :goto_0

    .line 80
    :cond_6
    move v4, v3

    .line 81
    :goto_0
    const/16 p1, 0x11

    .line 82
    const/16 v0, 0x12

    .line 84
    const-string/jumbo v5, "wifi_state"

    .line 86
    const-string v6, "MiuiStatusBarSignalPolicy"

    .line 89
    packed-switch v4, :pswitch_data_0

    .line 91
    goto/16 :goto_4

    .line 94
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 96
    const-string v0, "isConnected"

    .line 98
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 100
    move-result p2

    .line 103
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    const-string p2, "handleBroadcast: network_aml_slave_state_change, connected = "

    .line 108
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 113
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 115
    invoke-static {p1, p2, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 117
    goto/16 :goto_4

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 122
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 124
    move-result p2

    .line 127
    if-ne p2, p1, :cond_7

    .line 128
    goto :goto_1

    .line 130
    :cond_7
    move v2, v3

    .line 131
    :goto_1
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    const-string p2, "handleBroadcast: wifi slave state changed, enabled = "

    .line 136
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 141
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 143
    invoke-static {p1, p2, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 145
    goto/16 :goto_4

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 150
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 152
    move-result p2

    .line 155
    if-ne p2, p1, :cond_8

    .line 156
    goto :goto_2

    .line 158
    :cond_8
    move v2, v3

    .line 159
    :goto_2
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    .line 162
    const-string p2, "handleBroadcast: aml wifi slave state changed, enabled = "

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 169
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiEnabled:Z

    .line 171
    invoke-static {p1, p2, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 173
    goto :goto_4

    .line 176
    :pswitch_3
    const-string p1, "networkInfo"

    .line 177
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 179
    move-result-object p1

    .line 182
    check-cast p1, Landroid/net/NetworkInfo;

    .line 183
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 185
    if-eqz p1, :cond_9

    .line 187
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 189
    move-result p1

    .line 192
    if-eqz p1, :cond_9

    .line 193
    goto :goto_3

    .line 195
    :cond_9
    move v2, v3

    .line 196
    :goto_3
    iput-boolean v2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    .line 199
    const-string p2, "handleBroadcast: network_slave_state_change, connected = "

    .line 201
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 206
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiConnected:Z

    .line 208
    invoke-static {p1, p2, v6}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 210
    goto :goto_4

    .line 213
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 214
    const-string v0, "newRssi"

    .line 216
    const/16 v2, -0xc8

    .line 218
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 220
    move-result p2

    .line 223
    iput p2, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiRssi:I

    .line 224
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 226
    iget p2, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiRssi:I

    .line 228
    const/4 v0, 0x5

    .line 230
    invoke-static {p2, v0}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    .line 231
    move-result p2

    .line 234
    iput p2, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiLevel:I

    .line 235
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 237
    iget p2, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiLevel:I

    .line 239
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 241
    move-result p2

    .line 244
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 245
    move-result p2

    .line 248
    iput p2, p1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiLevel:I

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    .line 251
    const-string p2, "handleBroadcast: rssi changed,  rssi = "

    .line 253
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 258
    iget p2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiRssi:I

    .line 260
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string p2, ", level = "

    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 270
    iget p2, p2, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->mSlaveWifiLevel:I

    .line 272
    invoke-static {p1, p2, v6}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 274
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy$SlaveWifiSignalReceiver;->this$0:Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarSignalPolicy;->updateSlaveWifiIconState()V

    .line 279
    return-void

    .line 282
    nop

    .line 283
    :sswitch_data_0
    .sparse-switch
        -0x64b4e4a3 -> :sswitch_4
        -0x62333411 -> :sswitch_3
        -0x3f8e4478 -> :sswitch_2
        -0x36281783 -> :sswitch_1
        0x7500663f -> :sswitch_0
    .end sparse-switch

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 306
.end method
