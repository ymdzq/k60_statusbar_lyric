.class public final Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 5
    sget-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_OCCLUDED_DURATION:J

    .line 7
    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToOccludedTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 9
    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;-><init>(JLcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 14
    sget p1, Lkotlin/time/Duration;->$r8$clinit:I

    .line 16
    const/16 p1, 0xfa

    .line 18
    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 20
    invoke-static {p1, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 22
    move-result-wide v1

    .line 25
    sget-object v3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenAlpha$1;

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    const/16 v10, 0x7c

    .line 34
    invoke-static/range {v0 .. v10}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 36
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 2
    sget-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_OCCLUDED_DURATION:J

    .line 4
    sget-object v9, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 6
    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenTranslationY$1;

    .line 8
    invoke-direct {v3, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenTranslationY$1;-><init>(I)V

    .line 10
    const-wide/16 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 15
    sget-object v7, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenTranslationY$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenTranslationY$2;

    .line 16
    sget-object v8, Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenTranslationY$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenToOccludedTransitionViewModel$lockscreenTranslationY$3;

    .line 18
    const/16 v10, 0xc

    .line 20
    invoke-static/range {v0 .. v10}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method
