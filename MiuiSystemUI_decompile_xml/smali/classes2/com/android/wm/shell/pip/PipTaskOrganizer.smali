.class public Lcom/android/wm/shell/pip/PipTaskOrganizer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCrossFadeAnimationDuration:I

.field public mCurrentRotation:I

.field public mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mEnterAnimationDuration:I

.field public final mExitAnimationDuration:I

.field public mHasFadeOut:Z

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNextRotation:I

.field public mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

.field public mPictureInPictureParams:Landroid/app/PictureInPictureParams;

.field public final mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

.field public final mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

.field public mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

.field public final mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

.field public final mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field public final mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

.field final mPipTransitionCallback:Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

.field public final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field public final mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

.field public final mSoScSplitScreenOptional:Ljava/util/Optional;

.field public final mSplitScreenOptional:Ljava/util/Optional;

.field public mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field public final mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

.field public mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

.field public final mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public mToken:Landroid/window/WindowContainerToken;

.field public mWaitForFixedRotation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 8

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p15

    move-object/from16 v3, p16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSoScSplitScreenOptional:Ljava/util/Optional;

    .line 3
    new-instance v4, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    .line 4
    new-instance v4, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionCallback:Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

    .line 5
    new-instance v5, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    move-object v5, p1

    .line 6
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    move-object v6, p2

    .line 7
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v6, p3

    .line 8
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    move-object v6, p4

    .line 9
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    move-object v6, p5

    .line 10
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    move-object v6, p6

    .line 11
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    move-object v6, p7

    .line 12
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 13
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v6, p11

    .line 14
    iput-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0043    # @integer/config_pipEnterAnimationDuration '425'

    .line 16
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0044    # @integer/config_pipExitAnimationDuration '250'

    .line 18
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0042    # @integer/config_pipCrossfadeAnimationDuration '150'

    .line 20
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCrossFadeAnimationDuration:I

    move-object/from16 v5, p9

    .line 21
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    move-object/from16 v5, p8

    .line 22
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    move-object/from16 v5, p14

    .line 23
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 24
    new-instance v5, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    invoke-direct {v5}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;-><init>()V

    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    move-object/from16 v5, p12

    .line 25
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 26
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 27
    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 28
    new-instance v5, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;

    const/4 v6, 0x3

    invoke-direct {v5, v6, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addFocusListener(Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;)V

    .line 30
    iput-object v0, v1, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v2, p13

    .line 31
    invoke-virtual {v2, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 32
    iget-object v0, v1, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v16, p17

    .line 33
    invoke-direct/range {v0 .. v16}, Lcom/android/wm/shell/pip/PipTaskOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    move-object/from16 v1, p13

    .line 34
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSoScSplitScreenOptional:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v6, p2

    .line 4
    move/from16 v11, p4

    .line 6
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 8
    const/4 v12, 0x0

    .line 10
    const-string v13, "PipTaskOrganizer"

    .line 11
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_f

    .line 14
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto/16 :goto_8

    .line 20
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    if-eqz p3, :cond_1

    .line 28
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    .line 30
    move-result v1

    .line 33
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    .line 34
    move-result v3

    .line 37
    if-le v1, v3, :cond_1

    .line 38
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    .line 40
    move-result v1

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    .line 44
    move-result v3

    .line 47
    if-le v1, v3, :cond_1

    .line 48
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v1, v12

    .line 52
    :goto_0
    if-nez v1, :cond_2

    .line 53
    goto :goto_1

    .line 55
    :cond_2
    move-object/from16 v2, p3

    .line 56
    :goto_1
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 58
    if-eqz v1, :cond_3

    .line 60
    iget v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    .line 62
    iget v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    .line 64
    invoke-static {v1, v3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 66
    move-result v1

    .line 69
    move v15, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v15, v12

    .line 72
    :goto_2
    iget-object v10, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 73
    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 75
    if-eqz v15, :cond_5

    .line 77
    const/4 v1, 0x2

    .line 79
    const/4 v3, 0x3

    .line 80
    if-ne v11, v1, :cond_4

    .line 81
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 83
    iget v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    .line 85
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    .line 87
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v10}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object v4

    .line 97
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    iget v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    .line 101
    iget v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    .line 103
    invoke-static {v6, v1, v4, v5}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 105
    if-eqz v2, :cond_5

    .line 108
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 112
    if-eqz v1, :cond_5

    .line 114
    if-ne v15, v3, :cond_5

    .line 116
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 118
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 120
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 122
    goto :goto_3

    .line 125
    :cond_4
    if-ne v11, v3, :cond_5

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    .line 128
    invoke-direct {v1, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 133
    move-result-object v2

    .line 136
    invoke-static {v1, v2, v15}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 137
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 140
    invoke-static {v2, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 142
    move-result-object v2

    .line 145
    :cond_5
    :goto_3
    move-object v8, v2

    .line 146
    const/4 v1, 0x6

    .line 147
    if-ne v11, v1, :cond_6

    .line 148
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 150
    move-result-object v1

    .line 153
    move-object v4, v1

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    move-object/from16 v4, p1

    .line 156
    :goto_4
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 158
    iget-object v1, v1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 160
    if-eqz v1, :cond_7

    .line 162
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 164
    move-result v1

    .line 167
    if-eqz v1, :cond_7

    .line 168
    const/16 v16, 0x1

    .line 170
    goto :goto_5

    .line 172
    :cond_7
    move/from16 v16, v12

    .line 173
    :goto_5
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 175
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 177
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 179
    move-object/from16 v5, p1

    .line 181
    move-object/from16 v6, p2

    .line 183
    move-object v7, v8

    .line 185
    move-object v14, v8

    .line 186
    move/from16 v8, p4

    .line 187
    move-object/from16 v17, v9

    .line 189
    move/from16 v9, p6

    .line 191
    move-object/from16 v18, v10

    .line 193
    move v10, v15

    .line 195
    invoke-virtual/range {v1 .. v10}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IFI)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 196
    move-result-object v1

    .line 199
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 200
    move-result-object v2

    .line 203
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    .line 204
    iput-object v3, v2, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 206
    move/from16 v3, p5

    .line 208
    int-to-long v3, v3

    .line 210
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    if-nez v16, :cond_8

    .line 214
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    .line 216
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 218
    :cond_8
    invoke-static/range {p4 .. p4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 221
    move-result v2

    .line 224
    if-eqz v2, :cond_e

    .line 225
    if-nez v14, :cond_c

    .line 227
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 229
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 231
    if-eqz v2, :cond_9

    .line 233
    const/4 v2, 0x1

    .line 235
    goto :goto_6

    .line 236
    :cond_9
    move v2, v12

    .line 237
    :goto_6
    if-nez v2, :cond_a

    .line 238
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 240
    if-eqz v3, :cond_a

    .line 242
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 244
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 246
    move-result-object v4

    .line 249
    const v5, 0x518670af

    .line 250
    const-string v6, "%s: TaskInfo.topActivityInfo is null"

    .line 253
    invoke-static {v3, v5, v12, v6, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_a
    const-string v3, "persist.wm.debug.enable_pip_app_icon_overlay"

    .line 258
    const/4 v4, 0x1

    .line 260
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 261
    move-result v3

    .line 264
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    .line 265
    if-eqz v3, :cond_b

    .line 267
    if-eqz v2, :cond_b

    .line 269
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 271
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 273
    move-object/from16 v2, v17

    .line 275
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mLauncherState:Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;

    .line 277
    iget v2, v2, Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;->mAppIconSizePx:I

    .line 279
    new-instance v3, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;

    .line 281
    new-instance v5, Lcom/android/launcher3/icons/IconProvider;

    .line 283
    invoke-direct {v5, v4}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {v5, v0}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 288
    move-result-object v0

    .line 291
    move-object/from16 v5, p1

    .line 292
    invoke-direct {v3, v4, v5, v0, v2}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V

    .line 294
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    .line 297
    goto :goto_7

    .line 300
    :cond_b
    new-instance v0, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;

    .line 301
    invoke-direct {v0, v4}, Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;-><init>(Landroid/content/Context;)V

    .line 303
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    .line 306
    goto :goto_7

    .line 309
    :cond_c
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 310
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    .line 312
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTaskSnapshot(I)Landroid/window/TaskSnapshot;

    .line 314
    move-result-object v0

    .line 317
    if-eqz v0, :cond_d

    .line 318
    new-instance v2, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;

    .line 320
    invoke-direct {v2, v0, v14}, Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;-><init>(Landroid/window/TaskSnapshot;Landroid/graphics/Rect;)V

    .line 322
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->reattachContentOverlay(Lcom/android/wm/shell/pip/PipContentOverlay;)V

    .line 325
    :cond_d
    :goto_7
    if-eqz v15, :cond_e

    .line 328
    invoke-virtual/range {v18 .. v18}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 330
    move-result-object v0

    .line 333
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 334
    :cond_e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 337
    return-object v1

    .line 340
    :cond_f
    :goto_8
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 341
    if-eqz v0, :cond_10

    .line 343
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 345
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 347
    move-result-object v1

    .line 350
    const v3, 0x4f6bbbbc    # 3.95494912E9f

    .line 351
    const-string v4, "%s: Abort animation, invalid leash"

    .line 354
    invoke-static {v0, v3, v12, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :cond_10
    return-object v2
    .line 359
.end method

.method public final applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 8
    invoke-interface {v0, v1}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 10
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 13
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 18
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 24
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 26
    if-eqz p3, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 31
    invoke-virtual {v0, p1, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 38
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;

    .line 41
    const/4 p3, 0x1

    .line 43
    invoke-direct {p1, p3, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 47
    return-void
    .line 50
.end method

.method public final applyFinishBoundsResize(IZLandroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;ZLandroid/window/WindowContainerTransaction;I)V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSoScSplitScreenOptional:Ljava/util/Optional;

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 23
    return-void

    .line 26
    :cond_0
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;

    .line 27
    const/4 v0, 0x1

    .line 29
    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;ZLandroid/window/WindowContainerTransaction;I)V

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 39
    invoke-virtual {p0, p3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 41
    :goto_0
    return-void
    .line 44
.end method

.method public applyNewPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    .line 10
    move-result v0

    .line 13
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 14
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    .line 16
    move-result v4

    .line 19
    invoke-static {v0, v4}, Lcom/android/wm/shell/pip/PipUtils;->aspectRatioChanged(FF)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    .line 26
    move-result v0

    .line 29
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 30
    iget v5, v4, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    .line 32
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    .line 34
    move-result v5

    .line 37
    if-gtz v5, :cond_1

    .line 38
    iget v4, v4, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    .line 40
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    .line 42
    move-result v0

    .line 45
    if-gtz v0, :cond_1

    .line 46
    move v0, v2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v0, v1

    .line 50
    :goto_0
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    .line 53
    move-result v0

    .line 56
    iget-object v4, v3, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    .line 57
    check-cast v4, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v4

    .line 64
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v5

    .line 68
    if-eqz v5, :cond_3

    .line 69
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v5

    .line 74
    check-cast v5, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;

    .line 75
    invoke-interface {v5, v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;->onAspectRatioChanged(F)V

    .line 77
    goto :goto_1

    .line 80
    :cond_2
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 81
    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    .line 85
    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    .line 89
    move-result v4

    .line 92
    float-to-double v4, v4

    .line 93
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object v0

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 100
    move-result-object v4

    .line 103
    const-string v5, "PipTaskOrganizer"

    .line 104
    filled-new-array {v5, v0, v4}, [Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 109
    const/16 v4, 0x2c

    .line 110
    const-string v5, "%s: New aspect ratio is not valid. hasAspectRatio=%b aspectRatio=%f"

    .line 112
    const v7, -0x484cffb3

    .line 114
    invoke-static {v6, v7, v4, v5, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 120
    if-nez v0, :cond_a

    .line 122
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    .line 124
    move-result-object v0

    .line 127
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 128
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    .line 130
    move-result-object v4

    .line 133
    if-nez v0, :cond_4

    .line 134
    if-nez v4, :cond_4

    .line 136
    goto :goto_4

    .line 138
    :cond_4
    if-eqz v0, :cond_8

    .line 139
    if-nez v4, :cond_5

    .line 141
    goto :goto_3

    .line 143
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 144
    move-result v5

    .line 147
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 148
    move-result v6

    .line 151
    if-eq v5, v6, :cond_6

    .line 152
    goto :goto_3

    .line 154
    :cond_6
    move v5, v1

    .line 155
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 156
    move-result v6

    .line 159
    if-ge v5, v6, :cond_9

    .line 160
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v6

    .line 165
    check-cast v6, Landroid/app/RemoteAction;

    .line 166
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v7

    .line 171
    check-cast v7, Landroid/app/RemoteAction;

    .line 172
    invoke-static {v6, v7}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    .line 174
    move-result v6

    .line 177
    if-nez v6, :cond_7

    .line 178
    goto :goto_3

    .line 180
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 181
    goto :goto_2

    .line 183
    :cond_8
    :goto_3
    move v1, v2

    .line 184
    :cond_9
    :goto_4
    if-nez v1, :cond_a

    .line 185
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    .line 187
    move-result-object v0

    .line 190
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 191
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    .line 193
    move-result-object p0

    .line 196
    invoke-static {v0, p0}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    .line 197
    move-result p0

    .line 200
    if-nez p0, :cond_b

    .line 201
    :cond_a
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    .line 203
    move-result-object p0

    .line 206
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    .line 207
    move-result-object p1

    .line 210
    iget-object v0, v3, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    .line 211
    check-cast v0, Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v0

    .line 218
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v1

    .line 222
    if-eqz v1, :cond_b

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v1

    .line 228
    check-cast v1, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;

    .line 229
    invoke-interface {v1, p0, p1}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;->onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V

    .line 231
    goto :goto_5

    .line 234
    :cond_b
    return-void
    .line 235
.end method

.method public final attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 6
    return-void
    .line 9
.end method

.method public final createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 2
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 12
    invoke-virtual {v2, p1, v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 17
    invoke-virtual {v2, p1, v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 26
    move-result p0

    .line 29
    invoke-virtual {v2, v0, p1, p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 30
    return-object v0
    .line 33
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p2, "PipTaskOrganizer"

    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "mTaskInfo="

    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "mToken="

    .line 61
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 66
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, " binder="

    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 76
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 80
    move-result-object v2

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 v2, 0x0

    .line 85
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, "mLeash="

    .line 104
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "mState="

    .line 129
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 134
    iget v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 136
    const-string v3, "mPictureInPictureParams="

    .line 138
    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object p2

    .line 143
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 144
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 156
    check-cast p0, Lcom/android/wm/shell/pip/PipTransition;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "PipTransition"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "mCurrentPipTaskToken="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 219
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string p2, "mFinishCallback="

    .line 231
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object p0

    .line 244
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    return-void
    .line 248
.end method

.method public enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 2
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 4
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 13
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 19
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 23
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 29
    invoke-virtual {v2, p1, v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 34
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 40
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 43
    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda2;

    .line 46
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;J)V

    .line 48
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    .line 51
    return-void
    .line 54
.end method

.method public final exitPip(IZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 6
    move-result v2

    .line 9
    if-eqz v2, :cond_1a

    .line 10
    iget v2, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 12
    const/4 v4, 0x5

    .line 14
    if-eq v2, v4, :cond_1a

    .line 15
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 17
    if-nez v2, :cond_0

    .line 19
    goto/16 :goto_d

    .line 21
    :cond_0
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 23
    const/4 v5, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 35
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 39
    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 40
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    const v6, -0x3a1a2f56

    .line 46
    const-string v8, "exitPip: %s, state=%s"

    .line 49
    invoke-static {v7, v6, v5, v8, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_1
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 54
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 56
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 59
    const/4 v7, 0x1

    .line 61
    if-eqz v6, :cond_2

    .line 62
    invoke-virtual {v6}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    .line 64
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    move v6, v7

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move v6, v5

    .line 72
    :goto_0
    const/4 v8, 0x0

    .line 73
    if-eqz v6, :cond_3

    .line 74
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 76
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->launchIntoPipHostTaskId:I

    .line 78
    invoke-virtual {v2, v1, v8}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 80
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 83
    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removePip()V

    .line 88
    return-void

    .line 91
    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    .line 92
    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 94
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object v10

    .line 99
    invoke-direct {v6, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 100
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 103
    move-result-object v10

    .line 106
    invoke-virtual {v10}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 107
    move-result v10

    .line 110
    const/4 v14, -0x1

    .line 111
    iget-object v15, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSoScSplitScreenOptional:Ljava/util/Optional;

    .line 112
    iget-object v13, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 114
    if-eqz v10, :cond_8

    .line 116
    invoke-virtual {v15}, Ljava/util/Optional;->isEmpty()Z

    .line 118
    move-result v10

    .line 121
    if-eqz v10, :cond_4

    .line 122
    goto/16 :goto_7

    .line 124
    :cond_4
    invoke-virtual {v15}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 126
    move-result-object v10

    .line 129
    check-cast v10, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 130
    iget-object v11, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 132
    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 134
    if-lez v11, :cond_5

    .line 136
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSplitPosition(I)I

    .line 138
    move-result v11

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move v11, v14

    .line 143
    :goto_1
    if-ne v11, v14, :cond_6

    .line 144
    if-nez p2, :cond_6

    .line 146
    goto/16 :goto_7

    .line 148
    :cond_6
    new-instance v11, Landroid/graphics/Rect;

    .line 150
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 152
    new-instance v12, Landroid/graphics/Rect;

    .line 155
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 157
    invoke-virtual {v10, v11, v12}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 160
    if-eqz p2, :cond_f

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isPipToTopLeft()Z

    .line 165
    move-result v10

    .line 168
    if-eqz v10, :cond_7

    .line 169
    goto :goto_2

    .line 171
    :cond_7
    move-object v11, v12

    .line 172
    :goto_2
    invoke-virtual {v6, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    goto :goto_5

    .line 176
    :cond_8
    invoke-virtual {v13}, Ljava/util/Optional;->isEmpty()Z

    .line 177
    move-result v10

    .line 180
    if-eqz v10, :cond_9

    .line 181
    goto :goto_7

    .line 183
    :cond_9
    invoke-virtual {v13}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 184
    move-result-object v10

    .line 187
    check-cast v10, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 188
    iget-object v11, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 190
    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 192
    if-lez v11, :cond_a

    .line 194
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSplitPosition(I)I

    .line 196
    move-result v11

    .line 199
    goto :goto_3

    .line 200
    :cond_a
    move v11, v14

    .line 201
    :goto_3
    if-ne v11, v14, :cond_b

    .line 202
    if-nez p2, :cond_b

    .line 204
    goto :goto_7

    .line 206
    :cond_b
    new-instance v12, Landroid/graphics/Rect;

    .line 207
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 209
    new-instance v3, Landroid/graphics/Rect;

    .line 212
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 214
    invoke-virtual {v10, v12, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 217
    if-eqz p2, :cond_d

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isPipToTopLeft()Z

    .line 222
    move-result v10

    .line 225
    if-eqz v10, :cond_c

    .line 226
    goto :goto_4

    .line 228
    :cond_c
    move-object v12, v3

    .line 229
    :goto_4
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 230
    :goto_5
    move v3, v7

    .line 233
    goto :goto_8

    .line 234
    :cond_d
    if-nez v11, :cond_e

    .line 235
    goto :goto_6

    .line 237
    :cond_e
    move-object v12, v3

    .line 238
    :goto_6
    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 239
    :cond_f
    :goto_7
    move v3, v5

    .line 242
    :goto_8
    if-eqz v3, :cond_10

    .line 243
    const/4 v3, 0x4

    .line 245
    goto :goto_9

    .line 246
    :cond_10
    const/4 v3, 0x3

    .line 247
    :goto_9
    sget-boolean v10, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    .line 248
    if-eqz v10, :cond_11

    .line 250
    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 252
    invoke-virtual {v2, v9, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 254
    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 257
    invoke-virtual {v2, v9, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 259
    move-object/from16 v18, v13

    .line 262
    goto :goto_a

    .line 264
    :cond_11
    sget-boolean v8, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 265
    if-eqz v8, :cond_12

    .line 267
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 269
    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 271
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    move-result-object v8

    .line 276
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    move-result-object v10

    .line 280
    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 281
    filled-new-array {v8, v10}, [Ljava/lang/Object;

    .line 283
    move-result-object v8

    .line 286
    const v10, -0x654e4293

    .line 287
    const-string v12, "exitPip: %s, dest=%s"

    .line 290
    invoke-static {v11, v10, v5, v12, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_12
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 295
    check-cast v8, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 297
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 299
    move-result-object v12

    .line 302
    iget-object v11, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 303
    invoke-virtual {v9}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 305
    move-result-object v16

    .line 308
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 309
    const/4 v9, 0x0

    .line 311
    move-object v10, v6

    .line 312
    move-object/from16 v17, v11

    .line 313
    move-object/from16 v11, v16

    .line 315
    move-object/from16 v16, v12

    .line 317
    move-object/from16 v18, v13

    .line 319
    move-object/from16 v13, v17

    .line 321
    invoke-virtual/range {v8 .. v13}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 323
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 326
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 328
    move-result v9

    .line 331
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 332
    move-result v10

    .line 335
    move-object/from16 v11, v16

    .line 336
    invoke-virtual {v11, v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 338
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 341
    invoke-virtual {v2, v8, v7}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 343
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 346
    invoke-virtual {v2, v8, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 348
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 351
    invoke-virtual {v2, v8, v11}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 353
    :goto_a
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 356
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 359
    if-eqz v1, :cond_17

    .line 361
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 363
    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 367
    move-result v1

    .line 370
    const/16 v3, 0x3ea

    .line 371
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 373
    if-eqz v1, :cond_13

    .line 375
    if-eqz p2, :cond_14

    .line 377
    invoke-virtual {v15}, Ljava/util/Optional;->isPresent()Z

    .line 379
    move-result v8

    .line 382
    if-eqz v8, :cond_14

    .line 383
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 385
    invoke-virtual {v2, v1, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 387
    invoke-virtual {v15}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 390
    move-result-object v1

    .line 393
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 394
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isPipToTopLeft()Z

    .line 398
    move-result v0

    .line 401
    xor-int/2addr v0, v7

    .line 402
    invoke-virtual {v1, v2, v5, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 403
    invoke-virtual {v4, v3, v2, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    .line 406
    return-void

    .line 409
    :cond_13
    if-eqz p2, :cond_14

    .line 410
    invoke-virtual/range {v18 .. v18}, Ljava/util/Optional;->isPresent()Z

    .line 412
    move-result v8

    .line 415
    if-eqz v8, :cond_14

    .line 416
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 418
    invoke-virtual {v2, v1, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 420
    invoke-virtual/range {v18 .. v18}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 423
    move-result-object v1

    .line 426
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 427
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isPipToTopLeft()Z

    .line 431
    move-result v0

    .line 434
    xor-int/2addr v0, v7

    .line 435
    invoke-virtual {v1, v2, v5, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 436
    invoke-virtual {v4, v3, v2, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    .line 439
    return-void

    .line 442
    :cond_14
    if-eqz v1, :cond_15

    .line 443
    invoke-virtual {v15}, Ljava/util/Optional;->isPresent()Z

    .line 445
    move-result v1

    .line 448
    if-eqz v1, :cond_16

    .line 449
    invoke-virtual {v15}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 451
    move-result-object v1

    .line 454
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 455
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 457
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 459
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSplitScreen(I)Z

    .line 461
    move-result v3

    .line 464
    if-eqz v3, :cond_16

    .line 465
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 467
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 469
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageOfTask(I)I

    .line 471
    move-result v0

    .line 474
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSplitScreen(Landroid/window/WindowContainerTransaction;I)V

    .line 475
    goto :goto_b

    .line 478
    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/util/Optional;->isPresent()Z

    .line 479
    move-result v1

    .line 482
    if-eqz v1, :cond_16

    .line 483
    invoke-virtual/range {v18 .. v18}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 485
    move-result-object v1

    .line 488
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 489
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 491
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 493
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(I)Z

    .line 495
    move-result v3

    .line 498
    if-eqz v3, :cond_16

    .line 499
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 501
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 503
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageOfTask(I)I

    .line 505
    move-result v0

    .line 508
    invoke-virtual {v1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->prepareExitSplitScreen(Landroid/window/WindowContainerTransaction;I)V

    .line 509
    :cond_16
    :goto_b
    const/16 v0, 0x3e9

    .line 512
    invoke-virtual {v4, v0, v2, v6}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    .line 514
    return-void

    .line 517
    :cond_17
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 518
    move-result-object v1

    .line 521
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 522
    move-result v1

    .line 525
    const/4 v4, 0x2

    .line 526
    if-eqz v1, :cond_18

    .line 527
    invoke-virtual {v15}, Ljava/util/Optional;->isPresent()Z

    .line 529
    move-result v1

    .line 532
    if-eqz v1, :cond_19

    .line 533
    invoke-virtual {v15}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 535
    move-result-object v1

    .line 538
    check-cast v1, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 539
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 541
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 543
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSplitScreen(I)Z

    .line 545
    move-result v5

    .line 548
    if-eqz v5, :cond_19

    .line 549
    invoke-virtual {v1, v14, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSplitScreen(II)V

    .line 551
    goto :goto_c

    .line 554
    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/util/Optional;->isPresent()Z

    .line 555
    move-result v1

    .line 558
    if-eqz v1, :cond_19

    .line 559
    invoke-virtual/range {v18 .. v18}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 561
    move-result-object v1

    .line 564
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 565
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 567
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    .line 569
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen(I)Z

    .line 571
    move-result v5

    .line 574
    if-eqz v5, :cond_19

    .line 575
    invoke-virtual {v1, v14, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitSplitScreen(II)V

    .line 577
    :cond_19
    :goto_c
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 580
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 582
    new-instance v2, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda7;

    .line 585
    move/from16 v4, p1

    .line 587
    invoke-direct {v2, v0, v6, v3, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V

    .line 589
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 592
    return-void

    .line 595
    :cond_1a
    :goto_d
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 596
    if-eqz v2, :cond_1b

    .line 598
    iget v1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 600
    int-to-long v1, v1

    .line 602
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 603
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 605
    move-result-object v0

    .line 608
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 609
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 611
    move-result-object v1

    .line 614
    const-string v2, "PipTaskOrganizer"

    .line 615
    filled-new-array {v2, v1, v0}, [Ljava/lang/Object;

    .line 617
    move-result-object v0

    .line 620
    const v1, -0x5ea72dce

    .line 621
    const-string v2, "%s: Not allowed to exitPip in current state mState=%d mToken=%s"

    .line 624
    const/4 v4, 0x4

    .line 626
    invoke-static {v3, v1, v4, v2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 627
    :cond_1b
    return-void
    .line 630
.end method

.method public final fadeExistingPip(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_3

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    if-eqz p1, :cond_1

    .line 16
    move v6, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v6, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    move v7, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v7, v0

    .line 25
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 26
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 32
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v5

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 38
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 43
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    .line 47
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 49
    if-eqz p1, :cond_3

    .line 51
    iget v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 53
    goto :goto_2

    .line 55
    :cond_3
    iget v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    .line 56
    :goto_2
    int-to-long v2, v2

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    xor-int/2addr p1, v1

    .line 66
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    .line 67
    return-void

    .line 69
    :cond_4
    :goto_3
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 70
    if-eqz p1, :cond_5

    .line 72
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 80
    const-string v0, "PipTaskOrganizer"

    .line 82
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    const v0, -0x296dcde7

    .line 88
    const/4 v1, 0x0

    .line 91
    const-string v2, "%s: Invalid leash on fadeExistingPip: %s"

    .line 92
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_5
    return-void
    .line 97
.end method

.method public final fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [F

    .line 12
    fill-array-data v0, :array_0

    .line 14
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 17
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCrossFadeAnimationDuration:I

    .line 21
    int-to-long v1, v1

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;

    .line 27
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;)V

    .line 29
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;

    .line 35
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$4;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    if-eqz p3, :cond_1

    .line 43
    const-wide/16 p0, 0x1f4

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    const-wide/16 p0, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 50
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 53
    :cond_2
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 58
.end method

.method public final findTaskSurface(I)Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    if-ne v0, p1, :cond_0

    .line 12
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "There is no surface for taskId="

    .line 17
    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
    .line 26
.end method

.method public final finishResize(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 6
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v1, p3}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne p1, v1, :cond_3

    .line 18
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 32
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 37
    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 38
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    const p2, 0x26f67532

    .line 44
    const-string p4, "removePipImmediately: %s, state=%s"

    .line 47
    invoke-static {p3, p2, v2, p4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 52
    const/4 p2, 0x0

    .line 54
    if-eqz p1, :cond_1

    .line 55
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 57
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 59
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 62
    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 64
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 67
    invoke-virtual {p1, p3, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 69
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 72
    invoke-virtual {p1, p3, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 74
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 77
    const/16 p3, 0x3eb

    .line 79
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/wm/shell/pip/PipTransitionController;->startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V

    .line 81
    goto :goto_0

    .line 84
    :cond_1
    :try_start_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 85
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 87
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 90
    invoke-virtual {p1, p3, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 95
    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 97
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 100
    move-result-object p0

    .line 103
    const/4 p1, 0x2

    .line 104
    filled-new-array {p1}, [I

    .line 105
    move-result-object p1

    .line 108
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 114
    if-eqz p1, :cond_2

    .line 116
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 121
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 122
    const-string p2, "PipTaskOrganizer"

    .line 124
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 126
    move-result-object p0

    .line 129
    const p2, 0x160ea403

    .line 130
    const-string p3, "%s: Failed to remove PiP, %s"

    .line 133
    invoke-static {p1, p2, v2, p3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->e(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_2
    :goto_0
    return-void

    .line 138
    :cond_3
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 139
    move-result v1

    .line 142
    const/4 v3, 0x1

    .line 143
    if-eqz v1, :cond_4

    .line 144
    if-ne p2, v3, :cond_4

    .line 146
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    .line 148
    return-void

    .line 151
    :cond_4
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 152
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 154
    invoke-virtual {p0, p3, p1, p4, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 157
    const/4 v1, 0x7

    .line 160
    if-eq p1, v1, :cond_6

    .line 161
    const/4 v1, 0x6

    .line 163
    if-eq p1, v1, :cond_6

    .line 164
    const/16 v1, 0x8

    .line 166
    if-ne p1, v1, :cond_5

    .line 168
    goto :goto_1

    .line 170
    :cond_5
    move v1, v2

    .line 171
    goto :goto_2

    .line 172
    :cond_6
    :goto_1
    move v1, v3

    .line 173
    :goto_2
    if-eqz v1, :cond_7

    .line 174
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 176
    if-eqz v1, :cond_7

    .line 178
    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->isSeamlessResizeEnabled()Z

    .line 180
    move-result v1

    .line 183
    if-nez v1, :cond_7

    .line 184
    goto :goto_3

    .line 186
    :cond_7
    move v3, v2

    .line 187
    :goto_3
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSyncTransactionQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 188
    if-eqz v3, :cond_9

    .line 190
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 192
    new-instance p4, Landroid/graphics/Rect;

    .line 195
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 197
    move-result v3

    .line 200
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 201
    move-result v4

    .line 204
    invoke-direct {p4, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 208
    check-cast v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 210
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 212
    move-result-object v3

    .line 215
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 216
    const v5, 0x7ffffffd

    .line 218
    invoke-static {v3, v4, v4, v0, v5}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 221
    move-result-object v3

    .line 224
    if-eqz v3, :cond_8

    .line 225
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 227
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;

    .line 230
    invoke-direct {p1, p0, v3, v0, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 235
    goto :goto_4

    .line 238
    :cond_8
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(IZLandroid/window/WindowContainerTransaction;)V

    .line 239
    goto :goto_4

    .line 242
    :cond_9
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isPipToTopLeft()Z

    .line 243
    move-result v0

    .line 246
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyFinishBoundsResize(IZLandroid/window/WindowContainerTransaction;)V

    .line 247
    const/4 p2, 0x4

    .line 250
    if-ne p1, p2, :cond_a

    .line 251
    new-instance p1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;

    .line 253
    invoke-direct {p1, v2, p4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 255
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 258
    :cond_a
    :goto_4
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    .line 261
    return-void
    .line 264
.end method

.method public final finishResizeForMenu(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-interface {p0, v1, v1, p1, v0}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 14
    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 17
    return-void
    .line 20
.end method

.method public final isInPip()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isPipToTopLeft()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSoScSplitScreenOptional:Ljava/util/Optional;

    .line 14
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 16
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    return v2

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    .line 31
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_0
    return v1

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSplitScreenOptional:Ljava/util/Optional;

    .line 40
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 42
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    return v2

    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getActivateSplitPosition(Landroid/app/TaskInfo;)I

    .line 57
    move-result p0

    .line 60
    if-nez p0, :cond_4

    .line 61
    goto :goto_1

    .line 63
    :cond_4
    move v1, v2

    .line 64
    :goto_1
    return v1
    .line 65
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 4
    move-result p1

    .line 7
    iput p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    .line 8
    return-void
    .line 10
.end method

.method public final onEndOfSwipePipToHomeTransition()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 7
    check-cast p0, Lcom/android/wm/shell/pip/PipTransition;

    .line 9
    iput v1, p0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 14
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 16
    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    .line 20
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 22
    check-cast v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 24
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 26
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 30
    iget-object v5, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 32
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 34
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 37
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 39
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 42
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 44
    move-result v6

    .line 47
    invoke-virtual {v5, v3, v4, v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 48
    new-instance v4, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;

    .line 51
    invoke-direct {v4, p0, v0, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 53
    invoke-virtual {p0, v0, v4, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 59
    iput-boolean v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 61
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    .line 64
    return-void
    .line 66
.end method

.method public final onExitPipFinished(Landroid/app/TaskInfo;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 19
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 24
    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 25
    filled-new-array {v0, v3, v4}, [Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    const v3, -0x74baa1db

    .line 31
    const-string v4, "onExitPipFinished: %s, state=%s leash=%s"

    .line 34
    invoke-static {v5, v3, v2, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 39
    const/4 v3, 0x0

    .line 41
    if-nez v0, :cond_2

    .line 42
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 44
    if-eqz p0, :cond_1

    .line 46
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 48
    const p1, 0x1e4bdc00

    .line 50
    const-string v0, "Warning, onExitPipFinished() called multiple times in the same session"

    .line 53
    invoke-static {p0, p1, v2, v0, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    return-void

    .line 58
    :cond_2
    iput-boolean v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 59
    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    .line 63
    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 67
    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    .line 70
    :cond_3
    iget v0, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 72
    if-nez v0, :cond_4

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 77
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 79
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 81
    move-result-object v0

    .line 84
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 85
    const/4 v5, 0x0

    .line 87
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 88
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 91
    :goto_0
    iput-boolean v2, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 94
    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 96
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    .line 101
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 106
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 111
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 116
    invoke-interface {v0}, Lcom/android/wm/shell/pip/PipMenuController;->detach()V

    .line 118
    iput-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 121
    iget p1, p1, Landroid/app/TaskInfo;->displayId:I

    .line 123
    if-eqz p1, :cond_5

    .line 125
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    .line 127
    if-eqz p0, :cond_5

    .line 129
    invoke-interface {p0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 131
    :cond_5
    return-void
    .line 134
.end method

.method public final onFixedRotationFinished(I)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 19
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    const v2, -0x512b6cea

    .line 25
    const-string v4, "onFixedRotationFinished: %s, state=%s"

    .line 28
    invoke-static {v3, v2, v0, v4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 33
    if-nez p1, :cond_1

    .line 35
    return-void

    .line 37
    :cond_1
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 38
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 44
    check-cast p1, Lcom/android/wm/shell/pip/PipTransition;

    .line 46
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/pip/PipTransition;->fadeEnteredPipIfNeed(Z)V

    .line 48
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 51
    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 53
    return-void

    .line 55
    :cond_2
    iget p1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 56
    if-ne p1, v3, :cond_4

    .line 58
    iget-boolean p1, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 60
    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onEndOfSwipePipToHomeTransition()V

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 68
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 70
    move-result-object p1

    .line 73
    iget v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 74
    int-to-long v3, v1

    .line 76
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    .line 77
    goto :goto_0

    .line 80
    :cond_4
    const/4 v1, 0x4

    .line 81
    if-ne p1, v1, :cond_5

    .line 82
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    .line 84
    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeExistingPip(Z)V

    .line 88
    goto :goto_0

    .line 91
    :cond_5
    const/4 v1, 0x3

    .line 92
    if-ne p1, v1, :cond_6

    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 95
    if-eqz p1, :cond_6

    .line 97
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 99
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 101
    iget-object p1, p1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 103
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 105
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;

    .line 110
    invoke-direct {v1, p0, p1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Object;I)V

    .line 112
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 115
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyEnterPipSyncTransaction(Landroid/graphics/Rect;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    .line 117
    :cond_6
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 120
    iput-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 122
    return-void
    .line 124
.end method

.method public final onFixedRotationStarted(II)V
    .locals 5

    .line 1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 19
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    const v2, -0x5bec9cb

    .line 25
    const-string v4, "onFixedRotationStarted: %s, state=%s"

    .line 28
    invoke-static {v3, v2, v1, v4, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iput p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    .line 33
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 36
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 38
    if-eqz p1, :cond_1

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 42
    check-cast p0, Lcom/android/wm/shell/pip/PipTransition;

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipTransition;->fadeEnteredPipIfNeed(Z)V

    .line 46
    return-void

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeExistingPip(Z)V

    .line 56
    :cond_2
    return-void
    .line 59
.end method

.method public final onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 2
    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/PipMenuController;->onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    const-string v2, "Requires RunningTaskInfo"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 10
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 12
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 14
    iget-object v8, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 16
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v8, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 19
    move-object/from16 v3, p2

    .line 22
    iput-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 24
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 28
    iput-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 30
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 32
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 34
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 36
    iget-object v7, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 38
    invoke-virtual {v6, v5, v3, v4, v7}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    .line 40
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 43
    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    .line 47
    move-result-object v3

    .line 50
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 51
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getCloseAction()Landroid/app/RemoteAction;

    .line 53
    move-result-object v4

    .line 56
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 57
    iget-object v6, v5, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->mPipParamsChangedListeners:Ljava/util/List;

    .line 59
    check-cast v6, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v6

    .line 66
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v9

    .line 70
    if-eqz v9, :cond_0

    .line 71
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v9

    .line 76
    check-cast v9, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;

    .line 77
    invoke-interface {v9, v3, v4}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder$PipParamsChangedCallback;->onActionsChanged(Ljava/util/List;Landroid/app/RemoteAction;)V

    .line 79
    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 83
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getTitle()Ljava/lang/CharSequence;

    .line 85
    move-result-object v3

    .line 88
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->notifyTitleChanged(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 92
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->getSubtitle()Ljava/lang/CharSequence;

    .line 94
    move-result-object v3

    .line 97
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;->notifySubtitleChanged(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipUiEventLoggerLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 103
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/pip/PipUiEventLogger;->setTaskInfo(Landroid/app/TaskInfo;)V

    .line 105
    invoke-static {}, Lcom/miui/analytics/MiuiPIPTrackStub;->getInstance()Lcom/miui/analytics/MiuiPIPTrackStub;

    .line 108
    move-result-object v3

    .line 111
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    const-string v6, "action_enter_pip"

    .line 114
    iget-object v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mContext:Landroid/content/Context;

    .line 116
    const/4 v10, 0x0

    .line 118
    invoke-virtual {v3, v6, v9, v5, v10}, Lcom/miui/analytics/MiuiPIPTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V

    .line 119
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 122
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 124
    iget v5, v5, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 126
    if-eq v3, v5, :cond_2

    .line 128
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mOnDisplayIdChangeCallback:Ljava/util/function/IntConsumer;

    .line 130
    if-eqz v5, :cond_2

    .line 132
    invoke-interface {v5, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 134
    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 137
    const/4 v5, 0x0

    .line 139
    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {v3}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    .line 142
    move-result v3

    .line 145
    if-eqz v3, :cond_3

    .line 146
    move v3, v2

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    move v3, v5

    .line 150
    :goto_1
    if-eqz v3, :cond_4

    .line 151
    sget-object v3, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER_CONTENT_PIP:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 153
    goto :goto_2

    .line 155
    :cond_4
    iget-boolean v3, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 156
    if-eqz v3, :cond_5

    .line 158
    sget-object v3, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_AUTO_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 160
    goto :goto_2

    .line 162
    :cond_5
    sget-object v3, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_ENTER:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 163
    :goto_2
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 165
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 168
    if-eqz v3, :cond_6

    .line 170
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 172
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 174
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 179
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 183
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 184
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 186
    move-result-object v3

    .line 189
    const v4, 0x1352233f

    .line 190
    const-string v9, "onTaskAppeared: %s, state=%s"

    .line 193
    invoke-static {v6, v4, v5, v9, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 195
    :cond_6
    iget-boolean v3, v8, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 198
    const-string v4, "PipTaskOrganizer"

    .line 200
    if-eqz v3, :cond_9

    .line 202
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 204
    if-nez v1, :cond_7

    .line 206
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onEndOfSwipePipToHomeTransition()V

    .line 208
    goto :goto_3

    .line 211
    :cond_7
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 212
    if-eqz v0, :cond_8

    .line 214
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 216
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 218
    move-result-object v1

    .line 221
    const v2, -0x39ccb0c3

    .line 222
    const-string v3, "%s: Defer onTaskAppeared-SwipePipToHome until end of fixed rotation."

    .line 225
    invoke-static {v0, v2, v5, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_8
    :goto_3
    return-void

    .line 230
    :cond_9
    instance-of v3, v0, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    .line 231
    if-eqz v3, :cond_a

    .line 233
    move v9, v2

    .line 235
    goto :goto_4

    .line 236
    :cond_a
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 237
    iget v9, v6, Lcom/android/wm/shell/pip/PipAnimationController;->mOneShotAnimationType:I

    .line 239
    if-ne v9, v2, :cond_c

    .line 241
    iput v5, v6, Lcom/android/wm/shell/pip/PipAnimationController;->mOneShotAnimationType:I

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 245
    move-result-wide v11

    .line 248
    iget-wide v13, v6, Lcom/android/wm/shell/pip/PipAnimationController;->mLastOneShotAlphaAnimationTime:J

    .line 249
    sub-long/2addr v11, v13

    .line 251
    const-wide/16 v13, 0x320

    .line 252
    cmp-long v6, v11, v13

    .line 254
    if-lez v6, :cond_c

    .line 256
    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 258
    if-eqz v6, :cond_b

    .line 260
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 262
    const-string v9, "Alpha animation is expired. Use bounds animation."

    .line 264
    const v11, 0x31fadce2

    .line 266
    invoke-static {v6, v11, v5, v9, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_b
    move v9, v5

    .line 272
    :cond_c
    :goto_4
    sget-boolean v6, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 273
    if-eqz v6, :cond_d

    .line 275
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 277
    check-cast v0, Lcom/android/wm/shell/pip/PipTransition;

    .line 279
    iput v9, v0, Lcom/android/wm/shell/pip/PipTransition;->mEnterAnimationType:I

    .line 281
    return-void

    .line 283
    :cond_d
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 284
    const/4 v10, 0x3

    .line 286
    if-eqz v6, :cond_11

    .line 287
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 289
    if-eqz v1, :cond_e

    .line 291
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 293
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 295
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    move-result-object v1

    .line 300
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    move-result-object v3

    .line 304
    int-to-long v11, v9

    .line 305
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 306
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 308
    move-result-object v11

    .line 311
    filled-new-array {v1, v3, v11}, [Ljava/lang/Object;

    .line 312
    move-result-object v1

    .line 315
    const-string v3, "onTaskAppearedWithFixedRotation: %s, state=%s animationType=%d"

    .line 316
    const v11, -0x3af913b3

    .line 318
    const/16 v12, 0x10

    .line 321
    invoke-static {v6, v11, v12, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_e
    if-ne v9, v2, :cond_10

    .line 326
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 328
    if-eqz v1, :cond_f

    .line 330
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 332
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 334
    move-result-object v2

    .line 337
    const v3, 0x2da72131    # 1.9000442E-11f

    .line 338
    const-string v4, "%s: Defer entering PiP alpha animation, fixed rotation is ongoing"

    .line 341
    invoke-static {v1, v3, v5, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 343
    :cond_f
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 346
    check-cast v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 348
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 350
    move-result-object v1

    .line 353
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 354
    const/4 v3, 0x0

    .line 356
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 357
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 360
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 362
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 365
    goto :goto_5

    .line 368
    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 369
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 371
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 373
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 375
    move-result-object v1

    .line 378
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 379
    invoke-static {v2, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 381
    move-result-object v3

    .line 384
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 385
    move-result-object v2

    .line 388
    const/4 v4, 0x2

    .line 389
    iget v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 390
    const/4 v6, 0x0

    .line 392
    move-object v0, p0

    .line 393
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 394
    invoke-virtual {v8, v10}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 397
    :goto_5
    return-void

    .line 400
    :cond_11
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 401
    if-eqz v3, :cond_12

    .line 403
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 405
    invoke-interface {v4, v5}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 407
    :cond_12
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 410
    move-result-object v5

    .line 413
    const-string v6, "Missing destination bounds"

    .line 414
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 419
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 421
    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 423
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 425
    move-result-object v6

    .line 428
    if-nez v9, :cond_14

    .line 429
    if-nez v3, :cond_13

    .line 431
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 433
    invoke-interface {v4, v2}, Lcom/android/wm/shell/pip/PipMenuController;->attach(Landroid/view/SurfaceControl;)V

    .line 435
    :cond_13
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 438
    invoke-static {v1, v6}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 440
    move-result-object v4

    .line 443
    const/4 v3, 0x0

    .line 444
    const/4 v7, 0x2

    .line 445
    iget v9, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 446
    const/4 v11, 0x0

    .line 448
    move-object v0, p0

    .line 449
    move-object v1, v6

    .line 450
    move-object v2, v5

    .line 451
    move v5, v7

    .line 452
    move v6, v9

    .line 453
    move-object v7, v11

    .line 454
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;)V

    .line 455
    invoke-virtual {v8, v10}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 458
    goto :goto_6

    .line 461
    :cond_14
    if-ne v9, v2, :cond_15

    .line 462
    iget v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mEnterAnimationDuration:I

    .line 464
    int-to-long v1, v1

    .line 466
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->enterPipWithAlphaAnimation(Landroid/graphics/Rect;J)V

    .line 467
    :goto_6
    return-void

    .line 470
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    .line 471
    const-string v1, "Unrecognized animation type: "

    .line 473
    invoke-static {v1, v9}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 475
    move-result-object v1

    .line 478
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 479
    throw v0
    .line 482
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 2
    const-string v1, "onTaskInfoChanged requires valid existing mToken"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 9
    iget v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 11
    const/4 v2, 0x4

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    const/4 v3, 0x5

    .line 16
    if-eq v1, v3, :cond_1

    .line 17
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    int-to-long v0, v1

    .line 23
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, "PipTaskOrganizer"

    .line 30
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    const v1, -0x710972e1

    .line 36
    const-string v4, "%s: Defer onTaskInfoChange in current state: %d"

    .line 39
    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    return-void

    .line 46
    :cond_1
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 47
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 49
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setLastPipComponentName(Landroid/content/ComponentName;)V

    .line 51
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 54
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;

    .line 58
    move-result-object v1

    .line 61
    iget-object v3, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 62
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->getOverrideMinSize()Landroid/util/Size;

    .line 64
    move-result-object v4

    .line 67
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v4

    .line 71
    xor-int/lit8 v4, v4, 0x1

    .line 72
    iput-object v1, v3, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 74
    if-eqz v4, :cond_2

    .line 76
    iget-object v1, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mOnMinimalSizeChangeCallback:Ljava/lang/Runnable;

    .line 78
    if-eqz v1, :cond_2

    .line 80
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 82
    :cond_2
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 85
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 87
    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 91
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 103
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 112
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 113
    filled-new-array {v1, v0, v2, v3}, [Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 118
    const v1, -0x68544146

    .line 119
    const/4 v2, 0x0

    .line 122
    const-string v3, "onTaskInfoChanged: %s, state=%s oldParams=%s newParams=%s"

    .line 123
    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_3
    if-eqz p1, :cond_5

    .line 128
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 130
    if-nez v0, :cond_4

    .line 132
    goto :goto_0

    .line 134
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->applyNewPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 135
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 138
    :cond_5
    :goto_0
    return-void
    .line 140
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 20
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 21
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    const v3, -0x59d3f3db

    .line 27
    const-string v5, "onTaskVanished: %s, state=%s"

    .line 30
    invoke-static {v4, v3, v2, v5, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    iget v0, v1, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 35
    if-nez v0, :cond_1

    .line 37
    return-void

    .line 39
    :cond_1
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 40
    if-eqz v1, :cond_2

    .line 42
    const/4 v3, 0x5

    .line 44
    if-ne v0, v3, :cond_2

    .line 45
    return-void

    .line 47
    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 48
    const-string v3, "Requires valid WindowContainerToken"

    .line 50
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 55
    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 59
    invoke-virtual {v4}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    .line 61
    move-result-object v4

    .line 64
    if-eq v3, v4, :cond_4

    .line 65
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 67
    if-eqz p0, :cond_3

    .line 69
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 75
    const-string v0, "PipTaskOrganizer"

    .line 77
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    const v0, -0x4ece55e1

    .line 83
    const-string v1, "%s: Unrecognized token: %s"

    .line 86
    invoke-static {p1, v0, v2, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_3
    return-void

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 92
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 94
    const/4 v4, 0x0

    .line 96
    if-eqz v3, :cond_6

    .line 97
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    .line 99
    move-result-object v5

    .line 102
    if-eqz v5, :cond_5

    .line 103
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getContentOverlayLeash()Landroid/view/SurfaceControl;

    .line 105
    move-result-object v5

    .line 108
    new-instance v6, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;

    .line 109
    invoke-direct {v6, v2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {p0, v5, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 114
    :cond_5
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 117
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 120
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 123
    iput-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 126
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    .line 128
    if-eqz v1, :cond_8

    .line 131
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 133
    check-cast p0, Lcom/android/wm/shell/pip/PipTransition;

    .line 135
    iput-object v4, p0, Lcom/android/wm/shell/pip/PipTransition;->mCurrentPipTaskToken:Landroid/window/WindowContainerToken;

    .line 137
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 139
    if-nez p1, :cond_7

    .line 141
    goto :goto_0

    .line 143
    :cond_7
    invoke-interface {p1, v4, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 144
    iput-object v4, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 147
    iput-object v4, p0, Lcom/android/wm/shell/pip/PipTransition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 149
    :cond_8
    :goto_0
    return-void
    .line 151
.end method

.method public final prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 20
    invoke-virtual {p4, v0, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p2}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {p4, p1, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 37
    invoke-virtual {p4, p1, v1}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 39
    const/4 p1, 0x0

    .line 42
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 43
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 45
    move-result v1

    .line 48
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 49
    invoke-virtual {v2, p3, v0, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 51
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 54
    invoke-virtual {p4, v0, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 56
    const/4 p1, 0x4

    .line 59
    if-eq p2, p1, :cond_3

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 62
    invoke-virtual {p4, p0, p3}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 64
    :cond_3
    return-void

    .line 67
    :cond_4
    :goto_1
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 68
    if-eqz p1, :cond_5

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 77
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 78
    const-string p2, "PipTaskOrganizer"

    .line 80
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 85
    const p2, 0x474a58d

    .line 86
    const-string p3, "%s: Invalid leash on prepareFinishResizeTransaction: %s"

    .line 89
    invoke-static {p1, p2, v1, p3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_5
    return-void
    .line 94
.end method

.method public final removeContentOverlay(Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 2
    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 18
    check-cast p0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 26
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 29
    if-eqz p2, :cond_2

    .line 32
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 34
    :cond_2
    return-void

    .line 37
    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 38
    if-eqz p0, :cond_4

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 46
    const-string p2, "PipTaskOrganizer"

    .line 48
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 53
    const p2, 0x536f9a83

    .line 54
    const/4 v0, 0x0

    .line 57
    const-string v1, "%s: trying to remove invalid content overlay (%s)"

    .line 58
    invoke-static {p1, p2, v0, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_4
    return-void
    .line 63
.end method

.method public final removePip()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 10
    if-eqz v1, :cond_2

    .line 12
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-nez v4, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 19
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 23
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v5

    .line 28
    const/high16 v6, 0x3f800000    # 1.0f

    .line 29
    const/4 v7, 0x0

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/pip/PipAnimationController;->getAnimator(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 32
    move-result-object v1

    .line 35
    const/4 v2, 0x5

    .line 36
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setTransitionDirection(I)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 37
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipTaskOrganizer$3;

    .line 41
    iput-object v3, v1, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 43
    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTaskOrganizer$1;

    .line 45
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setPipAnimationCallback(Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 47
    move-result-object v1

    .line 50
    iget v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mExitAnimationDuration:I

    .line 51
    int-to-long v3, v3

    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    sget-object v3, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 57
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 62
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 65
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 68
    if-eqz v1, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 72
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 84
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 86
    move-result-object p0

    .line 89
    const v0, -0x51d2eb3c

    .line 90
    const/4 v2, 0x0

    .line 93
    const-string v3, "removePip: %s, state=%s"

    .line 94
    invoke-static {v1, v0, v2, v3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_1
    return-void

    .line 99
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 100
    if-eqz v1, :cond_3

    .line 102
    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 104
    int-to-long v0, v0

    .line 106
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 107
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 112
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 113
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    move-result-object v0

    .line 124
    const-string v1, "PipTaskOrganizer"

    .line 125
    filled-new-array {v1, v0, v2, p0}, [Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 130
    const/4 v0, 0x4

    .line 131
    const-string v1, "%s: Not allowed to removePip in current state mState=%d mToken=%s mLeash=%s"

    .line 132
    const v2, 0x23d8ec73

    .line 134
    invoke-static {v3, v2, v0, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->wtf(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_3
    return-void
    .line 140
.end method

.method public final reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->findTaskSurface(I)Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6
    return-void
    .line 9
.end method

.method public final scheduleAnimateResizePip(Landroid/graphics/Rect;II)V
    .locals 8

    const/4 v7, 0x0

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string p1, "PipTaskOrganizer"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, -0xf8154b7

    const/4 p3, 0x0

    const-string v0, "%s: skip scheduleAnimateResizePip, entering pip deferred"

    invoke-static {p0, p2, p3, v0, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;)V

    return-void
.end method

.method public final scheduleAnimateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;IILcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p3

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->animateResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIF)Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz p7, :cond_1

    .line 6
    invoke-virtual {p7, p2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 2
    iget v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 4
    const/4 v2, 0x3

    .line 6
    if-lt v1, v2, :cond_1

    .line 7
    const/4 v2, 0x5

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    if-eqz v1, :cond_2

    .line 16
    return-void

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 19
    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 23
    move-result v1

    .line 26
    if-nez v1, :cond_3

    .line 27
    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 30
    move-result-object v0

    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-virtual {p0, p2, v1, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResize(IILandroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    .line 35
    if-eqz p3, :cond_4

    .line 38
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    :cond_4
    return-void

    .line 43
    :cond_5
    :goto_2
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 44
    if-eqz p0, :cond_6

    .line 46
    iget p0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    .line 48
    int-to-long p0, p0

    .line 50
    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 51
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object p0

    .line 56
    const-string p1, "PipTaskOrganizer"

    .line 57
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    const/4 p1, 0x4

    .line 63
    const-string p3, "%s: scheduleFinishResizePip with null leash! mState=%d"

    .line 64
    const v0, 0x69cc3d7b    # 3.08639E25f

    .line 66
    invoke-static {p2, v0, p1, p3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_6
    return-void
    .line 72
.end method

.method public final scheduleUserResizePip(Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "PipTaskOrganizer"

    .line 5
    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 27
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 31
    move-result-object v0

    .line 34
    iget-object v7, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 35
    iget-object v6, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 37
    move-object v1, v7

    .line 39
    move v2, p3

    .line 40
    move-object v3, p1

    .line 41
    move-object v4, p2

    .line 42
    move-object v5, v0

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 44
    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 47
    invoke-virtual {v7, p1, p2, v0, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldSyncPipTransactionWithMenu()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 58
    const/high16 p3, -0x40800000    # -1.0f

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 62
    invoke-interface {p0, p1, v0, p2, p3}, Lcom/android/wm/shell/pip/PipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 68
    :goto_0
    if-eqz p4, :cond_3

    .line 71
    invoke-virtual {p4, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 73
    :cond_3
    return-void

    .line 76
    :cond_4
    :goto_1
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 77
    if-eqz p0, :cond_5

    .line 79
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 81
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 86
    const p2, -0x1883a90d

    .line 87
    const-string p3, "%s: Attempted to user resize PIP to or from empty bounds, aborting."

    .line 90
    invoke-static {p0, p2, v1, p3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_5
    return-void

    .line 95
    :cond_6
    :goto_2
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 96
    if-eqz p0, :cond_7

    .line 98
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 100
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 105
    const p2, 0x4f6bbbbc    # 3.95494912E9f

    .line 106
    const-string p3, "%s: Abort animation, invalid leash"

    .line 109
    invoke-static {p0, p2, v1, p3, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_7
    return-void
    .line 114
.end method

.method public sendOnPipTransitionFinished(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 5
    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionFinished(I)V

    .line 13
    return-void
    .line 16
.end method

.method public final setPipVisibility(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 19
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 28
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 29
    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    const v2, 0xcf7b0ff

    .line 35
    const-string/jumbo v3, "setPipVisibility: %s, state=%s visible=%s"

    .line 38
    invoke-static {v4, v2, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 51
    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    goto :goto_2

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 62
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;

    .line 64
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$VsyncSurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 66
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 70
    if-eqz p1, :cond_4

    .line 72
    const/high16 p1, 0x3f800000    # 1.0f

    .line 74
    goto :goto_1

    .line 76
    :cond_4
    const/4 p1, 0x0

    .line 77
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 83
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 86
    return-void

    .line 89
    :cond_5
    :goto_2
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 90
    if-eqz p1, :cond_6

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    .line 94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 100
    const-string v0, "PipTaskOrganizer"

    .line 102
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 107
    const v0, -0x45fa9aea

    .line 108
    const-string v2, "%s: Invalid leash on setPipVisibility: %s"

    .line 111
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_6
    return-void
    .line 116
.end method

.method public setSurfaceControlTransactionFactory(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 2
    return-void
    .line 4
.end method

.method public shouldSyncPipTransactionWithMenu()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/pip/PipMenuController;

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/pip/PipMenuController;->isMenuVisible()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final supportCompatUI()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "PipTaskOrganizer:"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x4

    .line 9
    invoke-static {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method

.method public final updateAnimatorBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    .line 4
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    iget-boolean v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    .line 20
    if-eqz v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 24
    invoke-virtual {v1}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 26
    move-result-object v1

    .line 29
    new-instance v2, Landroid/graphics/Rect;

    .line 30
    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 32
    iget v3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mNextRotation:I

    .line 35
    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mCurrentRotation:I

    .line 37
    invoke-static {v2, v1, v3, p0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 39
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->updateEndValue(Ljava/lang/Object;)V

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->setDestinationBounds(Landroid/graphics/Rect;)V

    .line 49
    :cond_2
    return-void
    .line 52
.end method
