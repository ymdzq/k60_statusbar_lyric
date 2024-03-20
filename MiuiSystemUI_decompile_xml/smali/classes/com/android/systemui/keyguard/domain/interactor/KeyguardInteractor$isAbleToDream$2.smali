.class final Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.domain.interactor.KeyguardInteractor$isAbleToDream$2"
    f = "KeyguardInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p0

    .line 7
    check-cast p2, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 8
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 10
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;

    .line 12
    invoke-direct {p1, p3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 14
    iput-boolean p0, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;->Z$0:Z

    .line 17
    iput-object p2, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;->L$0:Ljava/lang/Object;

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;->label:I

    .line 2
    if-nez v0, :cond_4

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;->Z$0:Z

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor$isAbleToDream$2;->L$0:Ljava/lang/Object;

    .line 11
    check-cast p0, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;

    .line 13
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_3

    .line 16
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->STARTING_TO_WAKE:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/keyguard/shared/model/WakefulnessModel;->state:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 20
    const/4 v1, 0x1

    .line 22
    if-ne p0, p1, :cond_0

    .line 23
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p1, v0

    .line 27
    :goto_0
    if-nez p1, :cond_2

    .line 28
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/WakefulnessState;->AWAKE:Lcom/android/systemui/keyguard/shared/model/WakefulnessState;

    .line 30
    if-ne p0, p1, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    move p0, v0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    move p0, v1

    .line 37
    :goto_2
    if-eqz p0, :cond_3

    .line 38
    move v0, v1

    .line 40
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
    .line 53
.end method
