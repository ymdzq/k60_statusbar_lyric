.class final Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.biometrics.domain.interactor.PromptCredentialInteractor$prompt$1"
    f = "PromptCredentialInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 2
    const/4 p1, 0x5

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    .line 2
    check-cast p2, Ljava/lang/Long;

    .line 4
    check-cast p3, Ljava/lang/Integer;

    .line 6
    check-cast p4, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    .line 8
    check-cast p5, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 14
    invoke-direct {v0, p0, p5}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;Lkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$0:Ljava/lang/Object;

    .line 19
    iput-object p2, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$1:Ljava/lang/Object;

    .line 21
    iput-object p3, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$2:Ljava/lang/Object;

    .line 23
    iput-object p4, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$3:Ljava/lang/Object;

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->label:I

    .line 2
    if-nez v0, :cond_4

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/Long;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$2:Ljava/lang/Object;

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 19
    iget-object v2, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->L$3:Ljava/lang/Object;

    .line 21
    check-cast v2, Lcom/android/systemui/biometrics/shared/model/PromptKind;

    .line 23
    if-eqz p1, :cond_3

    .line 25
    if-eqz v1, :cond_3

    .line 27
    if-nez v0, :cond_0

    .line 29
    goto/16 :goto_0

    .line 31
    :cond_0
    sget-object v3, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 33
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    new-instance v2, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;

    .line 41
    iget-object v3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v1

    .line 48
    new-instance v4, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 49
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 51
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    .line 53
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    .line 55
    move-result v3

    .line 58
    invoke-direct {v4, v1, v3}, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;-><init>(II)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 64
    move-result-wide v0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    new-instance p0, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    .line 73
    invoke-direct {v2, p1, v4, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pin;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    .line 76
    goto :goto_1

    .line 79
    :cond_1
    sget-object v3, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE$2:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 85
    if-eqz v3, :cond_2

    .line 86
    new-instance v2, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;

    .line 88
    iget-object v3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v4

    .line 95
    new-instance v5, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 96
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 98
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    .line 100
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    .line 102
    move-result v3

    .line 105
    invoke-direct {v5, v4, v3}, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;-><init>(II)V

    .line 106
    iget-object v3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 111
    move-result-wide v6

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    new-instance v0, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    .line 118
    invoke-direct {v0, v6, v7}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 127
    move-result v1

    .line 130
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 133
    move-result p0

    .line 136
    xor-int/lit8 p0, p0, 0x1

    .line 137
    invoke-direct {v2, p1, v5, v0, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Pattern;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;Z)V

    .line 139
    goto :goto_1

    .line 142
    :cond_2
    sget-object v3, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE$1:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 143
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    move-result v2

    .line 148
    if-eqz v2, :cond_3

    .line 149
    new-instance v2, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;

    .line 151
    iget-object v3, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 155
    move-result v1

    .line 158
    new-instance v4, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;

    .line 159
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;->credentialInteractor:Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;

    .line 161
    iget-object v3, v3, Lcom/android/systemui/biometrics/domain/interactor/CredentialInteractorImpl;->userManager:Landroid/os/UserManager;

    .line 163
    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    .line 165
    move-result v3

    .line 168
    invoke-direct {v4, v1, v3}, Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;-><init>(II)V

    .line 169
    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor$prompt$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/PromptCredentialInteractor;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 174
    move-result-wide v0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    new-instance p0, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;-><init>(J)V

    .line 183
    invoke-direct {v2, p1, v4, p0}, Lcom/android/systemui/biometrics/domain/model/BiometricPromptRequest$Credential$Password;-><init>(Landroid/hardware/biometrics/PromptInfo;Lcom/android/systemui/biometrics/domain/model/BiometricUserInfo;Lcom/android/systemui/biometrics/domain/model/BiometricOperationInfo;)V

    .line 186
    goto :goto_1

    .line 189
    :cond_3
    :goto_0
    const/4 v2, 0x0

    .line 190
    :goto_1
    return-object v2

    .line 191
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 192
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    throw p0
    .line 199
.end method
