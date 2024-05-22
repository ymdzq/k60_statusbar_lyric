.class final Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.data.repository.StrongAuthTracker$isNonStrongBiometricAllowed$2$3"
    f = "BiometricSettingsRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 7
    new-instance p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;

    .line 9
    invoke-direct {p0, p2}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-object p1
    .line 19
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/keyguard/data/repository/StrongAuthTracker$isNonStrongBiometricAllowed$2$3;->label:I

    .line 2
    if-nez p0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    const-string p0, "BiometricsRepositoryImpl"

    .line 9
    const-string p1, "isNonStrongBiometricAllowed changed for current user"

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
    .line 26
.end method
