.class public final Lcom/android/systemui/toast/MIUIStrongToastControl$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/MIUIStrongToastControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$6;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onRefreshBatteryInfo(Lcom/miui/charge/MiuiBatteryStatus;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl$6;->this$0:Lcom/android/systemui/toast/MIUIStrongToastControl;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStateInitialized:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 9
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStateInitialized:Z

    .line 15
    :cond_0
    const-string v0, "MIUIStrongToastControl"

    .line 17
    if-nez p1, :cond_1

    .line 19
    const-string p0, "check battery status is null return "

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto/16 :goto_9

    .line 26
    :cond_1
    iget v2, p1, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 28
    iget v3, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 30
    const/4 v4, 0x0

    .line 32
    const/16 v5, 0xa

    .line 33
    if-ne v3, v5, :cond_2

    .line 35
    move v6, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v6, v4

    .line 39
    :goto_0
    const/16 v7, 0xb

    .line 40
    if-ne v3, v7, :cond_3

    .line 42
    move v3, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    move v3, v4

    .line 46
    :goto_1
    const/4 v8, -0x1

    .line 47
    const/4 v9, 0x2

    .line 48
    if-eq v2, v9, :cond_4

    .line 49
    const/4 v10, 0x5

    .line 51
    if-eq v2, v10, :cond_4

    .line 52
    const/4 v10, 0x4

    .line 54
    if-ne v2, v10, :cond_6

    .line 55
    :cond_4
    if-eqz v6, :cond_5

    .line 57
    goto :goto_2

    .line 59
    :cond_5
    if-eqz v3, :cond_6

    .line 60
    move v5, v7

    .line 62
    goto :goto_2

    .line 63
    :cond_6
    move v5, v8

    .line 64
    :goto_2
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mWireState:I

    .line 65
    const-string v3, "charge"

    .line 67
    if-eq v2, v8, :cond_9

    .line 69
    if-eq v5, v2, :cond_9

    .line 71
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 73
    if-eqz v2, :cond_7

    .line 75
    iget-boolean v6, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 77
    if-eqz v6, :cond_7

    .line 79
    iget-object v2, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 83
    move-result v2

    .line 86
    if-eqz v2, :cond_7

    .line 87
    move v2, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_7
    move v2, v4

    .line 91
    :goto_3
    if-eqz v2, :cond_9

    .line 92
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 94
    if-nez v2, :cond_8

    .line 96
    move v6, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_8
    iget-boolean v6, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCheckInOutStrongToasting:Z

    .line 100
    :goto_4
    if-nez v6, :cond_9

    .line 102
    if-eqz v2, :cond_9

    .line 104
    invoke-virtual {v2}, Lcom/android/systemui/toast/MIUIStrongToast;->hideStrongToast()V

    .line 106
    :cond_9
    iget-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mStateInitialized:Z

    .line 109
    const-string v6, "mWireState :"

    .line 111
    if-eqz v2, :cond_10

    .line 113
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 115
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 117
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 119
    if-nez v2, :cond_10

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget v7, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mWireState:I

    .line 128
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v7, "  wireState :"

    .line 133
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v7, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 138
    invoke-static {v2, v7, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 140
    iget v2, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 143
    iget-object v7, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 145
    if-nez v7, :cond_a

    .line 147
    iput-boolean v4, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeShowing:Z

    .line 149
    goto :goto_5

    .line 151
    :cond_a
    iget-boolean v10, v7, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 152
    if-eqz v10, :cond_b

    .line 154
    iget-object v7, v7, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 156
    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 158
    :cond_b
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 161
    const-string v10, "mChargeShowing :"

    .line 163
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    iget-boolean v10, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeShowing:Z

    .line 168
    invoke-static {v7, v10, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 170
    iget v7, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mWireState:I

    .line 173
    if-ne v7, v2, :cond_c

    .line 175
    iget-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeShowing:Z

    .line 177
    if-nez v2, :cond_c

    .line 179
    const-string v1, "The charging method has not changed and the charging animation is not displayed"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto :goto_8

    .line 186
    :cond_c
    iget v2, p1, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 187
    const/16 v7, 0x32

    .line 189
    const-string/jumbo v10, "showChargeAnimation"

    .line 191
    if-lt v2, v7, :cond_e

    .line 194
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeSpeed:I

    .line 196
    iget v7, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 198
    if-eq v2, v7, :cond_e

    .line 200
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mMiuiStrongToastCallBack:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 202
    if-eqz v2, :cond_d

    .line 204
    iget-boolean v7, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mStrongToastShow:Z

    .line 206
    if-eqz v7, :cond_d

    .line 208
    iget-object v2, v2, Lcom/android/systemui/toast/MIUIStrongToast;->mCurrentToastCategory:Ljava/lang/String;

    .line 210
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 212
    move-result v2

    .line 215
    if-eqz v2, :cond_d

    .line 216
    move v2, v1

    .line 218
    goto :goto_6

    .line 219
    :cond_d
    move v2, v4

    .line 220
    :goto_6
    if-eqz v2, :cond_e

    .line 221
    iget-boolean v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mDecimal:Z

    .line 223
    if-eqz v2, :cond_e

    .line 225
    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/toast/MIUIStrongToastControl;->structureChargeStrongToast(Lcom/miui/charge/MiuiBatteryStatus;I)Landroid/os/Bundle;

    .line 227
    move-result-object v2

    .line 230
    const-string v3, "checkBatteryStatus\uff1a\u66f4\u65b0\u5145\u7535\u74e6\u6570"

    .line 231
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v3, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 236
    if-eq v3, v8, :cond_10

    .line 238
    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/systemui/toast/MIUIStrongToastControl;->showCustomStrongToast(Landroid/os/Bundle;)V

    .line 243
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeShowing:Z

    .line 246
    goto :goto_8

    .line 248
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 249
    iget v2, v2, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 251
    if-nez v2, :cond_f

    .line 253
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/toast/MIUIStrongToastControl;->structureChargeStrongToast(Lcom/miui/charge/MiuiBatteryStatus;I)Landroid/os/Bundle;

    .line 255
    move-result-object v2

    .line 258
    goto :goto_7

    .line 259
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/toast/MIUIStrongToastControl;->structureChargeStrongToast(Lcom/miui/charge/MiuiBatteryStatus;I)Landroid/os/Bundle;

    .line 260
    move-result-object v2

    .line 263
    :goto_7
    iget v3, p1, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 264
    if-eq v3, v8, :cond_10

    .line 266
    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0, v2}, Lcom/android/systemui/toast/MIUIStrongToastControl;->showCustomStrongToast(Landroid/os/Bundle;)V

    .line 271
    iput-boolean v1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeShowing:Z

    .line 274
    :cond_10
    :goto_8
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mBatteryStatus:Lcom/miui/charge/MiuiBatteryStatus;

    .line 276
    iput v5, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mWireState:I

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    iget v2, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mWireState:I

    .line 285
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 287
    iget v0, p1, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 290
    iput v0, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeSpeed:I

    .line 292
    invoke-virtual {p1}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 294
    move-result p1

    .line 297
    if-nez p1, :cond_11

    .line 298
    iput v8, p0, Lcom/android/systemui/toast/MIUIStrongToastControl;->mChargeSpeed:I

    .line 300
    :cond_11
    :goto_9
    return-void
    .line 302
.end method
