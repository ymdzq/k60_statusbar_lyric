.class public final Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $chunks$inlined:F

.field public final synthetic $interpolator$inlined:Landroid/view/animation/Interpolator;

.field public final synthetic $isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $onCancel$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onFinish$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStart$inlined:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStep$inlined:Lkotlin/jvm/functions/Function1;

.field public final synthetic $start$inlined:F

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    .line 6
    iput p4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$start$inlined:F

    .line 8
    iput p5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$chunks$inlined:F

    .line 10
    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    .line 14
    iput-object p8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    .line 16
    iput-object p9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
    .line 23
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    new-instance v10, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;

    .line 2
    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onCancel$inlined:Lkotlin/jvm/functions/Function0;

    .line 4
    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onFinish$inlined:Lkotlin/jvm/functions/Function0;

    .line 6
    iget v4, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$start$inlined:F

    .line 8
    iget v5, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$chunks$inlined:F

    .line 10
    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$isComplete$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    iget-object v7, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onStart$inlined:Lkotlin/jvm/functions/Function0;

    .line 14
    iget-object v8, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$onStep$inlined:Lkotlin/jvm/functions/Function1;

    .line 16
    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$interpolator$inlined:Landroid/view/animation/Interpolator;

    .line 18
    move-object v0, v10

    .line 20
    move-object v1, p1

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;FFLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/view/animation/Interpolator;)V

    .line 22
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow$createFlow-53AowQI$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 25
    invoke-interface {p0, v10, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 31
    if-ne p0, p1, :cond_0

    .line 33
    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    return-object p0
    .line 38
.end method
