.class public final synthetic Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const-string v1, "KeyguardSimPukView"

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto/16 :goto_4

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 13
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 17
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 19
    iget-object v4, v4, Lcom/android/keyguard/KeyguardSimPukViewController;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 21
    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    .line 25
    :cond_0
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 28
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    .line 32
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 34
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    move v5, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v5, v3

    .line 42
    :goto_0
    invoke-virtual {v4, v2, v5}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 43
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 46
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    if-nez v4, :cond_2

    .line 51
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 55
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 57
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 59
    invoke-virtual {v3, p0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSimUnlocked(I)V

    .line 61
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    .line 64
    move-result v3

    .line 67
    const/4 v4, 0x5

    .line 68
    invoke-virtual {v1, p0, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    .line 69
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 72
    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 75
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 77
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 83
    move-result v1

    .line 86
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 87
    invoke-interface {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 89
    goto/16 :goto_3

    .line 92
    :cond_2
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 94
    iput-boolean v3, v4, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    .line 96
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 98
    move-result v4

    .line 101
    if-ne v4, v2, :cond_6

    .line 102
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 104
    move-result v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 110
    iget v4, v4, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 112
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 114
    move-result v4

    .line 117
    if-ne v4, v2, :cond_3

    .line 118
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 120
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 122
    move-result-object v4

    .line 125
    const-string/jumbo v6, "telephony_subscription_service"

    .line 126
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    move-result-object v4

    .line 132
    check-cast v4, Landroid/telephony/SubscriptionManager;

    .line 133
    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    .line 137
    move-result-object v4

    .line 140
    if-eqz v4, :cond_3

    .line 141
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 143
    move-result v4

    .line 146
    if-eqz v4, :cond_3

    .line 147
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 149
    invoke-virtual {v4}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 151
    move-result-object v4

    .line 154
    const-string v6, "PukNoAttemptsRemaining"

    .line 155
    invoke-static {v4, v6}, Lcom/android/systemui/util/PhoneUtils;->disableProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    :cond_3
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 160
    iget-object v6, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 162
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 164
    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    .line 166
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 168
    move-result v7

    .line 171
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 172
    iget-object v8, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 174
    check-cast v8, Lcom/android/keyguard/KeyguardSimPukView;

    .line 176
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 178
    move-result-object v8

    .line 181
    iget-object v9, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 182
    iget v9, v9, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 184
    invoke-static {v9, v8}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 186
    move-result v8

    .line 189
    invoke-virtual {v4, v7, v3, v8}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    .line 190
    move-result-object v4

    .line 193
    invoke-virtual {v6, v4, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 194
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 197
    move-result v4

    .line 200
    const/4 v6, 0x2

    .line 201
    if-gt v4, v6, :cond_5

    .line 202
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 204
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 206
    move-result v4

    .line 209
    iget-object v6, v2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 210
    check-cast v6, Lcom/android/keyguard/KeyguardSimPukView;

    .line 212
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 214
    move-result-object v7

    .line 217
    iget v8, v2, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 218
    invoke-static {v8, v7}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 220
    move-result v7

    .line 223
    invoke-virtual {v6, v4, v3, v7}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 227
    iget-object v7, v2, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 228
    if-nez v7, :cond_4

    .line 230
    new-instance v7, Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 234
    move-result-object v6

    .line 237
    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 244
    const v3, 0x7f1308a7    # @string/ok '@android:string/ok'

    .line 247
    invoke-virtual {v7, v3, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 253
    move-result-object v3

    .line 256
    iput-object v3, v2, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 257
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 259
    move-result-object v3

    .line 262
    const/16 v4, 0x7d9

    .line 263
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 265
    goto :goto_1

    .line 268
    :cond_4
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1
    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 272
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 274
    goto :goto_2

    .line 277
    :cond_5
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 278
    iget-object v6, v4, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 280
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 282
    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    .line 284
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 286
    move-result v7

    .line 289
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 290
    iget-object v8, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 292
    check-cast v8, Lcom/android/keyguard/KeyguardSimPukView;

    .line 294
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 296
    move-result-object v8

    .line 299
    iget-object v9, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 300
    iget v9, v9, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 302
    invoke-static {v9, v8}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 304
    move-result v8

    .line 307
    invoke-virtual {v4, v7, v3, v8}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    .line 308
    move-result-object v3

    .line 311
    invoke-virtual {v6, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 312
    goto :goto_2

    .line 315
    :cond_6
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 316
    iget-object v4, v3, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 318
    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 320
    check-cast v3, Lcom/android/keyguard/KeyguardSimPukView;

    .line 322
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 324
    move-result-object v3

    .line 327
    const v6, 0x7f13061b    # @string/kg_password_puk_failed 'SIM PUK operation failed!'

    .line 328
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 331
    move-result-object v3

    .line 334
    invoke-virtual {v4, v3, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 335
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v3, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    .line 340
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 346
    move-result p0

    .line 349
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object p0

    .line 356
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_3
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 360
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;

    .line 362
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->reset()V

    .line 364
    iget-object p0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 367
    iput-object v5, p0, Lcom/android/keyguard/KeyguardSimPukViewController;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 369
    return-void

    .line 371
    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    .line 372
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    check-cast v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;

    .line 379
    iget v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->$r8$classId:I

    .line 381
    packed-switch v4, :pswitch_data_1

    .line 383
    goto :goto_5

    .line 386
    :pswitch_1
    if-nez p0, :cond_7

    .line 387
    const-string p0, "onSimCheckResponse, pin result is NULL"

    .line 389
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    goto :goto_6

    .line 394
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 395
    const-string v4, "onSimCheckResponse  empty One result "

    .line 397
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    .line 402
    move-result-object v4

    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v3

    .line 412
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 416
    move-result v1

    .line 419
    if-ltz v1, :cond_8

    .line 420
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 422
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 424
    move-result v3

    .line 427
    iput v3, v1, Lcom/android/keyguard/KeyguardSimPukViewController;->mRemainingAttempts:I

    .line 428
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 430
    iget-object v3, v1, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 432
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 434
    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 436
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    .line 438
    move-result p0

    .line 441
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 442
    iget-object v4, v4, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 444
    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    .line 446
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 448
    move-result-object v4

    .line 451
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 452
    iget v0, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    .line 454
    invoke-static {v0, v4}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(ILandroid/content/Context;)Z

    .line 456
    move-result v0

    .line 459
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZZ)Ljava/lang/String;

    .line 460
    move-result-object p0

    .line 463
    invoke-virtual {v3, p0, v2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 464
    goto :goto_6

    .line 467
    :goto_5
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    .line 468
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 470
    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    .line 472
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;

    .line 474
    invoke-direct {v2, v0, p0, v3}, Lcom/android/keyguard/KeyguardSimPukViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;I)V

    .line 476
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_8
    :goto_6
    return-void

    .line 482
    nop

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 484
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
    .line 490
.end method
