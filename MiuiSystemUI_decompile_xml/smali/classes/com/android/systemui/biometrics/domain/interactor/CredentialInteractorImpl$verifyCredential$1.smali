.class final Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.domain.interactor.CredentialInteractorImpl$verifyCredential$1"
    f = "CredentialInteractor.kt"
    l = {
        0x5c,
        0x65,
        0x6d,
        0x70,
        0x76,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $credential:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic $request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

.field I$0:I

.field J$0:J

.field J$1:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;Lcom/android/internal/widget/LockscreenCredential;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 8
    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;-><init>(Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;Lcom/android/internal/widget/LockscreenCredential;Lkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 13
    return-object v0
    .line 15
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 6
    const/4 v3, 0x6

    .line 8
    const-string v4, ""

    .line 9
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    packed-switch v2, :pswitch_data_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0

    .line 23
    :pswitch_0
    iget v1, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->I$0:I

    .line 24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    goto/16 :goto_b

    .line 29
    :pswitch_1
    iget-wide v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    .line 31
    iget-wide v9, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    .line 33
    iget-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 35
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    goto/16 :goto_2

    .line 42
    :pswitch_2
    iget-wide v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    .line 44
    iget-wide v9, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    .line 46
    iget-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 48
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 50
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    goto/16 :goto_1

    .line 55
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    goto/16 :goto_c

    .line 60
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 65
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 67
    iget-object v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 69
    iget-object v7, v7, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 71
    iget v13, v7, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;->deviceCredentialOwnerId:I

    .line 73
    iget-object v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 75
    iget-object v7, v7, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 77
    iget-object v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$credential:Lcom/android/internal/widget/LockscreenCredential;

    .line 79
    const/4 v14, 0x1

    .line 81
    invoke-virtual {v7, v8, v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 82
    move-result-object v7

    .line 85
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 86
    move-result v8

    .line 89
    if-eqz v8, :cond_0

    .line 90
    iget-object v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 92
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    invoke-virtual {v3, v13}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 96
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperPasswordHandle()J

    .line 99
    move-result-wide v3

    .line 102
    iget-object v5, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 103
    iget-object v8, v5, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 105
    iget-object v5, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 107
    iget-object v5, v5, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->operationInfo:Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    .line 109
    iget-wide v11, v5, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;->gatekeeperChallenge:J

    .line 111
    move-wide v9, v3

    .line 113
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 114
    move-result-object v5

    .line 117
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 118
    move-result-object v5

    .line 121
    iget-object v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 122
    iget-object v6, v6, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    invoke-virtual {v6, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    .line 126
    new-instance v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;

    .line 129
    invoke-direct {v3, v5}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Success$Verified;-><init>([B)V

    .line 131
    iput v14, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 134
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 139
    if-ne v0, v1, :cond_1c

    .line 140
    return-object v1

    .line 142
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 143
    move-result v8

    .line 146
    if-lez v8, :cond_4

    .line 147
    iget-object v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 149
    iget-object v8, v8, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 151
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 153
    move-result v7

    .line 156
    invoke-virtual {v8, v13, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    .line 157
    move-result-wide v7

    .line 160
    iget-object v9, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 161
    iget-object v9, v9, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 163
    check-cast v9, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 165
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 170
    move-result-wide v9

    .line 173
    sub-long/2addr v7, v9

    .line 174
    const-wide/16 v9, 0x3e8

    .line 175
    :goto_0
    const-wide/16 v11, 0x0

    .line 177
    cmp-long v11, v7, v11

    .line 179
    if-lez v11, :cond_3

    .line 181
    new-instance v11, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;

    .line 183
    iget-object v12, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 185
    iget-object v12, v12, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    .line 187
    const/16 v13, 0x3e8

    .line 189
    int-to-long v13, v13

    .line 191
    div-long v13, v7, v13

    .line 192
    new-instance v15, Ljava/lang/Long;

    .line 194
    invoke-direct {v15, v13, v14}, Ljava/lang/Long;-><init>(J)V

    .line 196
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 199
    move-result-object v13

    .line 202
    const v14, 0x7f130189    # @string/biometric_dialog_credential_too_many_attempts 'Too many incorrect attempts.\nTry again in %d seconds.'

    .line 203
    invoke-virtual {v12, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    move-result-object v12

    .line 209
    invoke-direct {v11, v12}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Throttled;-><init>(Ljava/lang/String;)V

    .line 210
    iput-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 213
    iput-wide v9, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    .line 215
    iput-wide v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    .line 217
    iput v5, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 219
    invoke-interface {v2, v11, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 221
    move-result-object v11

    .line 224
    if-ne v11, v1, :cond_1

    .line 225
    return-object v1

    .line 227
    :cond_1
    :goto_1
    iput-object v2, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 228
    iput-wide v9, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$0:J

    .line 230
    iput-wide v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->J$1:J

    .line 232
    const/4 v11, 0x3

    .line 234
    iput v11, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 235
    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 237
    move-result-object v11

    .line 240
    if-ne v11, v1, :cond_2

    .line 241
    return-object v1

    .line 243
    :cond_2
    :goto_2
    sub-long/2addr v7, v9

    .line 244
    goto :goto_0

    .line 245
    :cond_3
    new-instance v5, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    .line 246
    invoke-direct {v5, v4, v3}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;I)V

    .line 248
    iput-object v6, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->L$0:Ljava/lang/Object;

    .line 251
    const/4 v3, 0x4

    .line 253
    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 254
    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 256
    move-result-object v0

    .line 259
    if-ne v0, v1, :cond_1c

    .line 260
    return-object v1

    .line 262
    :cond_4
    iget-object v7, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 263
    iget-object v7, v7, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 265
    invoke-virtual {v7, v13}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    .line 267
    move-result v7

    .line 270
    add-int/2addr v7, v14

    .line 271
    iget-object v8, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 272
    iget-object v8, v8, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 274
    invoke-virtual {v8, v13}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    .line 276
    move-result v8

    .line 279
    if-lez v8, :cond_1a

    .line 280
    if-gtz v7, :cond_5

    .line 282
    goto/16 :goto_a

    .line 284
    :cond_5
    sub-int v9, v8, v7

    .line 286
    if-gez v9, :cond_6

    .line 288
    const/4 v9, 0x0

    .line 290
    :cond_6
    new-instance v11, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    .line 291
    iget-object v12, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 293
    iget-object v12, v12, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    .line 295
    new-instance v15, Ljava/lang/Integer;

    .line 297
    invoke-direct {v15, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 299
    new-instance v7, Ljava/lang/Integer;

    .line 302
    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 304
    filled-new-array {v15, v7}, [Ljava/lang/Object;

    .line 307
    move-result-object v7

    .line 310
    const v8, 0x7f130188    # @string/biometric_dialog_credential_attempts_before_wipe 'Try again. Attempt %1$d of %2$d.'

    .line 311
    invoke-virtual {v12, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    move-result-object v7

    .line 317
    new-instance v8, Ljava/lang/Integer;

    .line 318
    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 320
    iget-object v12, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 323
    iget-object v15, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->$request:Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential;

    .line 325
    new-instance v6, Ljava/lang/Integer;

    .line 327
    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 329
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 335
    move-result v9

    .line 338
    if-gt v9, v14, :cond_18

    .line 339
    iget-object v9, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest;->userInfo:Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 341
    iget v9, v9, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;->deviceCredentialOwnerId:I

    .line 343
    iget-object v3, v12, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 345
    invoke-virtual {v3, v9}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    .line 347
    move-result v9

    .line 350
    iget-object v10, v12, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    .line 351
    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 353
    move-result-object v9

    .line 356
    if-eqz v9, :cond_9

    .line 357
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 359
    move-result v10

    .line 362
    if-eqz v10, :cond_7

    .line 363
    goto :goto_3

    .line 365
    :cond_7
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 366
    move-result v9

    .line 369
    if-eqz v9, :cond_8

    .line 370
    sget-object v9, Lcom/android/systemui/biometrics/domain/interactor/UserType;->MANAGED_PROFILE:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    .line 372
    goto :goto_4

    .line 374
    :cond_8
    sget-object v9, Lcom/android/systemui/biometrics/domain/interactor/UserType;->SECONDARY:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    .line 375
    goto :goto_4

    .line 377
    :cond_9
    :goto_3
    sget-object v9, Lcom/android/systemui/biometrics/domain/interactor/UserType;->PRIMARY:Lcom/android/systemui/biometrics/domain/interactor/UserType;

    .line 378
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 380
    move-result v6

    .line 383
    iget-object v10, v12, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->applicationContext:Landroid/content/Context;

    .line 384
    if-ne v6, v14, :cond_16

    .line 386
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 388
    move-result v4

    .line 391
    if-eqz v4, :cond_12

    .line 392
    if-eq v4, v14, :cond_e

    .line 394
    if-ne v4, v5, :cond_d

    .line 396
    instance-of v3, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    .line 398
    if-eqz v3, :cond_a

    .line 400
    const v3, 0x7f130198    # @string/biometric_dialog_last_pin_attempt_before_wipe_user 'If you enter an incorrect PIN on the next attempt, this user will be deleted.'

    .line 402
    goto :goto_5

    .line 405
    :cond_a
    instance-of v3, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    .line 406
    if-eqz v3, :cond_b

    .line 408
    const v3, 0x7f130195    # @string/biometric_dialog_last_pattern_attempt_before_wipe_user 'If you enter an incorrect pattern on the next attempt, this user will be deleted.'

    .line 410
    goto :goto_5

    .line 413
    :cond_b
    instance-of v3, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    .line 414
    if-eqz v3, :cond_c

    .line 416
    const v3, 0x7f130192    # @string/biometric_dialog_last_password_attempt_before_wipe_user 'If you enter an incorrect password on the next attempt, this user will be deleted.'

    .line 418
    :goto_5
    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 421
    move-result-object v4

    .line 424
    goto/16 :goto_9

    .line 425
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 427
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 429
    throw v0

    .line 432
    :cond_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 433
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 435
    throw v0

    .line 438
    :cond_e
    instance-of v4, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    .line 439
    if-eqz v4, :cond_f

    .line 441
    const-string v4, "SystemUi.BIOMETRIC_DIALOG_WORK_PIN_LAST_ATTEMPT"

    .line 443
    goto :goto_6

    .line 445
    :cond_f
    instance-of v4, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    .line 446
    if-eqz v4, :cond_10

    .line 448
    const-string v4, "SystemUi.BIOMETRIC_DIALOG_WORK_PATTERN_LAST_ATTEMPT"

    .line 450
    goto :goto_6

    .line 452
    :cond_10
    instance-of v4, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    .line 453
    if-eqz v4, :cond_11

    .line 455
    const-string v4, "SystemUi.BIOMETRIC_DIALOG_WORK_PASSWORD_LAST_ATTEMPT"

    .line 457
    :goto_6
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 459
    move-result-object v3

    .line 462
    new-instance v5, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;

    .line 463
    invoke-direct {v5, v15, v10, v14}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 465
    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 468
    move-result-object v4

    .line 471
    goto :goto_9

    .line 472
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 473
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 475
    throw v0

    .line 478
    :cond_12
    instance-of v3, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    .line 479
    if-eqz v3, :cond_13

    .line 481
    const v3, 0x7f130196    # @string/biometric_dialog_last_pin_attempt_before_wipe_device 'If you enter an incorrect PIN on the next attempt, this device’s data will be deleted.'

    .line 483
    goto :goto_7

    .line 486
    :cond_13
    instance-of v3, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    .line 487
    if-eqz v3, :cond_14

    .line 489
    const v3, 0x7f130193    # @string/biometric_dialog_last_pattern_attempt_before_wipe_device 'If you enter an incorrect pattern on the next attempt, this device’s data will be deleted.'

    .line 491
    goto :goto_7

    .line 494
    :cond_14
    instance-of v3, v15, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    .line 495
    if-eqz v3, :cond_15

    .line 497
    const v3, 0x7f130190    # @string/biometric_dialog_last_password_attempt_before_wipe_device 'If you enter an incorrect password on the next attempt, this device’s data will be deleted.'

    .line 499
    :goto_7
    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 502
    move-result-object v4

    .line 505
    goto :goto_9

    .line 506
    :cond_15
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 507
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 509
    throw v0

    .line 512
    :cond_16
    if-gtz v6, :cond_19

    .line 513
    sget-object v4, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 515
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 517
    move-result v6

    .line 520
    aget v4, v4, v6

    .line 521
    if-ne v4, v5, :cond_17

    .line 523
    const-string v4, "SystemUi.BIOMETRIC_DIALOG_WORK_LOCK_FAILED_ATTEMPTS"

    .line 525
    goto :goto_8

    .line 527
    :cond_17
    const-string v4, "UNDEFINED"

    .line 528
    :goto_8
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 530
    move-result-object v3

    .line 533
    new-instance v5, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;

    .line 534
    const/4 v6, 0x0

    .line 536
    invoke-direct {v5, v9, v10, v6}, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorKt$getNowWipingMessage$1;-><init>(Ljava/lang/Object;Landroid/content/Context;I)V

    .line 537
    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 540
    move-result-object v4

    .line 543
    goto :goto_9

    .line 544
    :cond_18
    const/4 v4, 0x0

    .line 545
    :cond_19
    :goto_9
    invoke-direct {v11, v7, v8, v4}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 546
    iput v13, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->I$0:I

    .line 549
    const/4 v3, 0x6

    .line 551
    iput v3, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 552
    invoke-interface {v2, v11, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 554
    move-result-object v2

    .line 557
    if-ne v2, v1, :cond_1b

    .line 558
    return-object v1

    .line 560
    :cond_1a
    :goto_a
    new-instance v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;

    .line 561
    const/4 v4, 0x7

    .line 563
    const/4 v5, 0x0

    .line 564
    invoke-direct {v3, v5, v4}, Lcom/android/systemui/biometrics/domain/interactor/CredentialStatus$Fail$Error;-><init>(Ljava/lang/String;I)V

    .line 565
    iput v13, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->I$0:I

    .line 568
    const/4 v4, 0x5

    .line 570
    iput v4, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->label:I

    .line 571
    invoke-interface {v2, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 573
    move-result-object v2

    .line 576
    if-ne v2, v1, :cond_1b

    .line 577
    return-object v1

    .line 579
    :cond_1b
    move v1, v13

    .line 580
    :goto_b
    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl$verifyCredential$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 581
    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 583
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 585
    :cond_1c
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 588
    return-object v0

    .line 590
    nop

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 592
.end method
