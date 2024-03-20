.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

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
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x5

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v0, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x4

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    const/4 v3, 0x3

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    const/4 v3, 0x2

    .line 62
    goto :goto_0

    .line 63
    :sswitch_4
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    move v3, v1

    .line 73
    goto :goto_0

    .line 74
    :sswitch_5
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    goto :goto_0

    .line 83
    :cond_5
    move v3, v2

    .line 84
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 85
    goto/16 :goto_7

    .line 88
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 90
    const-string p1, "android.telecom.extra.CURRENT_TTY_MODE"

    .line 92
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 94
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    .line 98
    goto/16 :goto_7

    .line 101
    :pswitch_1
    const-string p0, "rebroadcastOnUnlock"

    .line 103
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 105
    goto/16 :goto_7

    .line 108
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 112
    goto/16 :goto_7

    .line 115
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 117
    check-cast p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    const-string/jumbo p1, "state"

    .line 124
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 127
    move-result p1

    .line 130
    if-eqz p1, :cond_6

    .line 131
    move p1, v1

    .line 133
    goto :goto_1

    .line 134
    :cond_6
    move p1, v2

    .line 135
    :goto_1
    const-string v0, "microphone"

    .line 136
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 138
    move-result v0

    .line 141
    if-eqz v0, :cond_7

    .line 142
    move v0, v1

    .line 144
    goto :goto_2

    .line 145
    :cond_7
    move v0, v2

    .line 146
    :goto_2
    const-string v3, "address"

    .line 147
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 152
    const-string v4, "null"

    .line 153
    if-nez v3, :cond_8

    .line 155
    move-object v3, v4

    .line 157
    :cond_8
    const-string v5, "portName"

    .line 158
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v5

    .line 163
    if-nez v5, :cond_9

    .line 164
    goto :goto_3

    .line 166
    :cond_9
    move-object v4, v5

    .line 167
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v6, "updateHeadsetPlug: intent = "

    .line 170
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    const-string p2, " connected = "

    .line 179
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    const-string p2, " hasMic = "

    .line 187
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    const-string p2, " address = "

    .line 195
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string p2, " portName = "

    .line 203
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 214
    const-string v5, "MiuiPhoneStatusBarPolicy"

    .line 215
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object p2

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mHeadsetMap:Ljava/util/HashMap;

    .line 224
    if-eqz p1, :cond_a

    .line 226
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 228
    move-result-object v4

    .line 231
    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    goto :goto_4

    .line 235
    :cond_a
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 239
    move-result p1

    .line 242
    xor-int/2addr p1, v1

    .line 243
    if-eqz p1, :cond_b

    .line 244
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 246
    move-result-object p2

    .line 249
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 250
    move-result-object p2

    .line 253
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda0;

    .line 254
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda0;-><init>()V

    .line 256
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 259
    move-result v0

    .line 262
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 265
    if-eqz p1, :cond_e

    .line 267
    if-eqz v0, :cond_c

    .line 269
    const p1, 0x7f1300f5    # @string/accessibility_status_bar_headset 'Headset connected'

    .line 271
    goto :goto_5

    .line 274
    :cond_c
    const p1, 0x7f1300f4    # @string/accessibility_status_bar_headphones 'Headphones connected'

    .line 275
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    .line 278
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 280
    move-result-object p0

    .line 283
    if-eqz v0, :cond_d

    .line 284
    const p1, 0x7f08182c    # @drawable/stat_sys_headset 'res/drawable/stat_sys_headset.xml'

    .line 286
    goto :goto_6

    .line 289
    :cond_d
    const p1, 0x7f081830    # @drawable/stat_sys_headset_without_mic 'res/drawable/stat_sys_headset_without_mic.xml'

    .line 290
    :goto_6
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 293
    invoke-virtual {v3, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    .line 295
    invoke-virtual {v3, p2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 298
    goto :goto_7

    .line 301
    :cond_e
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 302
    invoke-virtual {v3, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    .line 304
    :goto_7
    return-void

    .line 307
    :sswitch_data_0
    .sparse-switch
        -0x63ecb970 -> :sswitch_5
        -0x49d08e2b -> :sswitch_4
        -0x33813a72 -> :sswitch_3
        -0xdb21ee7 -> :sswitch_2
        0x3eaa3ea6 -> :sswitch_1
        0x3eac4465 -> :sswitch_0
    .end sparse-switch

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 334
.end method
