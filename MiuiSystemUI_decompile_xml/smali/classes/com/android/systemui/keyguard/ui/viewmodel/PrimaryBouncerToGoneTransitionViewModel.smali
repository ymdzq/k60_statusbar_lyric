.class public final Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bouncerAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public leaveShadeOpen:Z

.field public final primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public final scrimAlpha:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public willRunDismissFromKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    move-object/from16 v1, p2

    .line 6
    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 8
    move-object/from16 v1, p3

    .line 10
    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 12
    new-instance v12, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;

    .line 14
    sget-wide v13, Lcom/android/systemui/keyguard/domain/interactor/FromPrimaryBouncerTransitionInteractor;->TO_GONE_DURATION:J

    .line 16
    move-object/from16 v1, p1

    .line 18
    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->primaryBouncerToGoneTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 20
    invoke-direct {v12, v13, v14, v1}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;-><init>(JLcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;)V

    .line 22
    sget v1, Lkotlin/time/Duration;->$r8$clinit:I

    .line 25
    const/16 v1, 0xc8

    .line 27
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 29
    invoke-static {v1, v2}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 31
    move-result-wide v2

    .line 34
    new-instance v4, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$bouncerAlpha$1;

    .line 35
    invoke-direct {v4, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$bouncerAlpha$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;)V

    .line 37
    const-wide/16 v5, 0x0

    .line 40
    new-instance v7, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$bouncerAlpha$2;

    .line 42
    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$bouncerAlpha$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;)V

    .line 44
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/16 v11, 0x74

    .line 50
    move-object v1, v12

    .line 52
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 53
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->bouncerAlpha:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 57
    sget-object v10, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 59
    sget-object v4, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$scrimAlpha$1;->INSTANCE:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$scrimAlpha$1;

    .line 61
    new-instance v7, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$scrimAlpha$2;

    .line 63
    invoke-direct {v7, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$scrimAlpha$2;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;)V

    .line 65
    const/16 v11, 0x34

    .line 68
    move-object v1, v12

    .line 70
    move-wide v2, v13

    .line 71
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;->createFlow-53AowQI$default(Lcom/android/systemui/keyguard/ui/KeyguardTransitionAnimationFlow;JLkotlin/jvm/functions/Function1;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/view/animation/Interpolator;I)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 72
    move-result-object v1

    .line 75
    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1;

    .line 76
    invoke-direct {v2, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;)V

    .line 78
    iput-object v2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->scrimAlpha:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel$special$$inlined$map$1;

    .line 81
    return-void
    .line 83
.end method
