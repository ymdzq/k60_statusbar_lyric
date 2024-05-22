.class public Lcom/android/wm/shell/pip/PipTransition;
.super Lcom/android/wm/shell/pip/PipTransitionController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

.field public mEndFixedRotation:I

.field public mEnterAnimationType:I

.field public final mEnterExitAnimationDuration:I

.field public final mExitDestinationBounds:Landroid/graphics/Rect;

.field public mExitTransition:Landroid/os/IBinder;

.field public mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mHasFadeOut:Z

.field public mInFixedRotation:Z

.field public mMoveToBackTransition:Landroid/os/IBinder;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field public mRequestedEnterTask:Landroid/window/WindowContainerToken;

.field public mRequestedEnterTransition:Landroid/os/IBinder;

.field public final mSoScSplitScreenController:Ljava/util/Optional;

.field public final mSplitScreenOptional:Ljava/util/Optional;

.field public final mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field public final mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p2

    .line 4
    move-object v2, p3

    .line 5
    move-object v3, p4

    .line 6
    move-object v4, p5

    .line 7
    move-object/from16 v5, p8

    .line 8
    move-object/from16 v6, p9

    .line 10
    move-object/from16 v7, p10

    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTransitionController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;)V

    .line 14
    const/4 v0, 0x0

    .line 17
    iput v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Lcom/android/wm/shell/pip/PipTransition$1;

    .line 27
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipTransition$1;-><init>()V

    .line 29
    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;

    .line 32
    move-object v0, p1

    .line 34
    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    .line 35
    move-object/from16 v1, p7

    .line 37
    iput-object v1, v8, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 39
    move-object v1, p6

    .line 41
    iput-object v1, v8, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v0

    .line 47
    const v1, 0x7f0b0046    # @integer/config_pipResizeAnimationDuration '425'

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    move-result v0

    .line 54
    iput v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    .line 55
    move-object/from16 v0, p11

    .line 57
    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 59
    move-object/from16 v0, p12

    .line 61
    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    .line 63
    move-object/from16 v0, p13

    .line 65
    iput-object v0, v8, Lcom/android/wm/shell/pip/PipTransition;->mSoScSplitScreenController:Ljava/util/Optional;

    .line 67
    return-void
    .line 69
.end method


