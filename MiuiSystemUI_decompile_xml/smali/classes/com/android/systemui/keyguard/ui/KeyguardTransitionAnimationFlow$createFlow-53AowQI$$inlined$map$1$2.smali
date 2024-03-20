.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $chunks$inlined:F

.field public final synthetic $interpolator$inlined:Landroid/view/animation/Interpolator;

.field public final synthetic $isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $onCancel$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onFinish$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStart$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStep$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $start$inlined:F

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    .line 6
    iput p4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$start$inlined:F

    .line 8
    iput p5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$chunks$inlined:F

    .line 10
    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    .line 16
    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_2

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    move-object v10, p1

    .line 52
    check-cast v10, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 53
    iget-object p1, v10, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    move-result p1

    .line 60
    if-eqz p1, :cond_6

    .line 61
    if-eq p1, v3, :cond_5

    .line 63
    const/4 p2, 0x2

    .line 65
    const/4 v2, 0x0

    .line 66
    if-eq p1, p2, :cond_4

    .line 67
    const/4 p2, 0x3

    .line 69
    if-ne p1, p2, :cond_3

    .line 70
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    .line 72
    if-eqz p1, :cond_7

    .line 74
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 79
    move-object v2, p1

    .line 80
    check-cast v2, Ljava/lang/Float;

    .line 81
    goto :goto_1

    .line 83
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 84
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 86
    throw p0

    .line 89
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    .line 90
    if-eqz p1, :cond_7

    .line 92
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 97
    move-object v2, p1

    .line 98
    check-cast v2, Ljava/lang/Float;

    .line 99
    goto :goto_1

    .line 101
    :cond_5
    iget v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$start$inlined:F

    .line 102
    iget v5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$chunks$inlined:F

    .line 104
    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 106
    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    .line 108
    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    .line 110
    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    .line 112
    invoke-static/range {v4 .. v10}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->access$createFlow_53AowQI$stepToValue(FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/shared/model/TransitionStep;)Ljava/lang/Float;

    .line 114
    move-result-object v2

    .line 117
    goto :goto_1

    .line 118
    :cond_6
    iget v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$start$inlined:F

    .line 119
    iget v5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$chunks$inlined:F

    .line 121
    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 123
    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    .line 125
    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    .line 127
    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    .line 129
    invoke-static/range {v4 .. v10}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->access$createFlow_53AowQI$stepToValue(FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;Lcom/android/systemui/keyguard/shared/model/TransitionStep;)Ljava/lang/Float;

    .line 131
    move-result-object v2

    .line 134
    :cond_7
    :goto_1
    iput v3, v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2$1;->label:I

    .line 135
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 137
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    move-result-object p0

    .line 142
    if-ne p0, v1, :cond_8

    .line 143
    return-object v1

    .line 145
    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    return-object p0
.end method
