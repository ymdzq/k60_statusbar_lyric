.class public final synthetic Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;Landroid/telephony/PinResult;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const-string v1, "KeyguardSimPinView"

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_3

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 13
    check-cast v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 17
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 19
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 21
    move-result v5

    .line 24
    iput v5, v4, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 25
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 27
    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPinViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 29
    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 33
    :cond_0
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 36
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 38
    check-cast v4, Lcom/android/keyguard/KeyguardSimPinView;

    .line 40
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 42
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    move v5, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v5, v3

    .line 50
    :goto_0
    invoke-virtual {v4, v2, v5}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 51
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 54
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 58
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 60
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 64
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    .line 66
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 68
    invoke-virtual {v3, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSimUnlocked(I)V

    .line 70
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    .line 73
    move-result v3

    .line 76
    const/4 v4, 0x5

    .line 77
    invoke-virtual {v1, p0, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    .line 78
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 81
    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 84
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 88
    move-result-object p0

    .line 91
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 92
    move-result v1

    .line 95
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 96
    invoke-interface {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 98
    goto :goto_2

    .line 101
    :cond_2
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 102
    iput-boolean v3, v4, Lcom/android/keyguard/KeyguardSimPinViewController;->mShowDefaultMessage:Z

    .line 104
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 106
    move-result v4

    .line 109
    if-ne v4, v2, :cond_3

    .line 110
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 112
    iget-object v5, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 114
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 116
    move-result v6

    .line 119
    invoke-virtual {v4, v6, v3}, Lcom/android/keyguard/KeyguardSimPinViewController;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 123
    invoke-virtual {v5, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 124
    goto :goto_1

    .line 127
    :cond_3
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 128
    iget-object v4, v3, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 130
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 132
    check-cast v3, Lcom/android/keyguard/KeyguardSimPinView;

    .line 134
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 136
    move-result-object v3

    .line 139
    const v5, 0x7f13061a    # @string/kg_password_pin_failed 'SIM PIN operation failed!'

    .line 140
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 146
    invoke-virtual {v4, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 147
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v3, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    .line 152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v3, " attemptsRemaining="

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 166
    move-result p0

    .line 169
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p0

    .line 176
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_2
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 180
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 182
    move-result-object p0

    .line 185
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 186
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 189
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 192
    return-void

    .line 194
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;

    .line 195
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    check-cast v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;

    .line 202
    iget v4, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->$r8$classId:I

    .line 204
    packed-switch v4, :pswitch_data_1

    .line 206
    goto :goto_4

    .line 209
    :pswitch_1
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 210
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 212
    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    .line 214
    new-instance v2, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;

    .line 216
    invoke-direct {v2, v0, p0, v3}, Lcom/android/keyguard/KeyguardSimPinViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;Landroid/telephony/PinResult;I)V

    .line 218
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 221
    goto :goto_5

    .line 224
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 225
    const-string v4, "onSimCheckResponse  empty One result "

    .line 227
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    .line 232
    move-result-object v4

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v3

    .line 242
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 246
    move-result v1

    .line 249
    if-ltz v1, :cond_4

    .line 250
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 252
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 254
    move-result p0

    .line 257
    iput p0, v1, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 258
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPinViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 262
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    .line 264
    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSimPinViewController;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    .line 266
    move-result-object p0

    .line 269
    invoke-virtual {v0, p0, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 270
    :cond_4
    :goto_5
    return-void

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
    .line 280
.end method
