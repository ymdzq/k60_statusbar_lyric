.class public final Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final dreamOverlayAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

.field public final transitionEnded:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$special$$inlined$filter$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v12, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 9
    sget-wide v2, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    .line 11
    iget-object v4, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->dreamingToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 13
    invoke-direct {v12, v2, v3, v4}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;-><init>(JLcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;)V

    .line 15
    iput-object v12, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 18
    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$special$$inlined$filter$1;

    .line 20
    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromDreamingTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 22
    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$special$$inlined$filter$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;)V

    .line 24
    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->transitionEnded:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$special$$inlined$filter$1;

    .line 27
    sget v1, Lkotlin/time/Duration;->$r8$clinit:I

    .line 29
    sget-object v13, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 31
    const/16 v14, 0xfa

    .line 33
    invoke-static {v14, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 35
    move-result-wide v2

    .line 38
    sget-object v4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$dreamOverlayAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$dreamOverlayAlpha$1;

    .line 39
    const-wide/16 v5, 0x0

    .line 41
    const/4 v15, 0x0

    .line 43
    const/16 v16, 0x0

    .line 44
    const/16 v17, 0x0

    .line 46
    const/16 v18, 0x0

    .line 48
    const/16 v11, 0x7c

    .line 50
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    move-object v1, v12

    .line 56
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 57
    move-result-object v1

    .line 60
    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->dreamOverlayAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 61
    const/16 v1, 0xe9

    .line 63
    invoke-static {v1, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 65
    move-result-wide v5

    .line 68
    invoke-static {v14, v13}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 69
    move-result-wide v2

    .line 72
    sget-object v4, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenAlpha$1;

    .line 73
    const/16 v11, 0x78

    .line 75
    move-object v1, v12

    .line 77
    move-object v7, v15

    .line 78
    move-object/from16 v8, v16

    .line 79
    move-object/from16 v9, v17

    .line 81
    move-object/from16 v10, v18

    .line 83
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 85
    move-result-object v1

    .line 88
    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->lockscreenAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 89
    return-void
    .line 91
.end method


# virtual methods
.method public final dreamOverlayTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 2
    sget-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    .line 4
    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$dreamOverlayTranslationY$1;

    .line 6
    invoke-direct {v3, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$dreamOverlayTranslationY$1;-><init>(I)V

    .line 8
    const-wide/16 v4, 0x0

    .line 11
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    sget-object v9, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 16
    const/16 v10, 0x3c

    .line 18
    invoke-static/range {v0 .. v10}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final lockscreenTranslationY(I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel;->transitionAnimation:Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 2
    sget-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    .line 4
    sget-object v9, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 6
    new-instance v3, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenTranslationY$1;

    .line 8
    invoke-direct {v3, p1}, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenTranslationY$1;-><init>(I)V

    .line 10
    const-wide/16 v4, 0x0

    .line 13
    const/4 v6, 0x0

    .line 15
    sget-object v7, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenTranslationY$2;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenTranslationY$2;

    .line 16
    sget-object v8, Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenTranslationY$3;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/DreamingToLockscreenTransitionViewModel$lockscreenTranslationY$3;

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