# virtual methods
.method public final augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v3

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 15
    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    .line 17
    if-ne v0, v2, :cond_1

    .line 19
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    .line 21
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    move-result-object p1

    .line 26
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    .line 29
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    move-result-object p1

    .line 34
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 35
    invoke-virtual {p3, p1, v3}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    move-result-object p1

    .line 49
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 50
    invoke-virtual {p3, p1, p0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 52
    :cond_1
    return-void

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    const-string p1, "Called PiP augmentRequest when request has no PiP"

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0
    .line 63
.end method

.method public final end()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final fadeEnteredPipIfNeed(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 2
    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 4
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    return-void

    .line 15
    :cond_1
    if-eqz p1, :cond_3

    .line 16
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 18
    if-eqz v0, :cond_3

    .line 20
    new-instance p1, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;

    .line 22
    invoke-direct {p1, p0}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTransition;)V

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/transition/Transitions;->isIdle()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda2;->run()V

    .line 35
    goto :goto_1

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mRunWhenIdleQueue:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_1

    .line 44
    :cond_3
    if-nez p1, :cond_4

    .line 45
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 47
    if-nez p1, :cond_4

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/PipTransition;->fadeExistingPip(Z)V

    .line 51
    :cond_4
    :goto_1
    return-void
    .line 54
.end method

.method public final fadeExistingPip(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 2
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    if-nez v2, :cond_0

    .line 16
    goto :goto_2

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    if-eqz p1, :cond_1

    .line 22
    move v5, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v5, v1

    .line 26
    :goto_0
    if-eqz p1, :cond_2

    .line 27
    move v6, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v6, v0

    .line 31
    :goto_1
    new-instance v0, Lcom/android/wm/shell/pip/PipTransition$2;

    .line 32
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/pip/PipTransition$2;-><init>(Lcom/android/wm/shell/pip/PipTransition;Z)V

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 37
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 39
    invoke-virtual {v4}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 41
    move-result-object v4

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 45
    move-result-object v1

    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 50
    move-result-object v1

    .line 53
    iput-object v0, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 54
    iget v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    .line 56
    int-to-long v3, v0

    .line 58
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    xor-int/2addr p1, v2

    .line 66
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 67
    return-void

    .line 69
    :cond_3
    :goto_2
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 70
    if-eqz p0, :cond_4

    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 78
    const-string v0, "PipTransition"

    .line 80
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 85
    const v0, 0x66329ace

    .line 86
    const/4 v1, 0x0

    .line 89
    const-string v2, "%s: Invalid leash on fadeExistingPip: %s"

    .line 90
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_4
    return-void
    .line 95
.end method

.method public final findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 15
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 16
    if-ltz v0, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 28
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 30
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 32
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    return-object v2

    .line 42
    :cond_2
    return-object v1
    .line 43
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    const/4 v2, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 16
    if-eqz v0, :cond_1

    .line 18
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 20
    const-string v1, "PipTransition"

    .line 22
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    const v3, -0x5cfdbd56

    .line 28
    const-string v4, "%s: handle PiP enter request"

    .line 31
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 36
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/pip/PipTransition;->augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V

    .line 41
    return-object v0

    .line 44
    :cond_2
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 45
    move-result v0

    .line 48
    const/4 v1, 0x4

    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 58
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 62
    move-result p2

    .line 65
    const/4 v0, 0x2

    .line 66
    if-ne p2, v0, :cond_3

    .line 67
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 71
    const/4 p1, 0x5

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 74
    new-instance p0, Landroid/window/WindowContainerTransaction;

    .line 77
    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 79
    return-object p0

    .line 82
    :cond_3
    const/4 p0, 0x0

    .line 83
    return-object p0
    .line 84
.end method

.method public final isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 19
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 23
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 28
    if-nez p0, :cond_3

    .line 29
    const/16 p0, 0xa

    .line 31
    const/4 p1, 0x1

    .line 33
    if-eq p2, p0, :cond_2

    .line 34
    if-ne p2, p1, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    const/4 p0, 0x6

    .line 39
    if-ne p2, p0, :cond_1

    .line 40
    return p1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    const-string p1, "Found new PIP in transition with mis-matched type="

    .line 45
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    new-instance p1, Ljava/lang/Throwable;

    .line 61
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 63
    const-string p2, "PipTransition"

    .line 66
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    return p1

    .line 72
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 73
    return p0
    .line 74
.end method

.method public final onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 9

    .line 1
    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 8
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    .line 14
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v1, v4

    .line 27
    :goto_0
    if-eqz v1, :cond_a

    .line 28
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 30
    if-eqz v1, :cond_a

    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 34
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 36
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 40
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    move v5, v3

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    move v5, v4

    .line 48
    :goto_1
    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 49
    move-result v6

    .line 52
    iget-object v7, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 53
    if-eqz v6, :cond_5

    .line 55
    iget-boolean p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 57
    if-nez p3, :cond_4

    .line 59
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 61
    if-eqz p3, :cond_4

    .line 63
    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 65
    :cond_4
    move-object v6, v2

    .line 68
    goto :goto_3

    .line 69
    :cond_5
    new-instance v6, Landroid/window/WindowContainerTransaction;

    .line 70
    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 72
    invoke-static {p3}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 75
    move-result p3

    .line 78
    if-eqz p3, :cond_6

    .line 79
    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 81
    invoke-virtual {v6, p3, v4}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 83
    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 86
    invoke-virtual {v6, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 88
    goto :goto_2

    .line 91
    :cond_6
    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 92
    invoke-virtual {v6, p3, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 94
    :goto_2
    if-eqz v5, :cond_7

    .line 97
    invoke-virtual {v7, p2, v1, p4}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 99
    invoke-virtual {v7, p2, v1, p4}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 102
    invoke-virtual {v7, p4, v1, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 105
    :cond_7
    iget-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 108
    invoke-virtual {v6, p3, p4}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 110
    :goto_3
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 113
    move-result-object p1

    .line 116
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 117
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 119
    move-result p1

    .line 122
    if-eqz v0, :cond_9

    .line 123
    iget-boolean p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 125
    if-eqz p3, :cond_9

    .line 127
    iget p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 129
    if-eq p3, p1, :cond_9

    .line 131
    if-eqz v5, :cond_9

    .line 133
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 135
    iget-object p3, p3, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 137
    iget-object p4, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 139
    invoke-virtual {p4}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 141
    move-result-object p4

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    .line 145
    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 147
    iget v3, p0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 150
    invoke-static {v0, p4, v3, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 152
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    .line 155
    move-result-object p3

    .line 158
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p3

    .line 162
    if-nez p3, :cond_9

    .line 163
    sget-boolean p3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 165
    if-eqz p3, :cond_8

    .line 167
    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 169
    const-string v3, "PipTransition"

    .line 171
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 173
    move-result-object v3

    .line 176
    const v5, 0x77db6386

    .line 177
    const-string v8, "%s: Destination bounds were changed during animation"

    .line 180
    invoke-static {p3, v5, v4, v8, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_8
    iget p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 185
    invoke-static {v0, p4, p3, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 187
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 190
    invoke-virtual {v7, v0, v1, p1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 192
    :cond_9
    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 195
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 197
    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 199
    invoke-interface {p1, v6, v2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 201
    :cond_a
    const/high16 p1, -0x40800000    # -1.0f

    .line 204
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 206
    invoke-interface {p0, v2, v2, p2, p1}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 208
    invoke-interface {p0, p2}, Lcom/android/wm/shell/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 211
    return-void
    .line 214
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 10

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    .line 2
    if-eq p1, p3, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 7
    iget-object p3, p1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 9
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    iput-object v1, p1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 18
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p1, v0

    .line 22
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    .line 23
    if-nez p1, :cond_2

    .line 25
    return-void

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 28
    iget-object v3, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    .line 32
    if-eqz v3, :cond_4

    .line 34
    if-eqz p2, :cond_3

    .line 36
    const/4 p1, 0x3

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    .line 39
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 42
    invoke-virtual {p2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    .line 44
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 47
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 49
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 52
    iget-object v4, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 54
    invoke-virtual {p2, v4, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 56
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 59
    invoke-virtual {p2, v2, v0}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 61
    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 64
    invoke-virtual {p2, v2, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 66
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 69
    invoke-virtual {v2, p1, v0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(IZLandroid/window/WindowContainerTransaction;)V

    .line 71
    goto :goto_1

    .line 74
    :cond_3
    iget-object v4, p1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 77
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v5

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 83
    move-result-object v6

    .line 86
    new-instance v7, Landroid/graphics/Rect;

    .line 87
    invoke-direct {v7, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 89
    const/4 v8, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    move-object v2, p0

    .line 94
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    .line 95
    :cond_4
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 98
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 101
    return-void
    .line 103
.end method

.method public final removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 5
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Landroid/window/TransitionInfo$Change;

    .line 14
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 16
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 20
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object p2

    .line 25
    invoke-virtual {p3, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 29
    invoke-virtual {p0, p5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    .line 31
    const/4 p0, 0x0

    .line 34
    invoke-interface {p4, p0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 35
    return-void
    .line 38
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 26

    .line 1
    move-object/from16 v9, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    move-object/from16 v10, p2

    .line 6
    move-object/from16 v15, p3

    .line 8
    move-object/from16 v14, p4

    .line 10
    move-object/from16 v8, p5

    .line 12
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 18
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 22
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    add-int/2addr v2, v3

    .line 27
    :goto_0
    const/4 v4, 0x0

    .line 28
    if-ltz v2, :cond_1

    .line 29
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 31
    move-result-object v5

    .line 34
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 38
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 39
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    .line 41
    move-result v6

    .line 44
    if-eq v6, v3, :cond_0

    .line 45
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    move-object v5, v4

    .line 51
    :goto_1
    const/4 v13, 0x1

    .line 52
    const/4 v2, 0x0

    .line 53
    if-eqz v5, :cond_2

    .line 54
    move v6, v13

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v6, v2

    .line 58
    :goto_2
    iput-boolean v6, v9, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 59
    if-eqz v6, :cond_3

    .line 61
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    .line 63
    move-result v5

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    move v5, v3

    .line 68
    :goto_3
    iput v5, v9, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 71
    move-result v5

    .line 74
    iget-object v6, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    .line 75
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v6

    .line 80
    iget-object v7, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 81
    const/high16 v11, 0x3f800000    # 1.0f

    .line 83
    if-nez v6, :cond_13

    .line 85
    iget-object v6, v9, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    .line 87
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v6

    .line 92
    if-eqz v6, :cond_4

    .line 93
    goto/16 :goto_9

    .line 95
    :cond_4
    iget-object v5, v9, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    .line 97
    if-ne v0, v5, :cond_5

    .line 99
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTransition:Landroid/os/IBinder;

    .line 101
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mRequestedEnterTask:Landroid/window/WindowContainerToken;

    .line 103
    :cond_5
    const/4 v0, 0x2

    .line 105
    if-eqz v1, :cond_7

    .line 106
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 108
    move-result-object v5

    .line 111
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 112
    move-result v5

    .line 115
    if-eq v5, v0, :cond_7

    .line 116
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 118
    move-result-object v5

    .line 121
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 122
    move-result v6

    .line 125
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 126
    move-result v6

    .line 129
    if-eqz v6, :cond_6

    .line 130
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 132
    move-result-object v6

    .line 135
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 136
    move-result-object v12

    .line 139
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v6

    .line 143
    if-nez v6, :cond_6

    .line 144
    invoke-virtual {v15, v5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 146
    :cond_6
    iput-boolean v2, v9, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 149
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 151
    iget-object v6, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 153
    iget-object v12, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 155
    if-ne v12, v5, :cond_7

    .line 157
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 159
    move-result-object v5

    .line 162
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    .line 163
    :cond_7
    invoke-static {v10, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 166
    move-result v5

    .line 169
    :goto_4
    if-ltz v5, :cond_9

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 172
    move-result-object v6

    .line 175
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v6

    .line 179
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 182
    move-result v12

    .line 185
    invoke-virtual {v9, v6, v12}, Lcom/android/wm/shell/pip/PipTransition;->isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z

    .line 186
    move-result v6

    .line 189
    if-eqz v6, :cond_8

    .line 190
    move v5, v13

    .line 192
    goto :goto_5

    .line 193
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 194
    goto :goto_4

    .line 196
    :cond_9
    move v5, v2

    .line 197
    :goto_5
    if-eqz v5, :cond_10

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 200
    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 204
    move-result v1

    .line 207
    add-int/2addr v1, v3

    .line 208
    :goto_6
    if-ltz v1, :cond_b

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 211
    move-result-object v2

    .line 214
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v2

    .line 218
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 219
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 221
    move-result-object v5

    .line 224
    if-eqz v5, :cond_a

    .line 225
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 227
    move-result-object v5

    .line 230
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 231
    move-result v5

    .line 234
    if-ne v5, v0, :cond_a

    .line 235
    move-object v4, v2

    .line 237
    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 238
    goto :goto_6

    .line 240
    :cond_b
    if-eqz v4, :cond_f

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 243
    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 247
    move-result v0

    .line 250
    add-int/2addr v0, v3

    .line 251
    :goto_7
    if-ltz v0, :cond_e

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 254
    move-result-object v1

    .line 257
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    move-result-object v1

    .line 261
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 262
    if-ne v1, v4, :cond_c

    .line 264
    goto :goto_8

    .line 266
    :cond_c
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 267
    move-result v2

    .line 270
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 271
    move-result v2

    .line 274
    if-eqz v2, :cond_d

    .line 275
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 277
    move-result-object v1

    .line 280
    invoke-virtual {v15, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 281
    move-result-object v2

    .line 284
    invoke-virtual {v2, v1, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 285
    :cond_d
    :goto_8
    add-int/lit8 v0, v0, -0x1

    .line 288
    goto :goto_7

    .line 290
    :cond_e
    invoke-virtual {v9, v4, v15, v14, v8}, Lcom/android/wm/shell/pip/PipTransition;->startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 291
    return v13

    .line 294
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 295
    const-string v1, "Trying to start PiP animation without a pipparticipant"

    .line 297
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    throw v0

    .line 302
    :cond_10
    if-eqz v1, :cond_12

    .line 303
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 305
    if-eqz v0, :cond_12

    .line 307
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 309
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 313
    move-result v0

    .line 316
    if-nez v0, :cond_11

    .line 317
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 319
    move-result-object v0

    .line 322
    invoke-virtual {v7, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 323
    :cond_11
    invoke-virtual {v9, v1, v15, v14}, Lcom/android/wm/shell/pip/PipTransition;->updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 326
    :cond_12
    return v2

    .line 329
    :cond_13
    :goto_9
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    .line 330
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 332
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    .line 335
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mMoveToBackTransition:Landroid/os/IBinder;

    .line 337
    iput-boolean v2, v9, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 339
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 341
    if-nez v0, :cond_2a

    .line 343
    if-eqz v1, :cond_14

    .line 345
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 347
    move-result-object v0

    .line 350
    goto :goto_a

    .line 351
    :cond_14
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 352
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 354
    :goto_a
    move-object v12, v0

    .line 356
    if-eqz v12, :cond_29

    .line 357
    const/4 v0, 0x4

    .line 359
    if-eq v5, v0, :cond_28

    .line 360
    const/4 v0, 0x6

    .line 362
    packed-switch v5, :pswitch_data_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    const-string v2, "mExitTransition with unexpected transit type="

    .line 370
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-static {v5}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 375
    move-result-object v2

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v1

    .line 385
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v0

    .line 389
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 390
    move-result-object v1

    .line 393
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 394
    move-result v1

    .line 397
    add-int/2addr v1, v3

    .line 398
    :goto_b
    if-ltz v1, :cond_17

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 401
    move-result-object v2

    .line 404
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 405
    move-result-object v2

    .line 408
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 409
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 411
    move-result v3

    .line 414
    if-ne v3, v0, :cond_15

    .line 415
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 417
    move-result-object v5

    .line 420
    if-eqz v5, :cond_15

    .line 421
    goto :goto_c

    .line 423
    :cond_15
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 424
    move-result v3

    .line 427
    if-eqz v3, :cond_16

    .line 428
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 430
    move-result-object v3

    .line 433
    if-nez v3, :cond_16

    .line 434
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 436
    move-result-object v3

    .line 439
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 440
    move-result-object v2

    .line 443
    invoke-virtual {v15, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 444
    move-result-object v5

    .line 447
    invoke-virtual {v5, v3, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 448
    move-result-object v5

    .line 451
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 452
    int-to-float v6, v6

    .line 454
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 455
    int-to-float v7, v7

    .line 457
    invoke-virtual {v5, v3, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 458
    move-result-object v5

    .line 461
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 462
    move-result v6

    .line 465
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 466
    move-result v2

    .line 469
    invoke-virtual {v5, v3, v6, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 470
    :cond_16
    :goto_c
    add-int/lit8 v1, v1, -0x1

    .line 473
    goto :goto_b

    .line 475
    :cond_17
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 476
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 480
    move-result v0

    .line 483
    if-eqz v0, :cond_18

    .line 484
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mSoScSplitScreenController:Ljava/util/Optional;

    .line 486
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 488
    move-result-object v0

    .line 491
    check-cast v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 492
    invoke-virtual {v0, v14}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 494
    goto :goto_d

    .line 497
    :cond_18
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mSplitScreenOptional:Ljava/util/Optional;

    .line 498
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 500
    move-result-object v0

    .line 503
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 504
    invoke-virtual {v0, v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 506
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 509
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 512
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    .line 514
    invoke-interface {v8, v4, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 517
    goto/16 :goto_1c

    .line 520
    :pswitch_1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 522
    move-result-object v0

    .line 525
    iget-object v3, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 526
    iget v5, v12, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    .line 528
    invoke-virtual {v3, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 530
    move-result-object v3

    .line 533
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/sosc/SoScUtils;->updateRecentsWhenExitPip(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 534
    iget-object v0, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 537
    const-string v3, "PipTransition"

    .line 539
    if-nez v0, :cond_19

    .line 541
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 543
    if-eqz v0, :cond_1b

    .line 545
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 547
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 549
    move-result-object v5

    .line 552
    const v6, 0x7d5193a2

    .line 553
    const-string v11, "%s: There is no existing PiP Task for TRANSIT_EXIT_PIP"

    .line 556
    invoke-static {v0, v6, v2, v11, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 558
    goto :goto_f

    .line 561
    :cond_19
    if-nez v1, :cond_1b

    .line 562
    invoke-static {v10, v13}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 564
    move-result v0

    .line 567
    :goto_e
    if-ltz v0, :cond_1b

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 570
    move-result-object v5

    .line 573
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 574
    move-result-object v5

    .line 577
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 578
    iget-object v6, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 580
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 582
    move-result-object v11

    .line 585
    invoke-virtual {v6, v11}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 586
    move-result v6

    .line 589
    if-eqz v6, :cond_1a

    .line 590
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 592
    move-result-object v4

    .line 595
    move-object v11, v5

    .line 596
    goto :goto_10

    .line 597
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    .line 598
    goto :goto_e

    .line 600
    :cond_1b
    :goto_f
    move-object v11, v1

    .line 601
    :goto_10
    if-nez v11, :cond_1d

    .line 602
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 604
    if-eqz v0, :cond_1c

    .line 606
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 608
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 610
    move-result-object v1

    .line 613
    const v3, 0x68140a71

    .line 614
    const-string v4, "%s: No window of exiting PIP is found. Can\'t play expand animation"

    .line 617
    invoke-static {v0, v3, v2, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :cond_1c
    move-object/from16 v0, p0

    .line 622
    move-object/from16 v1, p2

    .line 624
    move-object/from16 v2, p3

    .line 626
    move-object/from16 v3, p4

    .line 628
    move-object/from16 v4, p5

    .line 630
    move-object v5, v12

    .line 632
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    .line 633
    move/from16 v23, v13

    .line 636
    goto/16 :goto_1a

    .line 638
    :cond_1d
    invoke-static {v10, v11}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 640
    move-result v0

    .line 643
    invoke-virtual {v10, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 644
    move-result-object v0

    .line 647
    if-eqz v4, :cond_1e

    .line 648
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 650
    move-result-object v1

    .line 653
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    .line 654
    invoke-direct {v3}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    .line 659
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    const-string v6, "_pip-leash"

    .line 667
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    move-result-object v5

    .line 675
    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 676
    move-result-object v3

    .line 679
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 680
    move-result-object v3

    .line 683
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 684
    move-result-object v3

    .line 687
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 688
    move-result-object v5

    .line 691
    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 692
    move-result-object v3

    .line 695
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 696
    move-result-object v3

    .line 699
    invoke-virtual {v15, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 700
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 703
    move-result-object v1

    .line 706
    iget v5, v1, Landroid/graphics/Point;->x:I

    .line 707
    int-to-float v5, v5

    .line 709
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 710
    int-to-float v1, v1

    .line 712
    invoke-virtual {v15, v4, v5, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 713
    move-object v6, v3

    .line 716
    goto :goto_11

    .line 717
    :cond_1e
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 718
    move-result-object v1

    .line 721
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 722
    move-result-object v3

    .line 725
    invoke-virtual {v15, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 726
    move-object v6, v1

    .line 729
    :goto_11
    const v1, 0x7fffffff

    .line 730
    invoke-virtual {v15, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 733
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    .line 736
    move-result-object v5

    .line 739
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 740
    move-result-object v3

    .line 743
    iget v0, v5, Landroid/graphics/Point;->x:I

    .line 744
    neg-int v0, v0

    .line 746
    iget v1, v5, Landroid/graphics/Point;->y:I

    .line 747
    neg-int v1, v1

    .line 749
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 750
    iget v0, v3, Landroid/graphics/Rect;->left:I

    .line 753
    int-to-float v0, v0

    .line 755
    iget v1, v3, Landroid/graphics/Rect;->top:I

    .line 756
    int-to-float v1, v1

    .line 758
    invoke-virtual {v15, v6, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 759
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 762
    move-result-object v16

    .line 765
    if-eqz v4, :cond_1f

    .line 766
    move/from16 v17, v13

    .line 768
    goto :goto_12

    .line 770
    :cond_1f
    move/from16 v17, v2

    .line 771
    :goto_12
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 773
    move-result-object v0

    .line 776
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 777
    move-result-object v1

    .line 780
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 781
    move-result v4

    .line 784
    new-instance v7, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;

    .line 785
    move-object v0, v7

    .line 787
    move-object/from16 v1, p0

    .line 788
    move-object v2, v12

    .line 790
    move-object/from16 v21, v3

    .line 791
    move v3, v4

    .line 793
    move-object/from16 v4, v16

    .line 794
    move-object/from16 v24, v5

    .line 796
    move/from16 v5, v17

    .line 798
    move-object/from16 v22, v6

    .line 800
    move-object/from16 v6, p4

    .line 802
    move-object v13, v7

    .line 804
    move-object/from16 v7, v22

    .line 805
    move-object/from16 v8, p5

    .line 807
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 809
    iput-object v13, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 812
    iput-object v14, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 814
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    .line 816
    const/16 v1, 0x5a

    .line 818
    const/16 v2, -0x5a

    .line 820
    const/4 v3, 0x3

    .line 822
    if-eqz v0, :cond_24

    .line 823
    const/4 v0, 0x1

    .line 825
    invoke-static {v10, v0}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 826
    move-result v4

    .line 829
    :goto_13
    if-ltz v4, :cond_21

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 832
    move-result-object v0

    .line 835
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 836
    move-result-object v0

    .line 839
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 840
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 842
    move-result v5

    .line 845
    const/4 v6, 0x6

    .line 846
    if-ne v5, v6, :cond_20

    .line 847
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 849
    move-result v5

    .line 852
    and-int/lit8 v5, v5, 0x20

    .line 853
    if-eqz v5, :cond_20

    .line 855
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 857
    move-result v5

    .line 860
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 861
    move-result v6

    .line 864
    if-eq v5, v6, :cond_20

    .line 865
    goto :goto_14

    .line 867
    :cond_20
    add-int/lit8 v4, v4, -0x1

    .line 868
    goto :goto_13

    .line 870
    :cond_21
    const/4 v0, 0x0

    .line 871
    :goto_14
    if-eqz v0, :cond_24

    .line 872
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 874
    move-result v4

    .line 877
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 878
    move-result v5

    .line 881
    invoke-static {v4, v5}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 882
    move-result v4

    .line 885
    new-instance v5, Lcom/android/wm/shell/transition/CounterRotatorHelper;

    .line 886
    invoke-direct {v5}, Lcom/android/wm/shell/transition/CounterRotatorHelper;-><init>()V

    .line 888
    invoke-virtual {v5, v10, v0, v15}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->handleClosingChanges(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 891
    new-instance v6, Landroid/graphics/Rect;

    .line 894
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 896
    move-result-object v7

    .line 899
    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 900
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 903
    move-result-object v0

    .line 906
    invoke-static {v6, v0, v4}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 907
    new-instance v0, Landroid/graphics/Rect;

    .line 910
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 912
    move-result-object v7

    .line 915
    invoke-direct {v0, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 916
    move-object/from16 v7, v24

    .line 919
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 921
    neg-int v8, v8

    .line 923
    iget v10, v7, Landroid/graphics/Point;->y:I

    .line 924
    neg-int v10, v10

    .line 926
    invoke-virtual {v6, v8, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 927
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 930
    neg-int v8, v8

    .line 932
    iget v7, v7, Landroid/graphics/Point;->y:I

    .line 933
    neg-int v7, v7

    .line 935
    invoke-virtual {v0, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 936
    const/4 v7, 0x0

    .line 939
    invoke-static {v4, v7}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 940
    move-result v4

    .line 943
    const/4 v8, 0x1

    .line 944
    if-ne v4, v8, :cond_22

    .line 945
    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 947
    iget v8, v6, Landroid/graphics/Rect;->top:I

    .line 949
    goto :goto_15

    .line 951
    :cond_22
    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 952
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 954
    move/from16 v25, v2

    .line 956
    move v2, v1

    .line 958
    move/from16 v1, v25

    .line 959
    :goto_15
    iget-object v10, v9, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 961
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 963
    move-result-object v13

    .line 966
    new-instance v17, Landroid/graphics/Rect;

    .line 967
    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 969
    int-to-float v1, v1

    .line 972
    int-to-float v2, v2

    .line 973
    int-to-float v8, v8

    .line 974
    const/16 v19, 0x1

    .line 975
    if-ne v4, v3, :cond_23

    .line 977
    const/16 v20, 0x1

    .line 979
    goto :goto_16

    .line 981
    :cond_23
    move/from16 v20, v7

    .line 982
    :goto_16
    move-object/from16 v23, v11

    .line 984
    move-object/from16 v11, p3

    .line 986
    move-object/from16 v24, v12

    .line 988
    move-object v12, v13

    .line 990
    move-object v13, v0

    .line 991
    move-object v7, v14

    .line 992
    move-object v14, v6

    .line 993
    move-object/from16 v15, v17

    .line 994
    move/from16 v16, v1

    .line 996
    move/from16 v17, v2

    .line 998
    move/from16 v18, v8

    .line 1000
    invoke-virtual/range {v10 .. v20}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1005
    invoke-virtual {v5, v7}, Lcom/android/wm/shell/transition/CounterRotatorHelper;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 1008
    iget-object v14, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1011
    invoke-virtual/range {v23 .. v23}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1013
    move-result-object v16

    .line 1016
    const/16 v20, 0x0

    .line 1017
    const/16 v21, 0x3

    .line 1019
    const/16 v22, 0x0

    .line 1021
    move-object/from16 v15, v24

    .line 1023
    move-object/from16 v17, v6

    .line 1025
    move-object/from16 v18, v6

    .line 1027
    move-object/from16 v19, v0

    .line 1029
    move/from16 v23, v4

    .line 1031
    invoke-virtual/range {v14 .. v23}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 1033
    move-result-object v0

    .line 1036
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 1037
    move-result-object v0

    .line 1040
    iget-object v1, v9, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    .line 1041
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 1043
    move-result-object v0

    .line 1046
    iget v1, v9, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    .line 1047
    int-to-long v1, v1

    .line 1049
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1050
    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1054
    const/4 v0, 0x1

    .line 1057
    move v13, v0

    .line 1058
    goto/16 :goto_1b

    .line 1059
    :cond_24
    move-object/from16 v23, v11

    .line 1061
    move-object/from16 v7, v24

    .line 1063
    move-object/from16 v24, v12

    .line 1065
    const/4 v0, 0x0

    .line 1067
    new-instance v5, Landroid/graphics/Rect;

    .line 1068
    invoke-virtual/range {v23 .. v23}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1070
    move-result-object v4

    .line 1073
    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1074
    iget v4, v7, Landroid/graphics/Point;->x:I

    .line 1077
    neg-int v4, v4

    .line 1079
    iget v6, v7, Landroid/graphics/Point;->y:I

    .line 1080
    neg-int v6, v6

    .line 1082
    invoke-virtual {v5, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1083
    iget-boolean v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 1086
    if-eqz v4, :cond_27

    .line 1088
    invoke-virtual/range {v23 .. v23}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 1090
    move-result v4

    .line 1093
    iget v6, v9, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 1094
    invoke-static {v4, v6}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 1096
    move-result v4

    .line 1099
    new-instance v14, Landroid/graphics/Rect;

    .line 1100
    invoke-direct {v14, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1102
    invoke-static {v14, v5, v4}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1105
    const/4 v6, 0x1

    .line 1108
    if-ne v4, v6, :cond_25

    .line 1109
    iget v2, v5, Landroid/graphics/Rect;->right:I

    .line 1111
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 1113
    goto :goto_17

    .line 1115
    :cond_25
    iget v1, v5, Landroid/graphics/Rect;->left:I

    .line 1116
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1118
    move/from16 v25, v2

    .line 1120
    move v2, v1

    .line 1122
    move/from16 v1, v25

    .line 1123
    :goto_17
    iget-object v10, v9, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1125
    new-instance v15, Landroid/graphics/Rect;

    .line 1127
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1129
    int-to-float v1, v1

    .line 1132
    int-to-float v2, v2

    .line 1133
    int-to-float v7, v7

    .line 1134
    const/16 v19, 0x1

    .line 1135
    if-ne v4, v3, :cond_26

    .line 1137
    move/from16 v20, v6

    .line 1139
    goto :goto_18

    .line 1141
    :cond_26
    move/from16 v20, v0

    .line 1142
    :goto_18
    move-object/from16 v11, p4

    .line 1144
    move-object/from16 v12, v22

    .line 1146
    move/from16 v23, v6

    .line 1148
    move-object v13, v14

    .line 1150
    move/from16 v16, v1

    .line 1151
    move/from16 v17, v2

    .line 1153
    move/from16 v18, v7

    .line 1155
    invoke-virtual/range {v10 .. v20}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)V

    .line 1157
    move v6, v4

    .line 1160
    goto :goto_19

    .line 1161
    :cond_27
    const/16 v23, 0x1

    .line 1162
    move v6, v0

    .line 1164
    :goto_19
    move-object/from16 v0, p0

    .line 1165
    move-object/from16 v1, v24

    .line 1167
    move-object/from16 v2, v22

    .line 1169
    move-object/from16 v3, v21

    .line 1171
    move-object/from16 v4, v21

    .line 1173
    move-object/from16 v7, p3

    .line 1175
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTransition;->startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    .line 1177
    goto :goto_1a

    .line 1180
    :cond_28
    :pswitch_2
    move-object/from16 v24, v12

    .line 1181
    move/from16 v23, v13

    .line 1183
    move-object/from16 v0, p0

    .line 1185
    move-object/from16 v1, p2

    .line 1187
    move-object/from16 v2, p3

    .line 1189
    move-object/from16 v3, p4

    .line 1191
    move-object/from16 v4, p5

    .line 1193
    move-object/from16 v5, v24

    .line 1195
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/pip/PipTransition;->removePipImmediately(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/app/TaskInfo;)V

    .line 1197
    :goto_1a
    move/from16 v13, v23

    .line 1200
    :goto_1b
    const/4 v4, 0x0

    .line 1202
    :goto_1c
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 1203
    return v13

    .line 1205
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1206
    const-string v1, "Cannot find the pip task for exit-pip transition."

    .line 1208
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1210
    throw v0

    .line 1213
    :cond_2a
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 1214
    invoke-interface {v0, v4, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1216
    iput-object v4, v9, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1219
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1221
    const-string v1, "Previous callback not called, aborting exit PIP."

    .line 1223
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1225
    throw v0

    .line 1228
    nop

    .line 1229
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 1230
.end method

.method public final startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    if-nez v3, :cond_15

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 12
    move-result-object v3

    .line 15
    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 16
    const/4 v3, 0x0

    .line 18
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 19
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 21
    const/4 v5, 0x3

    .line 23
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 24
    move-object/from16 v5, p4

    .line 27
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 29
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    move-result-object v15

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 37
    move-result-object v14

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 41
    move-result v5

    .line 44
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 45
    if-nez v6, :cond_1

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndFixedRotation()I

    .line 49
    move-result v6

    .line 52
    iput v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 53
    const/4 v7, -0x1

    .line 55
    if-eq v6, v7, :cond_0

    .line 56
    const/4 v3, 0x1

    .line 58
    :cond_0
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 59
    :cond_1
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 61
    if-eqz v3, :cond_2

    .line 63
    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 65
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 68
    move-result v3

    .line 71
    :goto_0
    iget-object v6, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 72
    iget-object v7, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 74
    iget-object v8, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 76
    iget-object v13, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 78
    iget-object v12, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 80
    invoke-virtual {v13, v6, v8, v7, v12}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    .line 82
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 85
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    instance-of v6, v6, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    .line 90
    if-eqz v6, :cond_3

    .line 92
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 94
    invoke-interface {v6, v14}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 96
    :cond_3
    invoke-virtual {v12}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 99
    move-result-object v11

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 103
    move-result-object v10

    .line 106
    invoke-static {v5, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 107
    move-result v9

    .line 110
    iget-object v6, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 111
    invoke-static {v6, v10}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 113
    move-result-object v6

    .line 116
    if-eqz v6, :cond_4

    .line 117
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 119
    move-result v7

    .line 122
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 123
    move-result v8

    .line 126
    if-le v7, v8, :cond_4

    .line 127
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 129
    move-result v7

    .line 132
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 133
    move-result v8

    .line 136
    if-le v7, v8, :cond_4

    .line 137
    const/4 v7, 0x1

    .line 139
    goto :goto_1

    .line 140
    :cond_4
    const/4 v7, 0x0

    .line 141
    :goto_1
    if-nez v7, :cond_5

    .line 142
    const/4 v6, 0x0

    .line 144
    :cond_5
    move-object v8, v6

    .line 145
    if-eqz v9, :cond_6

    .line 146
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 148
    if-eqz v6, :cond_6

    .line 150
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransition;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 152
    invoke-virtual {v6, v3}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    .line 154
    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 157
    move-result-object v6

    .line 160
    invoke-virtual {v12}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 161
    move-result-object v7

    .line 164
    invoke-virtual {v11, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    invoke-static {v11, v6, v3, v5}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 168
    if-eqz v8, :cond_6

    .line 171
    iget-object v3, v15, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 173
    if-eqz v3, :cond_6

    .line 175
    const/4 v5, 0x3

    .line 177
    if-ne v9, v5, :cond_6

    .line 178
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 180
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 182
    invoke-virtual {v8, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 184
    :cond_6
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 187
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    instance-of v3, v3, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    .line 192
    if-nez v3, :cond_7

    .line 194
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 196
    iget-object v3, v3, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 198
    new-instance v5, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;

    .line 200
    invoke-direct {v5, v0, v14}, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/view/SurfaceControl;)V

    .line 202
    const-wide/16 v6, 0x0

    .line 205
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 207
    invoke-virtual {v3, v5, v6, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 209
    :cond_7
    iget-object v3, v15, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 212
    const/high16 v7, 0x3f800000    # 1.0f

    .line 214
    const-string v6, "PipTransition"

    .line 216
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;

    .line 218
    if-eqz v3, :cond_b

    .line 220
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    .line 222
    move-result v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    iget-boolean v3, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 228
    if-eqz v3, :cond_b

    .line 230
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 232
    if-eqz v3, :cond_8

    .line 234
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 236
    if-eqz v3, :cond_8

    .line 238
    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEndFixedRotation:I

    .line 240
    int-to-long v9, v3

    .line 242
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 243
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 245
    move-result-object v7

    .line 248
    filled-new-array {v6, v7}, [Ljava/lang/Object;

    .line 249
    move-result-object v6

    .line 252
    const-string v7, "%s: SwipePipToHome should not use fixed rotation %d"

    .line 253
    const v9, 0x5969cfbd

    .line 255
    const/4 v10, 0x4

    .line 258
    invoke-static {v3, v9, v10, v7, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_8
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 262
    iget-object v3, v3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    .line 264
    if-eqz v3, :cond_9

    .line 266
    invoke-virtual {v1, v3, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 268
    move-result-object v6

    .line 271
    const v7, 0x7fffffff

    .line 272
    invoke-virtual {v6, v3, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 275
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 278
    const/4 v7, 0x0

    .line 280
    iput-object v7, v6, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    .line 281
    :cond_9
    iget-object v6, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 283
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 285
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 287
    move-result-object v9

    .line 290
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 291
    const/4 v12, 0x2

    .line 293
    const/16 v16, 0x0

    .line 294
    const/16 v17, 0x0

    .line 296
    move-object v10, v5

    .line 298
    move-object v5, v6

    .line 299
    move-object v6, v15

    .line 300
    move-object v7, v14

    .line 301
    move-object/from16 p1, v8

    .line 302
    move-object v8, v9

    .line 304
    move-object/from16 v18, v10

    .line 305
    move-object v10, v11

    .line 307
    move-object/from16 v19, v11

    .line 308
    move-object/from16 v11, p1

    .line 310
    move-object/from16 v20, v13

    .line 312
    move/from16 v13, v16

    .line 314
    move-object v2, v14

    .line 316
    move/from16 v14, v17

    .line 317
    invoke-virtual/range {v5 .. v14}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 319
    move-result-object v5

    .line 322
    move-object/from16 v14, v18

    .line 323
    iput-object v14, v5, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 325
    const/4 v6, 0x2

    .line 327
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 328
    move-result-object v5

    .line 331
    invoke-virtual/range {p2 .. p3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 332
    const/high16 v7, 0x3f800000    # 1.0f

    .line 335
    invoke-virtual {v5, v2, v1, v7}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 340
    move-object/from16 v11, v19

    .line 343
    move-object/from16 v13, v20

    .line 345
    invoke-virtual {v13, v11}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 347
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 350
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 352
    invoke-virtual {v0, v15, v11, v6, v1}, Lcom/android/wm/shell/pip/PipTransition;->onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V

    .line 355
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    .line 358
    if-eqz v3, :cond_a

    .line 361
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 363
    const/4 v1, 0x0

    .line 365
    const/4 v2, 0x0

    .line 366
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V

    .line 367
    goto :goto_2

    .line 370
    :cond_a
    const/4 v2, 0x0

    .line 371
    :goto_2
    iput-boolean v2, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 372
    return-void

    .line 374
    :cond_b
    move-object/from16 p1, v8

    .line 375
    move-object v2, v14

    .line 377
    move-object v14, v5

    .line 378
    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    .line 379
    const/4 v4, 0x1

    .line 381
    if-ne v3, v4, :cond_c

    .line 382
    const/4 v4, 0x0

    .line 384
    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 385
    goto :goto_3

    .line 388
    :cond_c
    invoke-virtual {v1, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 389
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 392
    if-nez v3, :cond_12

    .line 395
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 397
    const/4 v1, 0x2

    .line 399
    const/4 v3, 0x0

    .line 400
    const/4 v4, 0x1

    .line 401
    move-object/from16 v16, v6

    .line 402
    move-object v6, v15

    .line 404
    move v8, v7

    .line 405
    move-object v7, v2

    .line 406
    move-object v8, v10

    .line 407
    move/from16 v17, v9

    .line 408
    move-object v9, v10

    .line 410
    move-object/from16 v21, v10

    .line 411
    move-object v10, v11

    .line 413
    move-object/from16 v11, p1

    .line 414
    move-object/from16 v18, v12

    .line 416
    move v12, v1

    .line 418
    move-object v1, v13

    .line 419
    move v13, v3

    .line 420
    move-object v3, v14

    .line 421
    move/from16 v14, v17

    .line 422
    invoke-virtual/range {v5 .. v14}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 424
    move-result-object v5

    .line 427
    move-object/from16 v6, p1

    .line 428
    if-nez v6, :cond_10

    .line 430
    iget-object v6, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 432
    if-eqz v6, :cond_d

    .line 434
    move v6, v4

    .line 436
    goto :goto_4

    .line 437
    :cond_d
    const/4 v6, 0x0

    .line 438
    :goto_4
    if-nez v6, :cond_e

    .line 439
    sget-boolean v7, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 441
    if-eqz v7, :cond_e

    .line 443
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 445
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 447
    move-result-object v8

    .line 450
    const v9, 0x3270671a

    .line 451
    const-string v10, "%s: TaskInfo.topActivityInfo is null"

    .line 454
    const/4 v11, 0x0

    .line 456
    invoke-static {v7, v9, v11, v10, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 457
    :cond_e
    const-string v7, "persist.wm.debug.enable_pip_app_icon_overlay"

    .line 460
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 462
    move-result v4

    .line 465
    iget-object v7, v0, Lcom/android/wm/shell/pip/PipTransition;->mContext:Landroid/content/Context;

    .line 466
    if-eqz v4, :cond_f

    .line 468
    if-eqz v6, :cond_f

    .line 470
    iget-object v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 472
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipBoundsState;->mLauncherState:Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;

    .line 474
    iget v1, v1, Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;->mAppIconSizePx:I

    .line 476
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    new-instance v6, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;

    .line 481
    new-instance v8, Lcom/android/launcher3/icons/IconProvider;

    .line 483
    invoke-direct {v8, v7}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 485
    invoke-virtual {v8, v4}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 488
    move-result-object v4

    .line 491
    move-object/from16 v8, v21

    .line 492
    invoke-direct {v6, v7, v8, v4, v1}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    .line 494
    invoke-virtual {v5, v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    .line 497
    goto :goto_5

    .line 500
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    new-instance v1, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    .line 504
    invoke-direct {v1, v7}, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;-><init>(Landroid/content/Context;)V

    .line 506
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    .line 509
    goto :goto_5

    .line 512
    :cond_10
    iget v1, v15, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    .line 513
    invoke-static {v1}, Lcom/android/wm/shell/pip/PipUtils;->getTaskSnapshot(I)Landroid/window/TaskSnapshot;

    .line 515
    move-result-object v1

    .line 518
    if-eqz v1, :cond_11

    .line 519
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    new-instance v4, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;

    .line 524
    invoke-direct {v4, v1, v6}, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;-><init>(Landroid/window/TaskSnapshot;Landroid/graphics/Rect;)V

    .line 526
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    .line 529
    :cond_11
    :goto_5
    move-object v6, v2

    .line 532
    move-object v1, v3

    .line 533
    move-object/from16 v2, p3

    .line 534
    goto :goto_6

    .line 536
    :cond_12
    move/from16 v17, v9

    .line 537
    move-object/from16 v18, v12

    .line 539
    move-object v1, v14

    .line 541
    const/4 v4, 0x1

    .line 542
    if-ne v3, v4, :cond_14

    .line 543
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 545
    const/4 v9, 0x0

    .line 547
    const/high16 v10, 0x3f800000    # 1.0f

    .line 548
    move-object v6, v15

    .line 550
    move-object v7, v2

    .line 551
    move-object v8, v11

    .line 552
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 553
    move-result-object v5

    .line 556
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 557
    move-object v6, v2

    .line 559
    move-object/from16 v2, p3

    .line 560
    invoke-virtual {v3, v11, v6, v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 562
    invoke-virtual {v3, v2, v6, v4}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 565
    :goto_6
    const/4 v3, 0x2

    .line 568
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 569
    move-result-object v3

    .line 572
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    .line 573
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 575
    move-result-object v3

    .line 578
    iget v4, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    .line 579
    int-to-long v7, v4

    .line 581
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 582
    if-eqz v17, :cond_13

    .line 585
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mInFixedRotation:Z

    .line 587
    if-eqz v3, :cond_13

    .line 589
    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 591
    move-result-object v3

    .line 594
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 595
    :cond_13
    iput-object v1, v5, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 598
    const/high16 v1, 0x3f800000    # 1.0f

    .line 600
    invoke-virtual {v5, v6, v2, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    .line 602
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 605
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    .line 607
    iput-object v0, v5, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 609
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 611
    return-void

    .line 614
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    .line 615
    const-string v1, "Unrecognized animation type: "

    .line 617
    invoke-static {v1, v3}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 619
    move-result-object v1

    .line 622
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 623
    throw v0

    .line 626
    :cond_15
    const/4 v1, 0x0

    .line 627
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 628
    invoke-interface {v3, v1, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 630
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 633
    new-instance v0, Ljava/lang/RuntimeException;

    .line 635
    const-string v1, "Previous callback not called, aborting entering PIP."

    .line 637
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 639
    throw v0
    .line 642
.end method

.method public final startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitDestinationBounds:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 9
    iget-object p3, p3, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 11
    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    :cond_1
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 24
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mExitTransition:Landroid/os/IBinder;

    .line 30
    return-void
    .line 32
.end method

.method public final startExpandAnimation(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v11, p7

    .line 4
    iget-object v1, v2, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 6
    move-object/from16 v6, p5

    .line 8
    invoke-static {v1, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 10
    move-result-object v7

    .line 13
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 14
    const/4 v8, 0x3

    .line 16
    const/4 v9, 0x0

    .line 17
    move-object v3, p2

    .line 18
    move-object v4, p3

    .line 19
    move-object/from16 v5, p4

    .line 20
    move/from16 v10, p6

    .line 22
    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 24
    move-result-object v1

    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 29
    move-result-object v2

    .line 32
    iget v3, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterExitAnimationDuration:I

    .line 33
    int-to-long v3, v3

    .line 35
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    if-eqz v11, :cond_0

    .line 39
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransition;->mTransactionConsumer:Lcom/android/wm/shell/pip/PipTransition$1;

    .line 41
    iput-object v2, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 43
    const/4 v2, 0x0

    .line 45
    move-object v3, p2

    .line 46
    invoke-virtual {v1, p2, v11, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    .line 47
    invoke-virtual/range {p7 .. p7}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 50
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 55
    move-result-object v1

    .line 58
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 59
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    .line 61
    iput-object v0, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 63
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    return-void
    .line 68
.end method

.method public final syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransition;->findCurrentPipTaskChange(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    .line 2
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTransition;->updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method public final updatePipForUnhandledTransition(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 6
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 22
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 24
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 28
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 34
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 36
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransition;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 40
    invoke-virtual {v2, v0, p1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 42
    invoke-virtual {v2, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 45
    invoke-virtual {v2, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 48
    invoke-virtual {v2, v0, p1, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 51
    invoke-virtual {v2, p3, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 54
    invoke-virtual {v2, p3, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 57
    if-eqz v1, :cond_1

    .line 60
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mHasFadeOut:Z

    .line 62
    if-eqz p0, :cond_1

    .line 64
    const/4 p0, 0x0

    .line 66
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 67
    invoke-virtual {p3, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 70
    :cond_1
    return-void
    .line 73
.end method
