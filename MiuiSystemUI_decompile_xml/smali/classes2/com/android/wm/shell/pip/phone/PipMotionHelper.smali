.class public final Lcom/android/wm/shell/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;
.implements Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;


# static fields
.field public static final ENABLE_FLING_TO_DISMISS_PIP:Z


# instance fields
.field public final mAnimateToDismissSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final mCatchUpSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final mConflictResolutionSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public final mContext:Landroid/content/Context;

.field public mDismissalPending:Z

.field public mFlingConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field public mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field public final mFloatingAllowedArea:Landroid/graphics/Rect;

.field public final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field public mMagnetizedPip:Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTransitionCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;

.field public mPostPipTransitionCallback:Ljava/lang/Runnable;

.field public final mResizePipUpdateListener:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

.field public final mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

.field public final mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public mSpringingToTouch:Z

.field public mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field public mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

.field public final mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;


# direct methods
.method public static $r8$lambda$VxtrbYZwxPqmSIi-Ho3ifEKvrlc(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMagnetizedPip:Lcom/android/wm/shell/pip/phone/PipMotionHelper$2;

    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->getObjectStuckToTarget()Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    iget-object v0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 25
    iget-object v0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 28
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 32
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 35
    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 39
    move-result-object v0

    .line 42
    const/4 v3, 0x0

    .line 43
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 44
    invoke-virtual {v4, v0, v1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 46
    :cond_0
    iget-object v0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 49
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 53
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 58
    return-void
    .line 60
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.wm.debug.fling_to_dismiss_pip"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->ENABLE_FLING_TO_DISMISS_PIP:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/common/FloatingContentCoordinator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 12
    const/high16 v1, 0x442f0000    # 700.0f

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 18
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 21
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 23
    const v1, 0x44bb8000    # 1500.0f

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mAnimateToDismissSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 31
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 33
    const v1, 0x459c4000    # 5000.0f

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 38
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mCatchUpSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 41
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 43
    const/high16 v1, 0x43480000    # 200.0f

    .line 45
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 47
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 50
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    .line 52
    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    .line 55
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    .line 58
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mDismissalPending:Z

    .line 62
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;

    .line 64
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    .line 66
    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTransitionCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;

    .line 69
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 73
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 75
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 77
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 79
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 81
    iget-object p1, p6, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    .line 83
    check-cast p1, Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    .line 90
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V

    .line 92
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    .line 95
    return-void
    .line 97
.end method


# virtual methods
.method public final animateToOffset(ILandroid/graphics/Rect;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    .line 2
    const/16 v5, 0x12c

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 7
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 9
    iget v2, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 11
    const/4 v3, 0x3

    .line 13
    const/4 v7, 0x0

    .line 14
    if-lt v2, v3, :cond_1

    .line 15
    const/4 v3, 0x5

    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v2, v7

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 23
    :goto_1
    if-nez v2, :cond_6

    .line 24
    iget-boolean v1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 26
    if-eqz v1, :cond_2

    .line 28
    goto :goto_3

    .line 30
    :cond_2
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 31
    const-string v2, "PipTaskOrganizer"

    .line 33
    if-eqz v1, :cond_3

    .line 35
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 37
    if-eqz p0, :cond_6

    .line 39
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 41
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    const p2, -0x752a4627

    .line 47
    const-string v0, "%s: skip scheduleOffsetPip, entering pip deferred"

    .line 50
    invoke-static {p0, p2, v7, v0, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    goto :goto_3

    .line 55
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 56
    if-nez v1, :cond_4

    .line 58
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 60
    if-eqz v0, :cond_5

    .line 62
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 64
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 69
    const v2, 0x285c1a49

    .line 70
    const-string v3, "%s: mTaskInfo is not set"

    .line 73
    invoke-static {v0, v2, v7, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    goto :goto_2

    .line 78
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 79
    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 81
    invoke-virtual {v2, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 84
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x1

    .line 88
    const/4 v6, 0x0

    .line 89
    move-object v1, p2

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 91
    :cond_5
    :goto_2
    new-instance v0, Landroid/graphics/Rect;

    .line 94
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 96
    invoke-virtual {v0, v7, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    .line 102
    if-eqz p0, :cond_6

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 106
    :cond_6
    :goto_3
    return-void
    .line 109
.end method

.method public final animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 5
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 7
    if-gez v0, :cond_0

    .line 9
    new-instance p2, Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v0

    .line 16
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 17
    iget v0, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 20
    invoke-virtual {v1, p2, p4, v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 22
    move-result p2

    .line 25
    :cond_0
    move v5, p2

    .line 26
    iget v6, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 27
    iget v7, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 29
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 31
    move-result-object v8

    .line 34
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 35
    move-result-object p2

    .line 38
    iget-object v9, p2, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    move-object v3, p1

    .line 44
    move-object v4, p3

    .line 45
    invoke-static/range {v3 .. v9}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 46
    if-eqz p5, :cond_1

    .line 49
    const/4 p2, 0x0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    .line 52
    goto :goto_0

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 56
    const/16 p3, 0xfa

    .line 58
    const/16 p4, 0x8

    .line 60
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 62
    iget-object p2, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 65
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 72
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 74
    :goto_0
    return-void
    .line 77
.end method

.method public final cancelPhysicsAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 7
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 9
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 13
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 17
    return-void
    .line 19
.end method

.method public final dismissPip()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    .line 2
    const/4 v0, 0x2

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    .line 13
    return-void
    .line 16
.end method

.method public final expandLeavePip(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->hideMenu(I)V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/16 v1, 0x12c

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 16
    invoke-virtual {p0, v1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->exitPip(IZ)V

    .line 18
    return-void
    .line 21
.end method

.method public final getAllowedFloatingBoundsRegion()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingAllowedArea:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getFloatingBoundsOnScreen()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 4
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    iget-object p0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    return-object p0
    .line 23
.end method

.method public final movePip(Landroid/graphics/Rect;Z)V
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 17
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 19
    if-nez p2, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p2

    .line 30
    if-nez p2, :cond_4

    .line 31
    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 33
    if-eqz p2, :cond_3

    .line 35
    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 37
    if-nez p2, :cond_1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 42
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 44
    iget-object p2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 47
    check-cast p2, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 49
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 51
    move-result-object p2

    .line 54
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 55
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 57
    invoke-virtual {v3, p1, v1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 59
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 62
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 64
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 66
    move-result v4

    .line 69
    invoke-virtual {v3, p2, v1, v4}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 70
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldSyncPipTransactionWithMenu()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 79
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 81
    invoke-interface {v1, p1, v0, p2}, Lcom/android/wm/shell/pip/PipMenuController;->resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 87
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mUpdateBoundsCallback:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    .line 90
    if-eqz p0, :cond_4

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 94
    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 98
    if-eqz p0, :cond_4

    .line 100
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 102
    const-string p2, "PipTaskOrganizer"

    .line 104
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 106
    move-result-object p2

    .line 109
    const-string v0, "%s: Abort animation, invalid leash"

    .line 110
    const v1, 0x4f6bbbbc    # 3.95494912E9f

    .line 112
    const/4 v3, 0x0

    .line 115
    invoke-static {p0, v1, v3, v0, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_4
    :goto_2
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 119
    goto :goto_3

    .line 122
    :cond_5
    iget-object p2, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 123
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 125
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 130
    move-result-object p2

    .line 133
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;

    .line 134
    const/4 v3, 0x1

    .line 136
    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    .line 137
    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V

    .line 140
    goto :goto_3

    .line 143
    :cond_6
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 144
    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 146
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 148
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 152
    move-result v2

    .line 155
    int-to-float v2, v2

    .line 156
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mCatchUpSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 157
    invoke-virtual {p2, v0, v2, v1, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 159
    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 162
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 164
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 168
    move-result v2

    .line 171
    int-to-float v2, v2

    .line 172
    invoke-virtual {p2, v0, v2, v1, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 173
    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 176
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 178
    int-to-float v2, v2

    .line 180
    invoke-virtual {p2, v0, v2, v1, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 181
    sget-object v0, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 184
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 186
    int-to-float v2, v2

    .line 188
    invoke-virtual {p2, v0, v2, v1, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 189
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 192
    int-to-float p2, p2

    .line 194
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 195
    int-to-float p1, p1

    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;)V

    .line 199
    :goto_3
    return-void
    .line 202
.end method

.method public final moveToBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v1

    .line 17
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 23
    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 25
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 27
    int-to-float v2, v2

    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mConflictResolutionSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 33
    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 36
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 38
    int-to-float v2, v2

    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 41
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 44
    int-to-float v0, v0

    .line 46
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 47
    int-to-float p1, p1

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;)V

    .line 51
    return-void
    .line 54
.end method

.method public final movetoTarget(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 5
    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_WIDTH:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 9
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 13
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    const/4 v7, 0x0

    .line 18
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 19
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 21
    sget-object v1, Lcom/android/wm/shell/animation/FloatProperties;->RECT_HEIGHT:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 30
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 35
    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_X:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 38
    if-eqz p4, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mStashConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigX:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 45
    :goto_0
    move-object v4, v1

    .line 47
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 48
    const/4 v6, 0x1

    .line 50
    move-object v1, v0

    .line 51
    move v3, p1

    .line 52
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring(Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 53
    sget-object v2, Lcom/android/wm/shell/animation/FloatProperties;->RECT_Y:Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;

    .line 56
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 58
    iget-object v5, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 60
    const/4 v6, 0x0

    .line 62
    move v3, p2

    .line 63
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring(Lcom/android/wm/shell/animation/FloatProperties$Companion$RECT_X$1;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 67
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 69
    move-result-object v1

    .line 72
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 73
    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 75
    if-eqz p4, :cond_1

    .line 77
    iget v3, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 79
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 81
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 85
    move-result v4

    .line 88
    sub-int/2addr v3, v4

    .line 89
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 90
    add-int/2addr v3, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 94
    :goto_1
    int-to-float v3, v3

    .line 96
    if-eqz p4, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 99
    move-result-object p4

    .line 102
    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 103
    iget v2, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 105
    sub-int/2addr p4, v2

    .line 107
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 108
    sub-int/2addr p4, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    iget p4, v2, Landroid/graphics/Rect;->right:I

    .line 112
    :goto_2
    int-to-float p4, p4

    .line 114
    cmpg-float p1, p1, v7

    .line 115
    if-gez p1, :cond_3

    .line 117
    goto :goto_3

    .line 119
    :cond_3
    move v3, p4

    .line 120
    :goto_3
    iget-object p1, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 121
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 123
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 125
    int-to-float p1, p1

    .line 127
    iget-object p4, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFlingConfigY:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 128
    iget v0, p4, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->friction:F

    .line 130
    const v1, 0x40866666    # 4.2f

    .line 132
    mul-float/2addr v0, v1

    .line 135
    div-float/2addr p2, v0

    .line 136
    iget v0, p4, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->max:F

    .line 137
    iget p4, p4, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->min:F

    .line 139
    add-float/2addr p1, p2

    .line 141
    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    .line 142
    move-result p1

    .line 145
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    .line 146
    move-result p1

    .line 149
    invoke-virtual {p0, v3, p1, p3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->startBoundsAnimator(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;)V

    .line 150
    return-void
    .line 153
.end method

.method public final startBoundsAnimator(FFLcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda1;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mSpringingToTouch:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 9
    float-to-int p1, p1

    .line 11
    float-to-int p2, p2

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 17
    move-result v1

    .line 20
    add-int/2addr v1, p1

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 26
    move-result v2

    .line 29
    add-int/2addr v2, p2

    .line 30
    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 31
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 34
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 36
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 40
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 43
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 45
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 48
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isRunning()Z

    .line 50
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mResizePipUpdateListener:Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    .line 56
    if-eqz p3, :cond_1

    .line 58
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 60
    iget-object v0, p2, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;

    .line 67
    const/4 v0, 0x0

    .line 69
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    .line 70
    filled-new-array {p1, p3}, [Ljava/lang/Runnable;

    .line 73
    move-result-object p1

    .line 76
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 77
    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 81
    iget-object p3, p2, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;

    .line 88
    const/4 p3, 0x1

    .line 90
    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;I)V

    .line 91
    filled-new-array {p1}, [Ljava/lang/Runnable;

    .line 94
    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 98
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 101
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 103
    return-void
    .line 106
.end method

.method public final synchronizePinnedStackBounds()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->cancelPhysicsAnimation()V

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 5
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 7
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 14
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 22
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 24
    :cond_0
    return-void
    .line 27
.end method
