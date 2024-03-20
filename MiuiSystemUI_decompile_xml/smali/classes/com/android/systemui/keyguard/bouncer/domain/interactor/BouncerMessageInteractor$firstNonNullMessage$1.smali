.class final Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.bouncer.domain.interactor.BouncerMessageInteractor$firstNonNullMessage$1"
    f = "BouncerMessageInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 2
    check-cast p2, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;

    .line 8
    invoke-direct {p0, p3}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;->L$0:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;->L$1:Ljava/lang/Object;

    .line 15
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/domain/interactor/BouncerMessageInteractor$firstNonNullMessage$1;->L$1:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 15
    if-nez p1, :cond_0

    .line 17
    move-object p1, p0

    .line 19
    :cond_0
    return-object p1

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
    .line 28
.end method
