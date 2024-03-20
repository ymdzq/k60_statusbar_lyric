.class public final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_START"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const-string v1, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_END"

    .line 12
    const-string v2, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_START"

    .line 14
    const-string v3, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_END"

    .line 16
    const/4 v4, -0x1

    .line 18
    const-string v5, "BluetoothController"

    .line 19
    const/4 v6, 0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    if-nez v0, :cond_4

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_4

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_4

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    goto/16 :goto_1

    .line 43
    :cond_0
    const-string v0, "android.intent.action.BLUETOOTH_HANDSFREE_BATTERY_CHANGED"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    const-string p1, "android.intent.extra.show_bluetooth_handsfree_battery"

    .line 53
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 55
    move-result p1

    .line 58
    const-string v0, "android.intent.extra.bluetooth_handsfree_battery_level"

    .line 59
    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 61
    move-result p2

    .line 64
    add-int/2addr p2, v6

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "onReceive: HANDSFREE_BATTERY_CHANGED, show = "

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", level = "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 87
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 91
    if-eqz p1, :cond_1

    .line 93
    move v4, p2

    .line 95
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setBluetoothBattery(I)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onDeviceAttributesChanged()V

    .line 101
    goto/16 :goto_4

    .line 104
    :cond_2
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p1

    .line 111
    if-eqz p1, :cond_9

    .line 112
    const-string p1, "android.xiaomi.bluetooth.BLUETOOTH_RESTRICT_STATE"

    .line 114
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 116
    move-result p1

    .line 119
    if-eqz p1, :cond_9

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothRestrictState(Landroid/content/Context;)Z

    .line 126
    move-result p1

    .line 129
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 130
    if-nez p2, :cond_3

    .line 132
    goto :goto_0

    .line 134
    :cond_3
    move v7, p1

    .line 135
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRestrictState:Z

    .line 136
    if-eq v7, p1, :cond_9

    .line 138
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mRestrictState:Z

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 142
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 144
    move-result-object p1

    .line 147
    const/16 p2, 0x66

    .line 148
    iput p2, p1, Landroid/os/Message;->what:I

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 152
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    goto :goto_4

    .line 157
    :cond_4
    :goto_1
    const-string p2, "onReceive: action = "

    .line 158
    invoke-static {p2, p1, v5}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 163
    iget p2, p2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mInoutState:I

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 170
    const/4 v0, -0x1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 174
    move-result v1

    .line 177
    sparse-switch v1, :sswitch_data_0

    .line 178
    goto :goto_2

    .line 181
    :sswitch_0
    const-string v1, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_END"

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result p1

    .line 187
    if-nez p1, :cond_5

    .line 188
    goto :goto_2

    .line 190
    :cond_5
    const/4 v0, 0x3

    .line 191
    goto :goto_2

    .line 192
    :sswitch_1
    const-string v1, "com.android.bluetooth.opp.BLUETOOTH_OPP_OUTBOUND_START"

    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result p1

    .line 198
    if-nez p1, :cond_6

    .line 199
    goto :goto_2

    .line 201
    :cond_6
    const/4 v0, 0x2

    .line 202
    goto :goto_2

    .line 203
    :sswitch_2
    const-string v1, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_START"

    .line 204
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result p1

    .line 209
    if-nez p1, :cond_7

    .line 210
    goto :goto_2

    .line 212
    :cond_7
    const/4 v0, 0x1

    .line 213
    goto :goto_2

    .line 214
    :sswitch_3
    const-string v1, "com.android.bluetooth.opp.BLUETOOTH_OPP_INBOUND_END"

    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result p1

    .line 220
    if-nez p1, :cond_8

    .line 221
    goto :goto_2

    .line 223
    :cond_8
    const/4 v0, 0x0

    .line 224
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 225
    goto :goto_3

    .line 228
    :pswitch_0
    and-int/lit8 p2, p2, -0x3

    .line 229
    goto :goto_3

    .line 231
    :pswitch_1
    or-int/lit8 p2, p2, 0x2

    .line 232
    goto :goto_3

    .line 234
    :pswitch_2
    or-int/lit8 p2, p2, 0x1

    .line 235
    goto :goto_3

    .line 237
    :pswitch_3
    and-int/lit8 p2, p2, -0x2

    .line 238
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->setInoutState(I)V

    .line 242
    :cond_9
    :goto_4
    return-void

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x37a55737 -> :sswitch_3
        0x1d1b9cd0 -> :sswitch_2
        0x351ec7bf -> :sswitch_1
        0x3bb9c378 -> :sswitch_0
    .end sparse-switch

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 264
.end method
