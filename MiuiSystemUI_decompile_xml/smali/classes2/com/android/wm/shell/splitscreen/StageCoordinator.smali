.class public Lcom/android/wm/shell/splitscreen/StageCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayId:I

.field public final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

.field public mDividerVisible:Z

.field public mExitSplitScreenOnHide:Z

.field public mIsDividerRemoteAnimating:Z

.field public mIsDropEntering:Z

.field public mIsExiting:Z

.field public mIsRootTranslucent:Z

.field public mKeyguardShowing:Z

.field public final mListeners:Ljava/util/List;

.field public final mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

.field public final mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public mPairTime:J

.field public final mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

.field public final mPausingTasks:Ljava/util/ArrayList;

.field public final mRecentTasks:Ljava/util/Optional;

.field mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mRootTaskLeash:Landroid/view/SurfaceControl;

.field public mShouldUpdateRecents:Z

.field public mShowDecorImmediately:Z

.field public final mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

.field public final mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

.field public mSideStagePosition:I

.field public mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

.field public mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

.field public final mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

.field public final mSplitUnsupportedToast:Landroid/widget/Toast;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public static -$$Nest$monRemoteAnimationFinishedOrCancelled(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 3
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 28
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 30
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 33
    const/4 v1, 0x4

    .line 35
    invoke-direct {p1, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 39
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    .line 43
    const/4 v0, 0x3

    .line 45
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 46
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 49
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 51
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 56
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 58
    :goto_1
    return-void
    .line 61
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/MainStage;Lcom/android/wm/shell/splitscreen/SideStage;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    .line 35
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 36
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    .line 43
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 45
    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 46
    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 47
    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 48
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 49
    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 50
    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 51
    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 52
    iput-object p12, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 53
    iput-object p10, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 54
    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance p3, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {p2, p12, p11, p3, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 55
    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {p2}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 56
    iput-object p13, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 57
    iput-object p14, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 58
    invoke-virtual {p7, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 59
    invoke-virtual {p11, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    const p2, 0x7f1303a2    # @string/dock_non_resizeble_failed_to_dock_text 'App does not support split screen'

    .line 60
    invoke-static {p1, p2, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v13, Landroid/view/SurfaceSession;

    invoke-direct {v13}, Landroid/view/SurfaceSession;-><init>()V

    .line 3
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 4
    new-instance v14, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    invoke-direct {v14, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    const/4 v15, 0x1

    .line 5
    iput v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 10
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    .line 11
    iput-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 12
    iput v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    move-object/from16 v6, p2

    .line 13
    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 14
    iput-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 15
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    invoke-direct {v1}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    move-object/from16 v1, p10

    .line 16
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v1, p11

    .line 17
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 18
    invoke-virtual {v9, v7, v15, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    .line 19
    new-instance v5, Lcom/android/wm/shell/splitscreen/MainStage;

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object v15, v5

    move-object/from16 v5, p2

    move-object v6, v13

    move v9, v7

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/MainStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 20
    new-instance v15, Lcom/android/wm/shell/splitscreen/SideStage;

    move-object v1, v15

    move-object v4, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SideStage;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    iput-object v15, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 21
    iput-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object/from16 v1, p5

    .line 22
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object/from16 v1, p6

    .line 23
    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 24
    iput-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 25
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 26
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 27
    invoke-virtual/range {p3 .. p3}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;

    invoke-direct {v4, v9, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-direct {v3, v8, v4}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 28
    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    invoke-direct {v1, v12, v11, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 29
    invoke-virtual {v10, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 30
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    const v1, 0x7f1303a2    # @string/dock_non_resizeble_failed_to_dock_text 'App does not support split screen'

    .line 31
    invoke-static {v8, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 32
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    return-void
.end method

.method public static addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 6
    const-string v0, "android.activity.launchRootTaskToken"

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    :cond_0
    const-string p1, "android.pendingIntent.backgroundActivityAllowed"

    .line 13
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    const-string p1, "android.pendingIntent.backgroundActivityAllowedByPermission"

    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    return-void
    .line 24
.end method


# virtual methods
.method public final addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    new-instance v1, Landroid/window/TransitionInfo$Change;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, v2, v0}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 23
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 34
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 40
    if-eqz p2, :cond_1

    .line 43
    const/4 p0, 0x3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x4

    .line 47
    :goto_0
    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 48
    const/high16 p0, 0x400000

    .line 51
    invoke-virtual {v1, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 53
    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 56
    return-void

    .line 59
    :cond_2
    :goto_1
    const-string p0, "StageCoordinator"

    .line 60
    const-string p1, "addDividerBarToTransition but leash was released or not be created"

    .line 62
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
    .line 67
.end method

.method public final applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 12
    if-eqz p0, :cond_0

    .line 14
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 16
    const p1, -0xb385b71

    .line 18
    const-string v0, "   Skip animating divider bar due to divider leash not ready."

    .line 21
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-void

    .line 26
    :cond_1
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 27
    if-eqz v3, :cond_3

    .line 29
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 31
    if-eqz p0, :cond_2

    .line 33
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 35
    const p1, -0x42a56eb2

    .line 37
    const-string v0, "   Skip animating divider bar due to it\'s remote animating."

    .line 40
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_2
    return-void

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 46
    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 56
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 61
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 63
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->getRefDividerBounds(Landroid/graphics/Rect;)V

    .line 65
    if-eqz p1, :cond_5

    .line 68
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 70
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 72
    const p0, 0x7fffffff

    .line 75
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 78
    iget p0, v2, Landroid/graphics/Rect;->left:I

    .line 81
    int-to-float p0, p0

    .line 83
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 84
    int-to-float v1, v1

    .line 86
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 87
    goto :goto_0

    .line 90
    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 93
    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 97
    move-result-object p1

    .line 100
    const/4 v1, 0x2

    .line 101
    new-array v1, v1, [F

    .line 102
    fill-array-data v1, :array_0

    .line 104
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 107
    move-result-object v1

    .line 110
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 111
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;

    .line 113
    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 121
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;

    .line 123
    invoke-direct {v2, p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$7;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 125
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 131
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 133
    goto :goto_0

    .line 136
    :cond_6
    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 137
    move-result-object p0

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 141
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 144
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 147
    :goto_0
    return-void

    .line 150
    nop

    .line 151
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 152
.end method

.method public final applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 10
    iget-boolean v5, v4, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 12
    if-eqz v5, :cond_8

    .line 14
    iget-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 16
    if-eqz v5, :cond_0

    .line 18
    goto/16 :goto_5

    .line 20
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSplitScreenExit()V

    .line 22
    new-instance v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;

    .line 25
    invoke-direct {v5, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 27
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 30
    invoke-virtual {v6, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 32
    const/4 v5, 0x0

    .line 35
    iput-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 36
    iput-boolean v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 38
    const/4 v6, 0x0

    .line 40
    iput-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 41
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 43
    iget-object v7, v7, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    .line 45
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 49
    const/4 v7, 0x1

    .line 52
    iget-object v9, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 53
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    .line 57
    move-result v10

    .line 60
    const/4 v11, -0x1

    .line 61
    if-ne v10, v11, :cond_1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    iput-boolean v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 65
    iget-object v8, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 67
    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 69
    invoke-virtual {v2, v8, v6}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 71
    iget-object v8, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 74
    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 76
    invoke-virtual {v2, v8, v6}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 78
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 81
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 83
    invoke-virtual {v2, v6, v5}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 85
    iget-object v6, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 90
    invoke-virtual {v2, v6, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 92
    goto :goto_2

    .line 95
    :cond_2
    :goto_0
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 96
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topChildTaskId:I

    .line 98
    iget-object v10, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 100
    iget v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 102
    if-ne v6, v10, :cond_3

    .line 104
    invoke-virtual {v4, v2, v5}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    .line 106
    invoke-virtual {v9, v2, v5}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    .line 109
    goto :goto_1

    .line 112
    :cond_3
    invoke-virtual {v9, v2, v5}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    .line 113
    invoke-virtual {v4, v2, v5}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    .line 116
    :goto_1
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 119
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 121
    invoke-virtual {v2, v6, v5}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 123
    invoke-virtual {v0, v2, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 126
    iget-object v6, v9, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 129
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 131
    invoke-virtual {v2, v6, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    .line 136
    :goto_2
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 141
    invoke-virtual {v2, v6, v5}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 143
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 146
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 148
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    .line 151
    invoke-direct {v2, v0, v1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 153
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    const-string v6, "applyExitSplitScreen, reason = "

    .line 161
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    .line 166
    move-result-object v6

    .line 169
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 176
    const-string v6, "StageCoordinator"

    .line 177
    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v2, 0x5

    .line 182
    if-ne v3, v2, :cond_5

    .line 183
    invoke-static {}, Lcom/miui/analytics/MiuiAppPairsTrackStub;->getInstance()Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 185
    move-result-object v10

    .line 188
    const-string v11, "action_exit_apppairs"

    .line 189
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 191
    const/4 v13, 0x0

    .line 193
    iget-object v14, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 194
    iget-object v15, v9, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 196
    iget-wide v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 198
    const-wide/16 v5, 0x0

    .line 200
    cmp-long v8, v8, v5

    .line 202
    if-eqz v8, :cond_4

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 206
    move-result-wide v8

    .line 209
    iget-wide v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 210
    sub-long/2addr v8, v2

    .line 212
    long-to-float v2, v8

    .line 213
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 214
    div-float/2addr v2, v3

    .line 216
    goto :goto_3

    .line 217
    :cond_4
    const/4 v2, 0x0

    .line 218
    :goto_3
    move/from16 v16, v2

    .line 219
    invoke-virtual/range {v10 .. v16}, Lcom/miui/analytics/MiuiAppPairsTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;F)V

    .line 221
    iput-wide v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 224
    :cond_5
    if-eqz v1, :cond_7

    .line 226
    if-ne v1, v4, :cond_6

    .line 228
    move/from16 v1, p3

    .line 230
    move v5, v7

    .line 232
    goto :goto_4

    .line 233
    :cond_6
    move/from16 v1, p3

    .line 234
    const/4 v5, 0x0

    .line 236
    :goto_4
    invoke-virtual {v0, v1, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    .line 237
    goto :goto_5

    .line 240
    :cond_7
    move/from16 v1, p3

    .line 241
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 243
    const/4 v3, -0x1

    .line 245
    const/4 v4, 0x0

    .line 246
    const/4 v5, -0x1

    .line 247
    const/4 v6, 0x0

    .line 248
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 249
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 251
    move-result v7

    .line 254
    move-object v0, v2

    .line 255
    move/from16 v1, p3

    .line 256
    move v2, v3

    .line 258
    move v3, v4

    .line 259
    move v4, v5

    .line 260
    move v5, v6

    .line 261
    move v6, v7

    .line 262
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    .line 263
    :cond_8
    :goto_5
    return-void
    .line 266
.end method

.method public final clearRequestIfPresented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 12
    iget-boolean v1, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 21
    :cond_0
    return-void
    .line 23
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    const-string v2, "StageCoordinator mDisplayId="

    .line 12
    invoke-static {p2, v2}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p2

    .line 17
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 18
    const-string v3, "mDividerVisible="

    .line 20
    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p2

    .line 25
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 26
    const-string v3, "isSplitActive="

    .line 28
    invoke-static {p2, v2, p1, v1, v3}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object p2

    .line 33
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 34
    move-result v2

    .line 37
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, "isSplitVisible="

    .line 56
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 61
    move-result v2

    .line 64
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "MainStage"

    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v2, "stagePosition="

    .line 103
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 109
    move-result v3

    .line 112
    invoke-static {v3}, Lcom/android/wm/shell/common/split/SplitScreenConstants;->splitPositionToString(I)Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 116
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p2

    .line 123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, "isActive="

    .line 135
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 140
    iget-boolean v4, v3, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 142
    invoke-static {p2, v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 144
    invoke-virtual {v3, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v4, "MainStageListener"

    .line 158
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 170
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v4, "SideStage"

    .line 183
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 206
    invoke-static {v2}, Lcom/android/wm/shell/common/split/SplitScreenConstants;->splitPositionToString(I)Ljava/lang/String;

    .line 208
    move-result-object v2

    .line 211
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 222
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v2, "SideStageListener"

    .line 235
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p2

    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 247
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 249
    iget-boolean p2, v3, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 252
    if-eqz p2, :cond_0

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    .line 256
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "SplitLayout"

    .line 264
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p2

    .line 272
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 276
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 283
    move-result p2

    .line 286
    if-nez p2, :cond_1

    .line 287
    new-instance p2, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, "mPausingTasks="

    .line 297
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object p0

    .line 308
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    :cond_1
    return-void
    .line 312
.end method

.method public final exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 9
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    .line 14
    return-void
    .line 17
.end method

.method public final finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 7
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 9
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 22
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 24
    iget-object v3, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 28
    move-result-object v5

    .line 31
    invoke-virtual {v2, v4, v3, v5}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 32
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 36
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 39
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 41
    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 45
    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 47
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 50
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 53
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 56
    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 61
    iput-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 64
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 67
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    .line 69
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 72
    iget-object p1, v5, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 74
    if-eqz p1, :cond_0

    .line 76
    goto :goto_0

    .line 78
    :cond_0
    move v2, v4

    .line 79
    :goto_0
    if-nez v2, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    .line 84
    move-result v6

    .line 87
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 88
    move-result v7

    .line 91
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 92
    move-result v8

    .line 95
    iget v9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 96
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 98
    move-result v10

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 102
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 104
    move-result v11

    .line 107
    invoke-virtual/range {v5 .. v11}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logEnter(FIIIIZ)V

    .line 108
    :cond_1
    return-void
    .line 111
.end method

.method public final getActivateSplitPosition(Landroid/app/TaskInfo;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId:I

    .line 10
    if-eqz v2, :cond_1

    .line 12
    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivateTaskId2:I

    .line 14
    iget v4, p1, Landroid/app/TaskInfo;->taskId:I

    .line 16
    if-ne v3, v4, :cond_1

    .line 18
    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 20
    return p0

    .line 22
    :cond_1
    iget v3, p1, Landroid/app/TaskInfo;->taskId:I

    .line 23
    if-ne v2, v3, :cond_2

    .line 25
    iget p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 27
    return p0

    .line 29
    :cond_2
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent:Landroid/content/Intent;

    .line 30
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    iget-object p1, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 36
    invoke-static {p1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 50
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 52
    return p0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 55
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mStartIntent2:Landroid/content/Intent;

    .line 57
    invoke-static {v0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 71
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;->mActivatePosition:I

    .line 73
    return p0

    .line 75
    :cond_4
    :goto_0
    return v1
    .line 76
.end method

.method public final getDividerBarLegacyTarget()Landroid/view/RemoteAnimationTarget;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v12, Landroid/graphics/Rect;

    .line 9
    iget-object v1, v1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    .line 11
    invoke-direct {v12, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13
    new-instance v1, Landroid/view/RemoteAnimationTarget;

    .line 16
    move-object v2, v1

    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, -0x1

    .line 20
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 23
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const v9, 0x7fffffff

    .line 30
    new-instance v0, Landroid/graphics/Point;

    .line 33
    move-object v10, v0

    .line 35
    const/4 v11, 0x0

    .line 36
    invoke-direct {v0, v11, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 37
    new-instance v0, Landroid/app/WindowConfiguration;

    .line 40
    move-object v13, v0

    .line 42
    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    .line 43
    const/4 v14, 0x1

    .line 46
    const/4 v15, 0x0

    .line 47
    const/16 v16, 0x0

    .line 48
    const/16 v17, 0x0

    .line 50
    const/16 v18, 0x0

    .line 52
    const/16 v19, 0x7f2

    .line 54
    move-object v11, v12

    .line 56
    invoke-direct/range {v2 .. v19}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 57
    return-object v1
    .line 60
.end method

.method public final getMainStageBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
    .line 19
.end method

.method public final getMainStagePosition()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getSideStageBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds1()Landroid/graphics/Rect;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->getBounds2()Landroid/graphics/Rect;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
    .line 19
.end method

.method public final getSplitItemPosition(Landroid/window/WindowContainerToken;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    .line 11
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 23
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    .line 33
    invoke-direct {v2, v3, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 38
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 44
    return p0

    .line 46
    :cond_2
    return v0
    .line 47
.end method

.method public getSplitTransitions()Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 8
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    if-ne v2, v1, :cond_0

    .line 12
    return-object v0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 21
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 23
    if-ne p1, v0, :cond_1

    .line 25
    return-object p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
    .line 29
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v2, :cond_2

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 24
    move-result v2

    .line 27
    const/4 v3, 0x6

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartRotation()I

    .line 33
    move-result v2

    .line 36
    invoke-virtual {v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndRotation()I

    .line 37
    move-result v1

    .line 40
    if-eq v2, v1, :cond_0

    .line 41
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 43
    iput-boolean v4, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 45
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 47
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 49
    return-object v0

    .line 52
    :cond_1
    return-object v3

    .line 53
    :cond_2
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 54
    iget v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 56
    if-eq v5, v6, :cond_3

    .line 58
    return-object v3

    .line 60
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getType()I

    .line 61
    move-result v5

    .line 64
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 65
    move-result v6

    .line 68
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 69
    move-result v7

    .line 72
    if-ne v7, v4, :cond_4

    .line 73
    move v7, v4

    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/4 v7, 0x0

    .line 77
    :goto_0
    if-eqz v6, :cond_5

    .line 78
    if-eqz v7, :cond_5

    .line 80
    new-instance v9, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;

    .line 82
    invoke-direct {v9, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda14;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 84
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 87
    invoke-virtual {v10, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 89
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 92
    move-result v9

    .line 95
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 96
    if-eqz v9, :cond_13

    .line 98
    sget-boolean v9, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 100
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 102
    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 104
    if-eqz v9, :cond_6

    .line 106
    iget v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 108
    int-to-long v8, v9

    .line 110
    invoke-static {v5}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    .line 111
    move-result-object v16

    .line 114
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object v15

    .line 118
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 119
    move-result v10

    .line 122
    move-object/from16 v18, v12

    .line 123
    int-to-long v11, v10

    .line 125
    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 126
    move-result v10

    .line 129
    int-to-long v3, v10

    .line 130
    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 131
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    move-result-object v8

    .line 136
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    move-result-object v9

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 141
    move-result-object v3

    .line 144
    filled-new-array {v8, v15, v9, v3}, [Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 148
    const/16 v4, 0x51

    .line 149
    const-string v8, "  split is active so using splitTransition to handle request. triggerTask=%d type=%s mainChildren=%d sideChildren=%d"

    .line 151
    const v9, 0x9da899c

    .line 153
    invoke-static {v10, v9, v4, v8, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 156
    goto :goto_1

    .line 159
    :cond_6
    move-object/from16 v18, v12

    .line 160
    :goto_1
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 162
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 164
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 167
    move-result-object v4

    .line 170
    const/4 v8, 0x2

    .line 171
    if-eqz v4, :cond_b

    .line 172
    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 174
    move-result v2

    .line 177
    if-eqz v2, :cond_8

    .line 178
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 180
    move-result v2

    .line 183
    const/4 v5, 0x1

    .line 184
    if-ne v2, v5, :cond_8

    .line 185
    if-ne v4, v13, :cond_7

    .line 187
    const/16 v17, 0x0

    .line 189
    goto :goto_2

    .line 191
    :cond_7
    move/from16 v17, v5

    .line 192
    :goto_2
    xor-int/lit8 v2, v17, 0x1

    .line 194
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 196
    move-object/from16 v5, v18

    .line 199
    invoke-virtual {v5, v1, v2, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    .line 201
    goto/16 :goto_8

    .line 204
    :cond_8
    move-object/from16 v5, v18

    .line 206
    if-eqz v6, :cond_a

    .line 208
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 212
    move-result v2

    .line 215
    if-nez v2, :cond_a

    .line 216
    if-ne v4, v13, :cond_9

    .line 218
    const/4 v4, 0x0

    .line 220
    goto :goto_3

    .line 221
    :cond_9
    const/4 v4, 0x1

    .line 222
    :goto_3
    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 223
    invoke-virtual {v5, v1, v4, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    .line 226
    goto :goto_8

    .line 229
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 230
    move-result v2

    .line 233
    if-nez v2, :cond_10

    .line 234
    if-eqz v6, :cond_10

    .line 236
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 238
    const/4 v4, 0x1

    .line 240
    xor-int/2addr v2, v4

    .line 241
    const/4 v6, -0x1

    .line 242
    const/4 v7, 0x0

    .line 243
    invoke-virtual {v0, v3, v7, v6, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 247
    move-result-object v2

    .line 250
    iget-boolean v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 251
    xor-int/2addr v4, v6

    .line 253
    const/16 v6, 0x3ec

    .line 254
    invoke-virtual {v5, v1, v2, v6, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    .line 256
    goto :goto_8

    .line 259
    :cond_b
    if-eqz v6, :cond_10

    .line 260
    if-eqz v7, :cond_10

    .line 262
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 264
    move-result v1

    .line 267
    if-eq v1, v8, :cond_f

    .line 268
    const/4 v4, 0x3

    .line 270
    if-ne v1, v4, :cond_c

    .line 271
    goto :goto_7

    .line 273
    :cond_c
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 274
    invoke-virtual {v13, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 276
    move-result v1

    .line 279
    if-eqz v1, :cond_e

    .line 280
    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 282
    move-result v1

    .line 285
    const/4 v4, 0x1

    .line 286
    if-eq v1, v4, :cond_d

    .line 287
    goto :goto_5

    .line 289
    :cond_d
    :goto_4
    const/4 v1, -0x1

    .line 290
    goto :goto_6

    .line 291
    :cond_e
    const/4 v4, 0x1

    .line 292
    :goto_5
    iget v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 293
    invoke-virtual {v14, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 295
    move-result v1

    .line 298
    if-eqz v1, :cond_10

    .line 299
    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 301
    move-result v1

    .line 304
    if-ne v1, v4, :cond_10

    .line 305
    goto :goto_4

    .line 307
    :goto_6
    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 308
    goto :goto_8

    .line 311
    :cond_f
    :goto_7
    const/4 v0, 0x0

    .line 312
    return-object v0

    .line 313
    :cond_10
    :goto_8
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    .line 314
    move-result v1

    .line 317
    if-eqz v1, :cond_12

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 320
    move-result v0

    .line 323
    if-eqz v0, :cond_11

    .line 324
    goto :goto_9

    .line 326
    :cond_11
    const/4 v3, 0x0

    .line 327
    :cond_12
    :goto_9
    return-object v3

    .line 328
    :cond_13
    move-object v5, v12

    .line 329
    if-eqz v6, :cond_14

    .line 330
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 332
    move-result-object v2

    .line 335
    if-eqz v2, :cond_14

    .line 336
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 338
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 340
    iget-boolean v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 343
    const/4 v4, 0x1

    .line 345
    xor-int/2addr v3, v4

    .line 346
    const/4 v6, -0x1

    .line 347
    const/4 v7, 0x0

    .line 348
    invoke-virtual {v0, v2, v7, v6, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    .line 352
    move-result-object v3

    .line 355
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDropEntering:Z

    .line 356
    xor-int/2addr v0, v4

    .line 358
    const/16 v4, 0x3ec

    .line 359
    invoke-virtual {v5, v1, v3, v4, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    .line 361
    move-object v3, v2

    .line 364
    goto :goto_a

    .line 365
    :cond_14
    const/4 v7, 0x0

    .line 366
    move-object v3, v7

    .line 367
    :goto_a
    return-object v3
    .line 368
.end method

.method public final isRootOrStageRoot(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 7
    if-ne v0, p1, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    if-ne v0, p1, :cond_1

    .line 21
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v2

    .line 25
    :goto_0
    if-nez v0, :cond_4

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    if-eqz p0, :cond_2

    .line 32
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 34
    if-ne p0, p1, :cond_2

    .line 36
    move p0, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p0, v2

    .line 40
    :goto_1
    if-eqz p0, :cond_3

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    move v1, v2

    .line 44
    :cond_4
    :goto_2
    return v1
    .line 45
.end method

.method public final isSplitActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final isSplitScreenVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 8
    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 10
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final launchAsFullscreenWithRemoteAnimation(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/view/RemoteAnimationAdapter;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p5, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I)V

    .line 5
    const/4 p5, 0x0

    .line 8
    invoke-static {p4, p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 9
    if-eqz p3, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p6, p1, p3, p4}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p6, p1, p2, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "StageCoordinator"

    .line 30
    const-string p2, "Pending intent and shortcut are null is invalid case."

    .line 32
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 37
    invoke-virtual {p0, v0, p6}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    .line 39
    return-void
    .line 42
.end method

.method public final logExitToStage(IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 7
    move-result v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-eqz p2, :cond_1

    .line 14
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 16
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 18
    move-result v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v4, v3

    .line 23
    :goto_1
    if-nez p2, :cond_2

    .line 24
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 26
    :cond_2
    move v5, v1

    .line 28
    if-nez p2, :cond_3

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 31
    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 33
    move-result p2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move p2, v3

    .line 38
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 39
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 41
    move-result v6

    .line 44
    move v1, p1

    .line 45
    move v3, v4

    .line 46
    move v4, v5

    .line 47
    move v5, p2

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    .line 49
    return-void
    .line 52
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 4
    if-eq p4, v0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move-object v6, p5

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 18
    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result p2

    .line 27
    const/4 p3, 0x1

    .line 28
    sub-int/2addr p2, p3

    .line 29
    :goto_0
    if-ltz p2, :cond_2

    .line 30
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p4

    .line 35
    check-cast p4, Landroid/animation/Animator;

    .line 36
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 38
    iget-object p5, p5, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 40
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda3;

    .line 45
    invoke-direct {v0, p4, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda3;-><init>(Landroid/animation/Animator;I)V

    .line 47
    check-cast p5, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 50
    invoke-virtual {p5, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 52
    add-int/lit8 p2, p2, -0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-void
    .line 58
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 5
    if-eqz p1, :cond_2

    .line 7
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 9
    iget v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDensity:I

    .line 11
    if-eq v1, v0, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 20
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 22
    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 32
    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 36
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 39
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

.method public final onDoubleTappedDivider()V
    .locals 11

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 7
    invoke-static {v1}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 16
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 18
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 21
    const/4 v2, 0x2

    .line 23
    invoke-direct {v0, v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 24
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 27
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 30
    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 34
    const-string v1, "double tap"

    .line 36
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    const v2, -0x3ec4ba35

    .line 42
    const/4 v3, 0x0

    .line 45
    const-string v4, "Switch split position: %s"

    .line 46
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 53
    move-result v6

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 57
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 59
    move-result v7

    .line 62
    iget v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 63
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 65
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 67
    move-result v9

    .line 70
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 71
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 73
    move-result v10

    .line 76
    invoke-virtual/range {v5 .. v10}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logSwap(IIIIZ)V

    .line 77
    return-void
    .line 80
.end method

.method public onFoldedStateChanged(Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 5
    iget-boolean v0, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->isTestMode()Z

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x2

    .line 20
    const/4 v2, 0x3

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 22
    if-nez v0, :cond_4

    .line 24
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 26
    move-result-object v0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->isMiuiSplitFeatureEnable(Landroid/content/Context;)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 37
    sget-boolean v0, Lcom/android/wm/shell/common/split/SplitUtilsStub;->IS_CETUS:Z

    .line 40
    if-eqz v0, :cond_3

    .line 42
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(I)V

    .line 46
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    move-object p1, v3

    .line 56
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 57
    :cond_3
    return-void

    .line 60
    :cond_4
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    .line 61
    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(I)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 66
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    const/4 v0, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;

    .line 77
    invoke-direct {v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda0;-><init>(I)V

    .line 79
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 82
    move-result v0

    .line 85
    if-eqz v0, :cond_6

    .line 86
    const/4 v0, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_6
    const/4 v0, -0x1

    .line 90
    :goto_1
    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 91
    if-eqz v1, :cond_7

    .line 93
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 95
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 100
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 103
    invoke-virtual {v1, p1, p0, v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 105
    goto :goto_3

    .line 108
    :cond_7
    if-nez v0, :cond_8

    .line 109
    goto :goto_2

    .line 111
    :cond_8
    move-object p1, v3

    .line 112
    :goto_2
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 113
    :goto_3
    return-void
    .line 116
.end method

.method public final onLayoutPositionChanging(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/view/Choreographer;->getVsyncId()J

    .line 12
    move-result-wide v2

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 16
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 20
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 26
    return-void
    .line 29
.end method

.method public final onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    .line 3
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 5
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 10
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 15
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 17
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 19
    if-nez v2, :cond_2

    .line 21
    invoke-virtual {v6}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 23
    move-result-object p0

    .line 26
    iget-object p1, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 27
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1, p0, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 31
    :cond_0
    iget-object p1, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 34
    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p1, p0, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 38
    :cond_1
    invoke-virtual {v6, p0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 41
    return-void

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 45
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 48
    const/4 v7, 0x1

    .line 50
    if-eqz v2, :cond_4

    .line 51
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 53
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    .line 55
    const-string v2, "onSplitResizeStart"

    .line 57
    invoke-virtual {p1, v2, v0, v0}, Lcom/android/wm/shell/common/split/SplitWindowManager;->setInteractive(Ljava/lang/String;ZZ)V

    .line 59
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    .line 62
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 64
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 67
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 69
    if-eqz v4, :cond_3

    .line 71
    iput-boolean v7, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 73
    iput-object v3, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 75
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-virtual {v2, v3, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 82
    :cond_3
    iget-object v4, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 85
    const/4 v5, 0x6

    .line 87
    invoke-virtual {v4, v5, v1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 88
    move-result-object v1

    .line 91
    new-instance v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 92
    invoke-direct {v4, v2, v1, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;)V

    .line 94
    iput-object v4, v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 97
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 99
    if-eqz p1, :cond_7

    .line 101
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 103
    const-string v1, "  splitTransition  deduced Resize split screen"

    .line 105
    const v2, -0x1f2b8afc

    .line 107
    invoke-static {p1, v2, v0, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v6}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 114
    move-result-object v2

    .line 117
    iget-object v3, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 118
    if-eqz v3, :cond_5

    .line 120
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    .line 122
    :cond_5
    iget-object v3, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 125
    if-eqz v3, :cond_6

    .line 127
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/common/split/SplitDecorManager;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    .line 129
    :cond_6
    invoke-virtual {v6, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 132
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 135
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 137
    new-instance v1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;

    .line 140
    invoke-direct {v1, p0, p1, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Ljava/lang/Object;I)V

    .line 142
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 145
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 148
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerPositionAsFraction()F

    .line 150
    move-result p1

    .line 153
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 154
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 156
    if-nez v1, :cond_8

    .line 158
    goto :goto_3

    .line 160
    :cond_8
    const/4 v1, 0x0

    .line 161
    cmpg-float v1, p1, v1

    .line 162
    if-lez v1, :cond_d

    .line 164
    const/high16 v1, 0x3f800000    # 1.0f

    .line 166
    cmpl-float v1, p1, v1

    .line 168
    if-ltz v1, :cond_9

    .line 170
    goto :goto_3

    .line 172
    :cond_9
    iget v1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 173
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 175
    move-result v1

    .line 178
    if-eqz v1, :cond_a

    .line 179
    move v1, v7

    .line 181
    goto :goto_1

    .line 182
    :cond_a
    move v1, v0

    .line 183
    :goto_1
    if-nez v1, :cond_b

    .line 184
    goto :goto_2

    .line 186
    :cond_b
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 187
    move v0, v7

    .line 189
    :goto_2
    if-nez v0, :cond_c

    .line 190
    goto :goto_3

    .line 192
    :cond_c
    const/16 v1, 0x184

    .line 193
    const/4 v2, 0x4

    .line 195
    const/4 v3, 0x0

    .line 196
    const/4 v4, 0x0

    .line 197
    iget v5, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLastSplitRatio:F

    .line 198
    const/4 v6, 0x0

    .line 200
    const/4 v7, 0x0

    .line 201
    const/4 v8, 0x0

    .line 202
    const/4 v9, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 207
    move-result v11

    .line 210
    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIFIIIIII)V

    .line 211
    :cond_d
    :goto_3
    return-void
    .line 214
.end method

.method public final onLayoutSizeChanging(Lcom/android/wm/shell/common/split/SplitLayout;II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    move-result-object v9

    .line 7
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 8
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    .line 12
    move-result-wide v1

    .line 15
    invoke-virtual {v9, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 16
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, p1, v9, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 20
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 25
    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 29
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 37
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 39
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 41
    :goto_0
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 44
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 46
    if-nez p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 50
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds1:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    goto :goto_1

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 58
    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mBounds2:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 65
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 67
    iget-boolean v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 71
    iget-object v1, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 73
    if-eqz v1, :cond_2

    .line 75
    iget-object v2, p1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 77
    if-eqz v2, :cond_2

    .line 79
    move-object v5, v9

    .line 81
    move v6, p2

    .line 82
    move v7, p3

    .line 83
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResizing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect2:Landroid/graphics/Rect;

    .line 87
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 89
    iget-boolean v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShowDecorImmediately:Z

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 93
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 95
    if-eqz v1, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    if-eqz v2, :cond_3

    .line 101
    move-object v5, v9

    .line 103
    move v6, p2

    .line 104
    move v7, p3

    .line 105
    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResizing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V

    .line 106
    :cond_3
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 109
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 112
    return-void
    .line 115
.end method

.method public final onRecentsInSplitAnimationCanceled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 8
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 18
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 24
    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 26
    return-void
    .line 29
.end method

.method public final onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 9
    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 28
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    .line 30
    move-result-object v4

    .line 33
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    .line 34
    move-result v5

    .line 37
    if-ne v5, v3, :cond_1

    .line 38
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    .line 40
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    new-instance v5, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    .line 51
    invoke-direct {v5, v0, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 53
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 56
    move-result v2

    .line 59
    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    new-instance v5, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;

    .line 67
    invoke-direct {v5, v0, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 69
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    .line 72
    move-result v2

    .line 75
    if-eqz v2, :cond_1

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 83
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->getDividerLeash()Landroid/view/SurfaceControl;

    .line 85
    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 89
    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 91
    invoke-virtual {p0, v3, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 94
    return-void

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 101
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 104
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 106
    invoke-virtual {p1, p0, v3}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 108
    return-void
    .line 111
.end method

.method public final onRemoteAnimationFinished([Landroid/view/RemoteAnimationTarget;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 3
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->clearRequestIfPresented()V

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 19
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, Landroid/window/WindowContainerTransaction;

    .line 28
    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 30
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 33
    invoke-virtual {v1, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 39
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 41
    return-void

    .line 44
    :cond_1
    :goto_0
    new-instance p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;

    .line 45
    const/4 v0, 0x2

    .line 47
    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 51
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 58
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 60
    return-void
    .line 63
.end method

.method public onRootTaskAppeared()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 6
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 12
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    .line 14
    if-nez v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 19
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 24
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 38
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 46
    invoke-virtual {v0, v2, v4, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateTaskAdjacent(Landroid/window/WindowContainerTransaction;)V

    .line 51
    invoke-virtual {p0, v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 54
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 57
    iget-object v2, v2, Lcom/android/wm/shell/common/split/SplitLayout;->mInvisibleBounds:Landroid/graphics/Rect;

    .line 59
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 61
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 68
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 70
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 73
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    .line 75
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;

    .line 78
    const/4 v2, 0x0

    .line 80
    invoke-direct {v0, v2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    .line 84
    :cond_1
    :goto_0
    return-void
    .line 87
.end method

.method public final onRootTaskVanished()V
    .locals 3

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction;->clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x6

    .line 17
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyExitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/window/WindowContainerTransaction;I)V

    .line 18
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 27
    return-void
    .line 30
.end method

.method public final onSnappedToDismiss(ZI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/4 v2, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 6
    if-ne v3, v2, :cond_1

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 11
    if-nez v3, :cond_1

    .line 13
    :goto_0
    move v3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v3, 0x0

    .line 17
    :goto_1
    if-eqz v3, :cond_2

    .line 18
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 20
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 22
    iget v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mTaskId:I

    .line 24
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    move-result-object v4

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 31
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 33
    iget v5, v5, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mTaskId:I

    .line 35
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    move-result-object v4

    .line 40
    :goto_2
    if-nez v4, :cond_3

    .line 41
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 43
    iget-object v5, v4, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    .line 45
    monitor-enter v5

    .line 47
    :try_start_0
    iget-object v4, v4, Lcom/android/wm/shell/ShellTaskOrganizer;->mRemoveTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    monitor-exit v5

    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0

    .line 54
    :cond_3
    :goto_3
    move-object v10, v4

    .line 55
    invoke-static {}, Lcom/miui/analytics/MiuiAppPairsTrackStub;->getInstance()Lcom/miui/analytics/MiuiAppPairsTrackStub;

    .line 56
    move-result-object v6

    .line 59
    const-string v7, "action_exit_split"

    .line 60
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 62
    const/4 v9, 0x0

    .line 64
    const/4 v11, 0x0

    .line 65
    iget-wide v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 66
    const-wide/16 v13, 0x0

    .line 68
    cmp-long v4, v4, v13

    .line 70
    if-eqz v4, :cond_4

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    move-result-wide v4

    .line 77
    iget-wide v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 78
    sub-long/2addr v4, v1

    .line 80
    long-to-float v1, v4

    .line 81
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 82
    div-float/2addr v1, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    const/4 v1, 0x0

    .line 86
    :goto_4
    move v12, v1

    .line 87
    invoke-virtual/range {v6 .. v12}, Lcom/miui/analytics/MiuiAppPairsTrackStub;->trackEvent(Ljava/lang/String;Landroid/content/Context;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;F)V

    .line 88
    iput-wide v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPairTime:J

    .line 91
    if-eqz v3, :cond_5

    .line 93
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 95
    goto :goto_5

    .line 97
    :cond_5
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 98
    :goto_5
    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 100
    if-nez v2, :cond_6

    .line 102
    move/from16 v2, p2

    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 106
    return-void

    .line 109
    :cond_6
    const/4 v2, 0x1

    .line 110
    xor-int/2addr v2, v3

    .line 111
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 112
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 114
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 117
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 119
    const/4 v5, 0x0

    .line 121
    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 122
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 127
    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 129
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 132
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 134
    const/4 v4, 0x0

    .line 136
    invoke-virtual {v3, v1, v4}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 137
    invoke-virtual {p0, v2, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 140
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 143
    if-eqz v1, :cond_7

    .line 145
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 147
    invoke-virtual {v3, v1}, Landroid/window/WindowContainerTransaction;->setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 149
    :cond_7
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 152
    const/4 v4, 0x4

    .line 154
    invoke-virtual {v1, v3, p0, v2, v4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 155
    return-void
    .line 158
.end method

.method public onSplitScreenEnter()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSplitScreenExit()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 14
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 16
    if-nez p2, :cond_0

    .line 18
    new-instance p2, Lcom/android/wm/shell/common/split/SplitLayout;

    .line 20
    const-string v1, "StageCoordinatorSplitDivider"

    .line 22
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    .line 24
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 26
    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mParentContainerCallbacks:Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    .line 28
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 30
    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    .line 32
    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 34
    move-object v0, p2

    .line 36
    move-object v4, p0

    .line 37
    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/common/split/SplitLayout;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    .line 38
    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 43
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayId:I

    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskAppeared()V

    .line 50
    return-void

    .line 53
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, "\n Unknown task appeared: "

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p2
    .line 79
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 6
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 8
    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitLayout;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 26
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 28
    if-eqz p1, :cond_0

    .line 30
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 32
    if-nez p1, :cond_0

    .line 34
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 37
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 39
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 42
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 47
    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string p0, "\n Unknown task info changed: "

    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0
    .line 76
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskVanished()V

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 9
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 17
    :cond_0
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 19
    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    .line 21
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    .line 24
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string p0, "\n Unknown task vanished: "

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0
    .line 52
.end method

.method public final onTransitionAnimationComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsExiting:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    if-nez p2, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 13
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 26
    move-result p2

    .line 29
    if-eqz p2, :cond_2

    .line 30
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 40
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 51
    :cond_3
    :goto_0
    return-void
    .line 53
.end method

.method public final prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move-object/from16 v8, p4

    .line 8
    move-object/from16 v9, p5

    .line 10
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 12
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 14
    const/4 v3, -0x1

    .line 16
    if-ne v1, v3, :cond_5

    .line 17
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 19
    move-result v3

    .line 22
    const-string v4, ", "

    .line 23
    const-string v5, ""

    .line 25
    const-string v6, "] before startAnimation()."

    .line 27
    const-string v7, " to have been called with ["

    .line 29
    const-string v12, "Expected onTaskVanished on "

    .line 31
    const-string v13, "StageCoordinator"

    .line 33
    if-eqz v3, :cond_2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const/4 v14, 0x0

    .line 42
    :goto_0
    invoke-virtual {v11}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 43
    move-result v15

    .line 46
    if-ge v14, v15, :cond_1

    .line 47
    if-eqz v14, :cond_0

    .line 49
    move-object v15, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move-object v15, v5

    .line 53
    :goto_1
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v15, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 59
    move-result v15

    .line 62
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v14, v14, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 83
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 93
    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 97
    move-result v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const/4 v14, 0x0

    .line 108
    :goto_2
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 109
    move-result v15

    .line 112
    if-ge v14, v15, :cond_4

    .line 113
    if-eqz v14, :cond_3

    .line 115
    move-object v15, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move-object v15, v5

    .line 119
    :goto_3
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v15, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    .line 123
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 125
    move-result v15

    .line 128
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v14, v14, 0x1

    .line 132
    goto :goto_2

    .line 134
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v3

    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 159
    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_5
    new-instance v3, Landroid/util/ArrayMap;

    .line 163
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 165
    const/4 v4, 0x1

    .line 168
    move-object/from16 v5, p3

    .line 169
    invoke-static {v5, v4}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 171
    move-result v6

    .line 174
    :goto_4
    if-ltz v6, :cond_9

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 177
    move-result-object v7

    .line 180
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    move-result-object v7

    .line 184
    check-cast v7, Landroid/window/TransitionInfo$Change;

    .line 185
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 187
    move-result-object v12

    .line 190
    if-nez v12, :cond_6

    .line 191
    goto :goto_5

    .line 193
    :cond_6
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 194
    move-result-object v13

    .line 197
    if-nez v13, :cond_7

    .line 198
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    .line 200
    move-result-object v13

    .line 203
    invoke-virtual {v0, v13}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSplitItemPosition(Landroid/window/WindowContainerToken;)I

    .line 204
    move-result v13

    .line 207
    const/4 v14, -0x1

    .line 208
    if-eq v13, v14, :cond_8

    .line 209
    :cond_7
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 211
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    move-result-object v12

    .line 216
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 217
    move-result-object v7

    .line 220
    invoke-virtual {v3, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_8
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 224
    goto :goto_4

    .line 226
    :cond_9
    const/4 v5, 0x2

    .line 227
    if-eq v2, v4, :cond_a

    .line 228
    if-eq v2, v5, :cond_a

    .line 230
    const/4 v6, 0x3

    .line 232
    if-eq v2, v6, :cond_a

    .line 233
    const/4 v6, 0x4

    .line 235
    if-eq v2, v6, :cond_a

    .line 236
    const/16 v6, 0x8

    .line 238
    if-eq v2, v6, :cond_a

    .line 240
    const/16 v6, 0x9

    .line 242
    if-eq v2, v6, :cond_a

    .line 244
    const/16 v6, 0xb

    .line 246
    if-eq v2, v6, :cond_a

    .line 248
    const/4 v6, 0x0

    .line 250
    goto :goto_6

    .line 251
    :cond_a
    move v6, v4

    .line 252
    :goto_6
    if-eqz v6, :cond_b

    .line 253
    new-instance v6, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;

    .line 255
    invoke-direct {v6, v5, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 257
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 260
    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 262
    :cond_b
    const/4 v5, 0x0

    .line 265
    iput-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 266
    const/4 v6, 0x0

    .line 268
    invoke-virtual {v0, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 269
    iget-object v6, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 272
    invoke-virtual {v8, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 274
    iget-object v6, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 277
    invoke-virtual {v8, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 279
    const/4 v5, -0x1

    .line 282
    if-eq v1, v5, :cond_e

    .line 283
    if-nez v1, :cond_c

    .line 285
    iget-object v3, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 287
    goto :goto_7

    .line 289
    :cond_c
    iget-object v3, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 290
    :goto_7
    invoke-virtual {v8, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 292
    if-nez v1, :cond_d

    .line 295
    iget-object v3, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 297
    goto :goto_8

    .line 299
    :cond_d
    iget-object v3, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 300
    :goto_8
    const/4 v5, 0x0

    .line 302
    invoke-virtual {v8, v3, v5, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 303
    goto :goto_a

    .line 306
    :cond_e
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 307
    move-result-object v5

    .line 310
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 311
    move-result v5

    .line 314
    sub-int/2addr v5, v4

    .line 315
    :goto_9
    if-ltz v5, :cond_f

    .line 316
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 318
    move-result-object v6

    .line 321
    check-cast v6, Landroid/view/SurfaceControl;

    .line 322
    invoke-virtual {v9, v6}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 324
    add-int/lit8 v5, v5, -0x1

    .line 327
    goto :goto_9

    .line 329
    :cond_f
    :goto_a
    const/4 v3, -0x1

    .line 330
    if-ne v1, v3, :cond_10

    .line 331
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 333
    const/4 v3, -0x1

    .line 335
    const/4 v4, 0x0

    .line 336
    const/4 v5, -0x1

    .line 337
    const/4 v6, 0x0

    .line 338
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 339
    invoke-virtual {v7}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 341
    move-result v7

    .line 344
    move/from16 v2, p2

    .line 345
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logExit(IIIIIZ)V

    .line 347
    goto :goto_c

    .line 350
    :cond_10
    if-nez v1, :cond_11

    .line 351
    goto :goto_b

    .line 353
    :cond_11
    const/4 v4, 0x0

    .line 354
    :goto_b
    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->logExitToStage(IZ)V

    .line 355
    :goto_c
    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 359
    iget-object v0, v11, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 362
    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 364
    iget-object v0, v10, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 367
    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 369
    return-void
    .line 372
.end method

.method public final prepareEnterSplitScreen(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;IZ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSplitScreenEnter()V

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitActive()Z

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    if-eqz p2, :cond_0

    .line 13
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    const/4 v0, -0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, p3, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 19
    move-result-object p3

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 26
    move-result p2

    .line 29
    if-nez p2, :cond_4

    .line 30
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    .line 32
    const/4 v3, 0x0

    .line 35
    iget-object p2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    sget-object v5, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    .line 40
    sget-object v6, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 42
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x1

    .line 45
    move-object v2, p1

    .line 46
    invoke-virtual/range {v2 .. v8}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    .line 47
    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;Z)V

    .line 50
    goto :goto_1

    .line 53
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 54
    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 58
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 65
    :goto_0
    if-eqz p2, :cond_3

    .line 68
    invoke-virtual {p0, p3, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 70
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 73
    invoke-virtual {p3, p2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V

    .line 75
    :cond_3
    const/4 p2, 0x1

    .line 78
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 79
    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareSplitLayout(Landroid/window/WindowContainerTransaction;Z)V

    .line 82
    :cond_4
    :goto_1
    return-void
    .line 85
.end method

.method public final prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_1

    .line 11
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v3, v1

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 16
    invoke-virtual {p0, p2, v3}, Lcom/android/wm/shell/splitscreen/SideStage;->removeAllTasks(Landroid/window/WindowContainerTransaction;Z)Z

    .line 18
    if-nez p1, :cond_2

    .line 21
    move v1, v2

    .line 23
    :cond_2
    invoke-virtual {v0, p2, v1}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    .line 24
    return-void
    .line 27
.end method

.method public final prepareSplitLayout(Landroid/window/WindowContainerTransaction;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 6
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 8
    if-nez v3, :cond_0

    .line 10
    move v3, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividerAtBorder(Z)V

    .line 15
    goto :goto_1

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 19
    invoke-virtual {v2}, Lcom/android/wm/shell/common/split/SplitLayout;->resetDividerPosition()V

    .line 21
    :goto_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 24
    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 26
    if-eqz p2, :cond_2

    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 31
    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 35
    invoke-virtual {p1, p2, v1}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 37
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 47
    return-void
    .line 50
.end method

.method public final resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    if-eq p1, v1, :cond_8

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 8
    if-eqz p1, :cond_4

    .line 10
    if-ne p1, v0, :cond_3

    .line 12
    if-eq p2, v1, :cond_0

    .line 14
    invoke-virtual {p0, p2, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 20
    :goto_0
    if-nez p3, :cond_1

    .line 22
    new-instance p3, Landroid/os/Bundle;

    .line 24
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 26
    :cond_1
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 29
    if-ne p2, p0, :cond_2

    .line 31
    goto :goto_1

    .line 33
    :cond_2
    move-object v2, v3

    .line 34
    :goto_1
    invoke-static {p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 35
    goto :goto_5

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string p2, "Unknown stage="

    .line 41
    invoke-static {p2, p1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 50
    :cond_4
    if-eq p2, v1, :cond_5

    .line 51
    invoke-static {p2}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->reverseSplitPosition(I)I

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 57
    goto :goto_2

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 61
    move-result p2

    .line 64
    :goto_2
    if-nez p3, :cond_6

    .line 65
    new-instance p3, Landroid/os/Bundle;

    .line 67
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 69
    :cond_6
    iget p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 72
    if-ne p2, p0, :cond_7

    .line 74
    goto :goto_3

    .line 76
    :cond_7
    move-object v2, v3

    .line 77
    :goto_3
    invoke-static {p3, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 78
    goto :goto_5

    .line 81
    :cond_8
    if-eq p2, v1, :cond_b

    .line 82
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 84
    move-result p1

    .line 87
    if-eqz p1, :cond_a

    .line 88
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 90
    if-ne p2, p1, :cond_9

    .line 92
    goto :goto_4

    .line 94
    :cond_9
    const/4 v0, 0x0

    .line 95
    :goto_4
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 96
    move-result-object p3

    .line 99
    goto :goto_5

    .line 100
    :cond_a
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->resolveStartStage(IILandroid/os/Bundle;Landroid/window/WindowContainerTransaction;)Landroid/os/Bundle;

    .line 101
    move-result-object p3

    .line 104
    goto :goto_5

    .line 105
    :cond_b
    const-string p0, "StageCoordinator"

    .line 106
    const-string p1, "No stage type nor split position specified to resolve start stage"

    .line 108
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_5
    return-object p3
    .line 113
.end method

.method public final sendOnBoundsChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v1

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    :goto_0
    if-ltz v1, :cond_1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 21
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 23
    invoke-virtual {v3}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 29
    move-result-object v4

    .line 32
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 33
    move-result-object v5

    .line 36
    invoke-interface {v2, v3, v4, v5}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    return-void
    .line 43
.end method

.method public final sendStatusToListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 7
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 10
    const/4 v2, 0x1

    .line 12
    invoke-interface {p1, v2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 16
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitLayout;->getRootBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStageBounds()Landroid/graphics/Rect;

    .line 31
    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getSideStageBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object v4

    .line 38
    invoke-interface {p1, v0, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 42
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 47
    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V

    .line 49
    return-void
    .line 52
.end method

.method public final setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    if-eqz p1, :cond_1

    .line 12
    const-string/jumbo v0, "show"

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "hide"

    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 28
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    const v2, -0x25b68203

    .line 34
    const-string v4, "Request to %s divider bar from %s."

    .line 37
    invoke-static {v3, v2, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 42
    if-eqz p1, :cond_4

    .line 43
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mKeyguardShowing:Z

    .line 45
    if-eqz v2, :cond_4

    .line 47
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 49
    if-eqz p0, :cond_3

    .line 51
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 53
    const p1, 0x51feb992

    .line 55
    const-string p2, "   Defer showing divider bar due to keyguard showing."

    .line 58
    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :cond_3
    return-void

    .line 63
    :cond_4
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 66
    check-cast p1, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result v2

    .line 73
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 74
    if-ltz v2, :cond_5

    .line 76
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 81
    check-cast v3, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 82
    iget-boolean v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    .line 84
    invoke-interface {v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onSplitVisibilityChanged(Z)V

    .line 86
    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 90
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 93
    if-eqz p1, :cond_7

    .line 95
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 97
    if-eqz p0, :cond_6

    .line 99
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 101
    const p1, -0x42a56eb2

    .line 103
    const-string p2, "   Skip animating divider bar due to it\'s remote animating."

    .line 106
    invoke-static {p0, p1, v1, p2, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_6
    return-void

    .line 111
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->applyDividerVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 112
    return-void
    .line 115
.end method

.method public final setLayoutOffsetTarget(IILcom/android/wm/shell/common/split/SplitLayout;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    iget p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 7
    if-nez p1, :cond_0

    .line 9
    move-object v3, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v3, v1

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    move-object v0, v1

    .line 16
    :cond_1
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 17
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 19
    iget-object v4, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 24
    move-object v0, p3

    .line 26
    move-object v1, p1

    .line 27
    move v3, p2

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/common/split/SplitLayout;->applyLayoutOffsetTarget(Landroid/window/WindowContainerTransaction;IILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 32
    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 34
    return-void
    .line 37
.end method

.method public final setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    .line 2
    if-ne v0, p2, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsRootTranslucent:Z

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 11
    invoke-virtual {p1, p0, p2}, Landroid/window/WindowContainerTransaction;->setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 13
    return-void
    .line 16
.end method

.method public final setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mListeners:Ljava/util/List;

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;

    .line 25
    const/4 v3, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 28
    move-result v4

    .line 31
    invoke-interface {v2, v3, v4}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 32
    iget v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 35
    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onStagePositionChanged(II)V

    .line 37
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 43
    iget-boolean p1, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 45
    if-eqz p1, :cond_3

    .line 47
    if-nez p2, :cond_2

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onLayoutSizeChanged(Lcom/android/wm/shell/common/split/SplitLayout;)V

    .line 53
    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 59
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->sendOnBoundsChanged()V

    .line 62
    :cond_3
    :goto_1
    return-void
    .line 65
.end method

.method public final setSplitsVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 2
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStageListener:Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    .line 6
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    .line 8
    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    .line 12
    return-void
    .line 14
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v8, p1

    .line 4
    move-object/from16 v9, p2

    .line 6
    move-object/from16 v10, p3

    .line 8
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 10
    invoke-virtual {v11, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 12
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v12, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    move v1, v12

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    const/4 v3, 0x6

    .line 23
    if-nez v1, :cond_18

    .line 24
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 26
    iget-boolean v4, v1, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 28
    if-nez v4, :cond_1

    .line 30
    return v2

    .line 32
    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 33
    iput-boolean v2, v4, Lcom/android/wm/shell/common/split/SplitLayout;->mFreezeDividerWindow:Z

    .line 35
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;

    .line 37
    invoke-direct {v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;-><init>()V

    .line 39
    move v5, v2

    .line 42
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 43
    move-result-object v6

    .line 46
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 47
    move-result v6

    .line 50
    const-string v7, "StageCoordinator"

    .line 51
    if-ge v5, v6, :cond_9

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 55
    move-result-object v6

    .line 58
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v6

    .line 62
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 63
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 65
    move-result v8

    .line 68
    if-ne v8, v3, :cond_2

    .line 69
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 71
    move-result v3

    .line 74
    and-int/lit8 v3, v3, 0x20

    .line 75
    if-eqz v3, :cond_2

    .line 77
    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 79
    invoke-virtual {v3, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 81
    :cond_2
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    move-result-object v3

    .line 87
    if-nez v3, :cond_3

    .line 88
    goto/16 :goto_2

    .line 90
    :cond_3
    iget-object v8, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 92
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 94
    iget-object v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 96
    invoke-virtual {v8, v13}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v8

    .line 101
    if-eqz v8, :cond_5

    .line 102
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 104
    move-result v3

    .line 107
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 108
    move-result v3

    .line 111
    iget-object v7, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 112
    if-eqz v3, :cond_4

    .line 114
    invoke-virtual {v0, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 116
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 119
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 121
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 126
    invoke-virtual {v3, v6, v2}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 128
    invoke-virtual {v7, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 131
    goto/16 :goto_2

    .line 134
    :cond_4
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 136
    move-result v3

    .line 139
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 140
    move-result v3

    .line 143
    if-eqz v3, :cond_8

    .line 144
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    .line 146
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 149
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 151
    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 154
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 156
    invoke-virtual {v3, v6, v12}, Landroid/window/WindowContainerTransaction;->setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 158
    invoke-virtual {v7, v3}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 161
    goto/16 :goto_2

    .line 164
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 166
    move-result-object v8

    .line 169
    if-nez v8, :cond_6

    .line 170
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 172
    move-result-object v7

    .line 175
    if-nez v7, :cond_8

    .line 176
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 178
    move-result v6

    .line 181
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 182
    move-result v6

    .line 185
    if-nez v6, :cond_8

    .line 186
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 188
    move-result v3

    .line 191
    if-ne v3, v12, :cond_8

    .line 192
    iput-boolean v12, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    .line 194
    goto :goto_2

    .line 196
    :cond_6
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 197
    move-result v13

    .line 200
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 201
    move-result v13

    .line 204
    const-string v14, " before startAnimation()."

    .line 205
    const-string v15, " to have been called with "

    .line 207
    if-eqz v13, :cond_7

    .line 209
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 211
    invoke-virtual {v8, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 213
    move-result v6

    .line 216
    if-nez v6, :cond_8

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    const-string v13, "Expected onTaskAppeared on "

    .line 221
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 232
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v6

    .line 243
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 247
    invoke-virtual {v4, v8, v12, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    .line 249
    goto :goto_2

    .line 252
    :cond_7
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 253
    move-result v6

    .line 256
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 257
    move-result v6

    .line 260
    if-eqz v6, :cond_8

    .line 261
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 263
    invoke-virtual {v8, v6}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 265
    move-result v6

    .line 268
    if-eqz v6, :cond_8

    .line 269
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 271
    invoke-virtual {v4, v8, v2, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    .line 276
    const-string v13, "Expected onTaskVanished on "

    .line 278
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 289
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v3

    .line 300
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 304
    const/4 v3, 0x6

    .line 306
    goto/16 :goto_1

    .line 307
    :cond_9
    new-instance v3, Landroid/util/ArraySet;

    .line 309
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 311
    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    .line 314
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 316
    move-result v6

    .line 319
    sub-int/2addr v6, v12

    .line 320
    :goto_3
    if-ltz v6, :cond_f

    .line 321
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 323
    move-result-object v8

    .line 326
    check-cast v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    .line 327
    iget-object v9, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mAddedTaskId:Landroid/util/IntArray;

    .line 329
    invoke-virtual {v9}, Landroid/util/IntArray;->size()I

    .line 331
    move-result v9

    .line 334
    iget-object v10, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 335
    if-gtz v9, :cond_d

    .line 337
    iget-object v8, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    .line 339
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    .line 341
    move-result v9

    .line 344
    if-nez v9, :cond_a

    .line 345
    goto :goto_5

    .line 347
    :cond_a
    invoke-virtual {v8}, Landroid/util/IntArray;->size()I

    .line 348
    move-result v9

    .line 351
    sub-int/2addr v9, v12

    .line 352
    move v13, v2

    .line 353
    :goto_4
    if-ltz v9, :cond_c

    .line 354
    invoke-virtual {v8, v9}, Landroid/util/IntArray;->get(I)I

    .line 356
    move-result v14

    .line 359
    invoke-virtual {v10, v14}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 360
    move-result v14

    .line 363
    if-eqz v14, :cond_b

    .line 364
    add-int/lit8 v13, v13, 0x1

    .line 366
    :cond_b
    add-int/lit8 v9, v9, -0x1

    .line 368
    goto :goto_4

    .line 370
    :cond_c
    invoke-virtual {v10}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 371
    move-result v8

    .line 374
    if-ne v13, v8, :cond_d

    .line 375
    move v8, v12

    .line 377
    goto :goto_6

    .line 378
    :cond_d
    :goto_5
    move v8, v2

    .line 379
    :goto_6
    if-eqz v8, :cond_e

    .line 380
    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_e
    add-int/lit8 v6, v6, -0x1

    .line 385
    goto :goto_3

    .line 387
    :cond_f
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 388
    move-result v5

    .line 391
    if-eqz v5, :cond_10

    .line 392
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 394
    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 396
    move-result v5

    .line 399
    if-eqz v5, :cond_10

    .line 400
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 402
    move-result v5

    .line 405
    if-ne v5, v12, :cond_17

    .line 406
    :cond_10
    const-string v5, "Somehow removed the last task in a stage outside of a proper transition."

    .line 408
    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v5, Landroid/window/WindowContainerTransaction;

    .line 413
    invoke-direct {v5}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 415
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 418
    move-result v6

    .line 421
    const/4 v7, -0x1

    .line 422
    if-ne v6, v12, :cond_13

    .line 423
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 425
    move-result-object v3

    .line 428
    check-cast v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 429
    if-nez v3, :cond_11

    .line 431
    move v3, v7

    .line 433
    goto :goto_7

    .line 434
    :cond_11
    if-ne v3, v1, :cond_12

    .line 435
    move v3, v2

    .line 437
    goto :goto_7

    .line 438
    :cond_12
    move v3, v12

    .line 439
    :goto_7
    if-eqz v3, :cond_15

    .line 440
    :cond_13
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildCount()I

    .line 442
    move-result v1

    .line 445
    if-nez v1, :cond_14

    .line 446
    goto :goto_8

    .line 448
    :cond_14
    move v12, v2

    .line 449
    :cond_15
    :goto_8
    iget-boolean v1, v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    .line 450
    if-nez v1, :cond_16

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 454
    move-result v1

    .line 457
    if-eqz v1, :cond_16

    .line 458
    move v7, v12

    .line 460
    :cond_16
    invoke-virtual {v0, v7, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    .line 461
    const/4 v1, 0x2

    .line 464
    invoke-virtual {v11, v5, v0, v12, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)V

    .line 465
    :cond_17
    return v2

    .line 468
    :cond_18
    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 469
    if-eqz v1, :cond_24

    .line 471
    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayChange(Landroid/window/TransitionInfo;)Z

    .line 473
    move-result v1

    .line 476
    if-eqz v1, :cond_24

    .line 477
    iget-object v13, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

    .line 479
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 484
    move-result v1

    .line 487
    invoke-virtual {v13, v9, v1, v12}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 488
    move-result-object v14

    .line 491
    const/4 v1, 0x6

    .line 492
    invoke-virtual {v13, v9, v1, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler;->subCopy(Landroid/window/TransitionInfo;IZ)Landroid/window/TransitionInfo;

    .line 493
    move-result-object v3

    .line 496
    invoke-static {v9, v12}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 497
    move-result v1

    .line 500
    :goto_9
    if-ltz v1, :cond_1d

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 503
    move-result-object v4

    .line 506
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 507
    move-result-object v4

    .line 510
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 511
    move-object v5, v4

    .line 513
    :goto_a
    if-eqz v5, :cond_1b

    .line 514
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 516
    move-result-object v6

    .line 519
    if-eqz v6, :cond_19

    .line 520
    move v5, v12

    .line 522
    goto :goto_c

    .line 523
    :cond_19
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 524
    move-result-object v6

    .line 527
    if-nez v6, :cond_1a

    .line 528
    goto :goto_b

    .line 530
    :cond_1a
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 531
    move-result-object v5

    .line 534
    invoke-virtual {v9, v5}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 535
    move-result-object v5

    .line 538
    goto :goto_a

    .line 539
    :cond_1b
    :goto_b
    move v5, v2

    .line 540
    :goto_c
    if-eqz v5, :cond_1c

    .line 541
    goto :goto_d

    .line 543
    :cond_1c
    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    .line 544
    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 547
    move-result-object v4

    .line 550
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 551
    :goto_d
    add-int/lit8 v1, v1, -0x1

    .line 554
    goto :goto_9

    .line 556
    :cond_1d
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 557
    move-result-object v1

    .line 560
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 561
    move-result v1

    .line 564
    if-eqz v1, :cond_1e

    .line 565
    goto/16 :goto_10

    .line 567
    :cond_1e
    move v1, v2

    .line 569
    :goto_e
    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 570
    move-result-object v4

    .line 573
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 574
    move-result v4

    .line 577
    const/4 v5, 0x0

    .line 578
    if-ge v1, v4, :cond_21

    .line 579
    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 581
    move-result-object v4

    .line 584
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 585
    move-result-object v4

    .line 588
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 589
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 591
    move-result-object v6

    .line 594
    if-nez v6, :cond_1f

    .line 595
    goto :goto_f

    .line 597
    :cond_1f
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 598
    move-result-object v4

    .line 601
    invoke-virtual {v14, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 602
    move-result-object v4

    .line 605
    if-nez v4, :cond_20

    .line 606
    invoke-virtual {v14}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 608
    move-result-object v4

    .line 611
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 612
    move-result-object v4

    .line 615
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 616
    invoke-virtual {v4, v5}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 618
    :cond_20
    :goto_f
    add-int/lit8 v1, v1, 0x1

    .line 621
    goto :goto_e

    .line 623
    :cond_21
    new-instance v15, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;

    .line 624
    const/4 v1, 0x2

    .line 626
    invoke-direct {v15, v8, v1}, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;-><init>(Landroid/os/IBinder;I)V

    .line 627
    iget-object v4, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mActiveTransitions:Ljava/util/ArrayList;

    .line 630
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TRANSITIONS_enabled:Z

    .line 635
    if-eqz v4, :cond_22

    .line 637
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 639
    const v6, 0x109692f

    .line 641
    const-string v7, " Animation is a mix of display change and split change."

    .line 644
    invoke-static {v4, v6, v2, v7, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 646
    :cond_22
    iput v1, v15, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    .line 649
    new-instance v7, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;

    .line 651
    move-object/from16 v6, p5

    .line 653
    invoke-direct {v7, v13, v15, v6, v2}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/DefaultMixedHandler;Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;I)V

    .line 655
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    .line 658
    iget-object v5, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 660
    move-object/from16 v2, p1

    .line 662
    move-object/from16 v4, p3

    .line 664
    move-object/from16 v16, v5

    .line 666
    move-object/from16 v5, p4

    .line 668
    move-object v6, v7

    .line 670
    move-object/from16 v17, v7

    .line 671
    move-object/from16 v7, v16

    .line 673
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/transition/Transitions;->dispatchTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 675
    move-result-object v1

    .line 678
    iput-object v1, v15, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    .line 679
    iget-object v1, v13, Lcom/android/wm/shell/transition/DefaultMixedHandler;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    .line 681
    move-object v3, v14

    .line 683
    move-object/from16 v6, v17

    .line 684
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 686
    move v2, v12

    .line 689
    :goto_10
    if-eqz v2, :cond_24

    .line 690
    invoke-virtual {v11, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 692
    move-result v1

    .line 695
    if-eqz v1, :cond_23

    .line 696
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 698
    invoke-virtual {v0, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->update(Landroid/view/SurfaceControl$Transaction;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 703
    :cond_23
    return v12

    .line 706
    :cond_24
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 707
    move-result v0

    .line 710
    return v0
    .line 711
.end method

.method public final startPendingAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p1

    .line 4
    move-object/from16 v10, p2

    .line 6
    move-object/from16 v11, p3

    .line 8
    move-object/from16 v12, p4

    .line 10
    move-object/from16 v13, p5

    .line 12
    iget-object v14, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 14
    invoke-virtual {v14, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 16
    move-result v0

    .line 19
    iget-object v15, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 20
    iget-object v7, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 22
    iget-object v6, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 24
    if-eqz v0, :cond_14

    .line 26
    iget-object v5, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 28
    new-instance v4, Landroid/window/WindowContainerTransaction;

    .line 30
    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 32
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    move-object/from16 v16, v2

    .line 38
    move-object v2, v1

    .line 40
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 41
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    move-result v1

    .line 48
    if-ge v0, v1, :cond_9

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 51
    move-result-object v1

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 59
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    move-result-object v3

    .line 64
    if-eqz v3, :cond_7

    .line 65
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    .line 67
    move-result v17

    .line 70
    if-nez v17, :cond_0

    .line 71
    goto :goto_2

    .line 73
    :cond_0
    move-object/from16 v17, v5

    .line 74
    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v5

    .line 81
    move-object/from16 v18, v15

    .line 82
    iget-object v15, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 86
    move-result v5

    .line 89
    if-eqz v5, :cond_1

    .line 90
    goto :goto_3

    .line 92
    :cond_1
    invoke-virtual {v8, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getStageOfTask(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/splitscreen/StageTaskListener;

    .line 93
    move-result-object v5

    .line 96
    if-nez v5, :cond_2

    .line 97
    const/4 v5, -0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    if-ne v5, v6, :cond_3

    .line 101
    const/4 v5, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const/4 v5, 0x1

    .line 105
    :goto_1
    if-nez v2, :cond_5

    .line 106
    if-nez v5, :cond_5

    .line 108
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 110
    move-result v15

    .line 113
    invoke-static {v15}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 114
    move-result v15

    .line 117
    if-nez v15, :cond_4

    .line 118
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 120
    move-result v15

    .line 123
    const/4 v13, 0x6

    .line 124
    if-ne v15, v13, :cond_5

    .line 125
    :cond_4
    move-object v2, v1

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    if-nez v16, :cond_6

    .line 129
    const/4 v13, 0x1

    .line 131
    if-ne v5, v13, :cond_6

    .line 132
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 134
    move-result v13

    .line 137
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 138
    move-result v13

    .line 141
    if-eqz v13, :cond_6

    .line 142
    move-object/from16 v16, v1

    .line 144
    goto :goto_3

    .line 146
    :cond_6
    const/4 v13, -0x1

    .line 147
    if-eq v5, v13, :cond_8

    .line 148
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 150
    move-result v1

    .line 153
    const/4 v5, 0x4

    .line 154
    if-ne v1, v5, :cond_8

    .line 155
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 157
    const/4 v3, 0x0

    .line 159
    const/4 v5, 0x0

    .line 160
    invoke-virtual {v4, v1, v3, v5}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 161
    goto :goto_3

    .line 164
    :cond_7
    :goto_2
    move-object/from16 v17, v5

    .line 165
    move-object/from16 v18, v15

    .line 167
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 169
    move-object/from16 v13, p5

    .line 171
    move-object/from16 v5, v17

    .line 173
    move-object/from16 v15, v18

    .line 175
    goto/16 :goto_0

    .line 177
    :cond_9
    move-object/from16 v17, v5

    .line 179
    move-object/from16 v18, v15

    .line 181
    const/4 v0, 0x0

    .line 183
    const/4 v1, -0x1

    .line 184
    iget-object v3, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 185
    iget v3, v3, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mExtraTransitType:I

    .line 187
    const/16 v5, 0x3ed

    .line 189
    const-string v13, "StageCoordinator"

    .line 191
    if-ne v3, v5, :cond_b

    .line 193
    if-nez v2, :cond_a

    .line 195
    if-nez v16, :cond_a

    .line 197
    const-string v0, "Launched a task in split, but didn\'t receive any task in transition."

    .line 199
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 204
    const/4 v1, 0x1

    .line 206
    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 207
    const/4 v2, 0x0

    .line 209
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 210
    move-object/from16 v21, v6

    .line 212
    move-object/from16 v22, v7

    .line 214
    goto/16 :goto_a

    .line 216
    :cond_a
    const/4 v1, 0x1

    .line 218
    goto :goto_4

    .line 219
    :cond_b
    const/4 v3, 0x1

    .line 220
    if-eqz v2, :cond_11

    .line 221
    if-nez v16, :cond_c

    .line 223
    goto/16 :goto_8

    .line 225
    :cond_c
    move v1, v3

    .line 227
    :goto_4
    if-eqz v2, :cond_d

    .line 228
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 230
    move-result-object v3

    .line 233
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 234
    invoke-virtual {v6, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 236
    move-result v3

    .line 239
    if-nez v3, :cond_d

    .line 240
    move v3, v1

    .line 242
    goto :goto_5

    .line 243
    :cond_d
    move v3, v0

    .line 244
    :goto_5
    if-eqz v16, :cond_e

    .line 245
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 247
    move-result-object v5

    .line 250
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 251
    invoke-virtual {v7, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    .line 253
    move-result v5

    .line 256
    if-nez v5, :cond_e

    .line 257
    move v5, v1

    .line 259
    goto :goto_6

    .line 260
    :cond_e
    move v5, v0

    .line 261
    :goto_6
    const-string v0, " before startAnimation()."

    .line 262
    const-string v1, " to have been called with "

    .line 264
    const-string v15, "Expected onTaskAppeared on "

    .line 266
    if-eqz v3, :cond_f

    .line 268
    move-object/from16 v19, v4

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move-object/from16 v20, v6

    .line 283
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 285
    move-result-object v6

    .line 288
    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 289
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object v4

    .line 300
    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    goto :goto_7

    .line 304
    :cond_f
    move-object/from16 v19, v4

    .line 305
    move-object/from16 v20, v6

    .line 307
    :goto_7
    if-eqz v5, :cond_10

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 322
    move-result-object v1

    .line 325
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 326
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    move-result-object v0

    .line 337
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_10
    new-instance v13, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;

    .line 341
    const/4 v15, 0x1

    .line 343
    move-object v0, v13

    .line 344
    move-object/from16 v1, p0

    .line 345
    move-object/from16 v6, v19

    .line 347
    move-object/from16 v4, v16

    .line 349
    move-object/from16 v16, v17

    .line 351
    move-object/from16 v21, v20

    .line 353
    move-object/from16 v22, v7

    .line 355
    move-object/from16 v7, v16

    .line 357
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo$Change;ZLandroid/window/TransitionInfo$Change;ZLandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;)V

    .line 359
    move-object/from16 v0, v16

    .line 362
    iput-object v13, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 364
    invoke-virtual {v8, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 366
    invoke-virtual {v8, v10, v15}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addDividerBarToTransition(Landroid/window/TransitionInfo;Z)V

    .line 369
    move v1, v15

    .line 372
    goto :goto_a

    .line 373
    :cond_11
    :goto_8
    move-object/from16 v21, v6

    .line 374
    move-object/from16 v22, v7

    .line 376
    const-string v0, "Launched 2 tasks in split, but didn\'t receive 2 tasks in transition. Possibly one of them failed to launch"

    .line 378
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v2, :cond_12

    .line 383
    const/4 v1, 0x0

    .line 385
    goto :goto_9

    .line 386
    :cond_12
    if-eqz v16, :cond_13

    .line 387
    move v1, v3

    .line 389
    :cond_13
    :goto_9
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 390
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;

    .line 392
    invoke-direct {v2, v8, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 394
    iput-boolean v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 397
    iput-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 399
    iget-object v0, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitUnsupportedToast:Landroid/widget/Toast;

    .line 401
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 403
    move v1, v3

    .line 406
    :goto_a
    const/4 v0, 0x0

    .line 407
    move-object/from16 v4, p5

    .line 408
    move v2, v1

    .line 410
    move v7, v2

    .line 411
    move-object/from16 v13, v18

    .line 412
    goto/16 :goto_f

    .line 414
    :cond_14
    move-object/from16 v21, v6

    .line 416
    move-object/from16 v22, v7

    .line 418
    move-object/from16 v18, v15

    .line 420
    const/4 v6, -0x1

    .line 422
    const/4 v7, 0x1

    .line 423
    invoke-virtual {v14, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 424
    move-result v0

    .line 427
    if-eqz v0, :cond_1b

    .line 428
    iget-object v13, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 430
    iget v1, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    .line 432
    iget v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    .line 434
    move-object/from16 v0, p0

    .line 436
    move-object/from16 v3, p2

    .line 438
    move-object/from16 v4, p3

    .line 440
    move-object/from16 v5, p4

    .line 442
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareDismissAnimation(IILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 444
    iget v0, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mDismissTop:I

    .line 447
    if-ne v0, v6, :cond_15

    .line 449
    const/4 v1, 0x0

    .line 451
    invoke-virtual {v8, v1, v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setDividerVisibility(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 452
    iget-object v1, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 455
    invoke-virtual {v1, v11}, Lcom/android/wm/shell/common/split/SplitLayout;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 457
    const/4 v1, 0x0

    .line 460
    iput-object v1, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 461
    const/4 v2, 0x0

    .line 463
    goto :goto_b

    .line 464
    :cond_15
    const/4 v1, 0x0

    .line 465
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;

    .line 466
    invoke-direct {v2, v8, v7}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;I)V

    .line 468
    iput-object v2, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    .line 471
    move v2, v7

    .line 473
    :goto_b
    if-eqz v2, :cond_1a

    .line 474
    iget v3, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    .line 476
    const/4 v4, 0x4

    .line 478
    if-ne v3, v4, :cond_1a

    .line 479
    if-nez v0, :cond_16

    .line 481
    move-object/from16 v0, v21

    .line 483
    goto :goto_c

    .line 485
    :cond_16
    move-object/from16 v0, v22

    .line 486
    :goto_c
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 488
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 490
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 492
    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 494
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 496
    iput-object v9, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 498
    iput-object v12, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 500
    move-object/from16 v4, p5

    .line 502
    iput-object v4, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 506
    move-result-object v4

    .line 509
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 510
    move-result v4

    .line 513
    add-int/2addr v4, v6

    .line 514
    :goto_d
    if-ltz v4, :cond_19

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 517
    move-result-object v5

    .line 520
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 521
    move-result-object v5

    .line 524
    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 525
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 527
    move-result-object v6

    .line 530
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 531
    move-result-object v8

    .line 534
    invoke-virtual {v2, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 535
    move-result v8

    .line 538
    if-eqz v8, :cond_17

    .line 539
    const/high16 v5, 0x3f800000    # 1.0f

    .line 541
    invoke-virtual {v11, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 543
    invoke-virtual {v11, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 546
    new-instance v5, Landroid/animation/ValueAnimator;

    .line 549
    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    .line 551
    move-object/from16 v13, v18

    .line 554
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 559
    const/4 v8, 0x0

    .line 561
    invoke-direct {v6, v14, v5, v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;I)V

    .line 562
    invoke-virtual {v0, v11, v6}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 565
    goto :goto_e

    .line 568
    :cond_17
    move-object/from16 v13, v18

    .line 569
    const/high16 v8, 0x3f800000    # 1.0f

    .line 571
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 573
    move-result-object v5

    .line 576
    invoke-virtual {v3, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 577
    move-result v5

    .line 580
    if-eqz v5, :cond_18

    .line 581
    const v5, 0x7fffffff

    .line 583
    invoke-virtual {v11, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 586
    invoke-virtual {v11, v6, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 589
    invoke-virtual {v11, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 592
    :cond_18
    :goto_e
    add-int/lit8 v4, v4, -0x1

    .line 595
    move-object/from16 v18, v13

    .line 597
    goto :goto_d

    .line 599
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 600
    invoke-virtual {v14, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 603
    return v7

    .line 606
    :cond_1a
    move-object/from16 v4, p5

    .line 607
    move-object/from16 v13, v18

    .line 609
    move-object v0, v1

    .line 611
    :goto_f
    move-object/from16 v1, v21

    .line 612
    move-object/from16 v3, v22

    .line 614
    goto/16 :goto_12

    .line 616
    :cond_1b
    move-object/from16 v4, p5

    .line 618
    move-object/from16 v13, v18

    .line 620
    const/4 v0, 0x0

    .line 622
    invoke-virtual {v14, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 623
    move-result v1

    .line 626
    if-eqz v1, :cond_20

    .line 627
    move-object/from16 v1, v21

    .line 629
    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 631
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 633
    move-object/from16 v3, v22

    .line 635
    iget-object v5, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 637
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 639
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 641
    iget-object v3, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 643
    iput-object v9, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 645
    iput-object v12, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 647
    iput-object v4, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 649
    invoke-static {v10, v7}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 651
    move-result v4

    .line 654
    :goto_10
    if-ltz v4, :cond_1f

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 657
    move-result-object v6

    .line 660
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 661
    move-result-object v6

    .line 664
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 665
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 667
    move-result-object v8

    .line 670
    invoke-virtual {v2, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 671
    move-result v8

    .line 674
    if-nez v8, :cond_1c

    .line 675
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 677
    move-result-object v8

    .line 680
    invoke-virtual {v5, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 681
    move-result v8

    .line 684
    if-eqz v8, :cond_1e

    .line 685
    :cond_1c
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 687
    move-result-object v8

    .line 690
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 691
    move-result-object v9

    .line 694
    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 695
    int-to-float v9, v9

    .line 697
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 698
    move-result-object v12

    .line 701
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 702
    int-to-float v12, v12

    .line 704
    invoke-virtual {v11, v8, v9, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 705
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 708
    move-result-object v9

    .line 711
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 712
    move-result v9

    .line 715
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 716
    move-result-object v12

    .line 719
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 720
    move-result v12

    .line 723
    invoke-virtual {v11, v8, v9, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 724
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 727
    move-result-object v8

    .line 730
    invoke-virtual {v2, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 731
    move-result v8

    .line 734
    if-eqz v8, :cond_1d

    .line 735
    move-object v8, v1

    .line 737
    goto :goto_11

    .line 738
    :cond_1d
    move-object v8, v3

    .line 739
    :goto_11
    new-instance v9, Landroid/animation/ValueAnimator;

    .line 740
    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    .line 742
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 748
    move-result-object v6

    .line 751
    invoke-virtual {v8, v11, v6}, Lcom/android/wm/shell/common/split/SplitDecorManager;->setScreenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 752
    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 755
    invoke-direct {v6, v14, v9, v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;I)V

    .line 757
    invoke-virtual {v8, v11, v6}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 760
    :cond_1e
    add-int/lit8 v4, v4, -0x1

    .line 763
    goto :goto_10

    .line 765
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 766
    invoke-virtual {v14, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 769
    return v7

    .line 772
    :cond_20
    move-object/from16 v1, v21

    .line 773
    move-object/from16 v3, v22

    .line 775
    move v2, v7

    .line 777
    :goto_12
    if-nez v2, :cond_21

    .line 778
    const/4 v0, 0x0

    .line 780
    return v0

    .line 781
    :cond_21
    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 782
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 784
    iget-object v2, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 786
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 788
    iget-object v3, v8, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 790
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 792
    iput-object v9, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 794
    iput-object v12, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 796
    iput-object v4, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 798
    invoke-virtual {v14, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    .line 800
    move-result-object v4

    .line 803
    if-eqz v4, :cond_23

    .line 804
    iget-boolean v5, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 806
    if-eqz v5, :cond_22

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 810
    invoke-virtual {v14, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 813
    goto/16 :goto_1a

    .line 816
    :cond_22
    iget-object v6, v4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 818
    if-eqz v6, :cond_23

    .line 820
    iget-object v5, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    .line 822
    move-object v0, v6

    .line 824
    move-object/from16 v1, p1

    .line 825
    move-object/from16 v2, p2

    .line 827
    move-object/from16 v3, p3

    .line 829
    move-object/from16 v4, p4

    .line 831
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 833
    iput-object v6, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 836
    goto/16 :goto_1a

    .line 838
    :cond_23
    invoke-virtual {v14, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 840
    move-result v4

    .line 843
    invoke-static {v10, v7}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 844
    move-result v5

    .line 847
    :goto_13
    if-ltz v5, :cond_35

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 850
    move-result-object v6

    .line 853
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 854
    move-result-object v6

    .line 857
    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 858
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 860
    move-result-object v7

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 864
    move-result-object v8

    .line 867
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 868
    move-result-object v8

    .line 871
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 872
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 874
    move-result v8

    .line 877
    invoke-static {v10, v6}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 878
    move-result v12

    .line 881
    const/4 v15, 0x6

    .line 882
    if-ne v8, v15, :cond_24

    .line 883
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 885
    move-result-object v15

    .line 888
    if-eqz v15, :cond_24

    .line 889
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 891
    move-result-object v15

    .line 894
    invoke-virtual {v10, v15}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 895
    move-result-object v15

    .line 898
    move-object/from16 p0, v0

    .line 899
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 901
    move-result-object v0

    .line 904
    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 905
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 908
    move-result-object v0

    .line 911
    move-object/from16 v18, v13

    .line 912
    const/high16 v13, 0x3f800000    # 1.0f

    .line 914
    invoke-virtual {v11, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 916
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 919
    move-result-object v0

    .line 922
    invoke-virtual {v10, v12}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 923
    move-result-object v13

    .line 926
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 927
    move-result-object v13

    .line 930
    invoke-virtual {v11, v0, v13}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 931
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 934
    move-result-object v0

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 938
    move-result-object v13

    .line 941
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 942
    move-result v13

    .line 945
    sub-int/2addr v13, v5

    .line 946
    invoke-virtual {v11, v0, v13}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 947
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 950
    invoke-virtual {v15}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 952
    move-result-object v13

    .line 955
    invoke-virtual {v0, v7, v13}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 956
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 959
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 961
    move-result-object v13

    .line 964
    iget v13, v13, Landroid/graphics/Point;->x:I

    .line 965
    int-to-float v13, v13

    .line 967
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 968
    move-result-object v15

    .line 971
    iget v15, v15, Landroid/graphics/Point;->y:I

    .line 972
    int-to-float v15, v15

    .line 974
    invoke-virtual {v0, v7, v13, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 975
    goto :goto_14

    .line 978
    :cond_24
    move-object/from16 p0, v0

    .line 979
    move-object/from16 v18, v13

    .line 981
    :goto_14
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 983
    move-result-object v0

    .line 986
    invoke-virtual {v3, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 987
    move-result v0

    .line 990
    if-eqz v4, :cond_25

    .line 991
    iget-object v13, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 993
    iget-boolean v13, v13, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    .line 995
    if-nez v13, :cond_25

    .line 997
    if-eqz v0, :cond_25

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1001
    move-result v13

    .line 1004
    invoke-static {v13}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1005
    move-result v13

    .line 1008
    if-eqz v13, :cond_25

    .line 1009
    const/4 v13, 0x3

    .line 1011
    if-ne v8, v13, :cond_25

    .line 1012
    move-object v13, v7

    .line 1014
    goto :goto_15

    .line 1015
    :cond_25
    move-object/from16 v13, p0

    .line 1016
    :goto_15
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1018
    move-result-object v15

    .line 1021
    invoke-virtual {v1, v15}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1022
    move-result v15

    .line 1025
    move-object/from16 v16, v3

    .line 1026
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 1028
    move-result-object v3

    .line 1031
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1032
    move-result v3

    .line 1035
    move-object/from16 p0, v13

    .line 1036
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 1038
    move-result v13

    .line 1041
    move/from16 p4, v5

    .line 1042
    const/high16 v5, 0x400000

    .line 1044
    if-ne v13, v5, :cond_26

    .line 1046
    const/4 v5, 0x1

    .line 1048
    goto :goto_16

    .line 1049
    :cond_26
    const/4 v5, 0x0

    .line 1050
    :goto_16
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1051
    move-result-object v13

    .line 1054
    invoke-virtual {v1, v13}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1055
    move-result v13

    .line 1058
    move-object/from16 v17, v1

    .line 1059
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 1061
    move-result-object v1

    .line 1064
    invoke-virtual {v2, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 1065
    move-result v1

    .line 1068
    if-eqz v4, :cond_28

    .line 1069
    if-nez v13, :cond_27

    .line 1071
    if-eqz v1, :cond_28

    .line 1073
    :cond_27
    iget-object v1, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1075
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1077
    move-result-object v13

    .line 1080
    iget v13, v13, Landroid/graphics/Point;->x:I

    .line 1081
    int-to-float v13, v13

    .line 1083
    move-object/from16 v19, v2

    .line 1084
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 1086
    move-result-object v2

    .line 1089
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1090
    int-to-float v2, v2

    .line 1092
    invoke-virtual {v1, v7, v13, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1093
    iget-object v1, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1096
    const/4 v2, 0x0

    .line 1098
    invoke-virtual {v1, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1099
    goto :goto_17

    .line 1102
    :cond_28
    move-object/from16 v19, v2

    .line 1103
    if-eqz v0, :cond_29

    .line 1105
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1107
    invoke-virtual {v11, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1109
    invoke-virtual {v11, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1112
    goto :goto_17

    .line 1115
    :cond_29
    if-eqz v4, :cond_2a

    .line 1116
    if-nez v15, :cond_2b

    .line 1118
    :cond_2a
    if-eqz v3, :cond_2c

    .line 1120
    :cond_2b
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1122
    move-result-object v1

    .line 1125
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1126
    int-to-float v1, v1

    .line 1128
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1129
    move-result-object v2

    .line 1132
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1133
    int-to-float v2, v2

    .line 1135
    invoke-virtual {v11, v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1136
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1139
    move-result-object v1

    .line 1142
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1143
    move-result v1

    .line 1146
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1147
    move-result-object v2

    .line 1150
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 1151
    move-result v2

    .line 1154
    invoke-virtual {v11, v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1155
    goto :goto_17

    .line 1158
    :cond_2c
    if-eqz v5, :cond_2d

    .line 1159
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1161
    move-result-object v1

    .line 1164
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1165
    int-to-float v1, v1

    .line 1167
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 1168
    move-result-object v2

    .line 1171
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1172
    int-to-float v2, v2

    .line 1174
    invoke-virtual {v11, v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1175
    const v1, 0x7fffffff

    .line 1178
    invoke-virtual {v11, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1181
    invoke-virtual {v11, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1184
    :cond_2d
    :goto_17
    if-nez v0, :cond_34

    .line 1187
    if-nez v15, :cond_34

    .line 1189
    if-nez v3, :cond_34

    .line 1191
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1193
    move-result-object v0

    .line 1196
    if-nez v0, :cond_2e

    .line 1197
    if-nez v5, :cond_2e

    .line 1199
    goto/16 :goto_18

    .line 1201
    :cond_2e
    if-eqz v4, :cond_2f

    .line 1203
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    .line 1205
    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mResizeAnim:Z

    .line 1207
    if-eqz v0, :cond_2f

    .line 1209
    goto :goto_18

    .line 1211
    :cond_2f
    invoke-virtual {v14, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 1212
    move-result v0

    .line 1215
    if-eqz v0, :cond_30

    .line 1216
    iget-object v0, v14, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    .line 1218
    iget v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;->mReason:I

    .line 1220
    const/4 v1, 0x4

    .line 1222
    if-ne v0, v1, :cond_31

    .line 1223
    goto :goto_18

    .line 1225
    :cond_30
    const/4 v1, 0x4

    .line 1226
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 1227
    move-result v0

    .line 1230
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 1231
    move-result v0

    .line 1234
    if-nez v0, :cond_33

    .line 1235
    const/4 v0, 0x2

    .line 1237
    if-eq v8, v0, :cond_32

    .line 1238
    if-ne v8, v1, :cond_33

    .line 1240
    :cond_32
    const/4 v0, 0x0

    .line 1242
    invoke-virtual {v14, v7, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    .line 1243
    goto :goto_18

    .line 1246
    :cond_33
    const/4 v0, 0x6

    .line 1247
    if-ne v8, v0, :cond_34

    .line 1248
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1250
    move-result-object v0

    .line 1253
    if-eqz v0, :cond_34

    .line 1254
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1256
    move-result-object v0

    .line 1259
    invoke-virtual {v10, v12}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 1260
    move-result-object v1

    .line 1263
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 1264
    move-result-object v1

    .line 1267
    invoke-virtual {v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1268
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1271
    move-result-object v0

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 1275
    move-result-object v1

    .line 1278
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1279
    move-result v1

    .line 1282
    add-int/lit8 v1, v1, 0x1

    .line 1283
    invoke-virtual {v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1285
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1288
    move-result-object v0

    .line 1291
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1292
    move-result-object v1

    .line 1295
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1296
    int-to-float v1, v1

    .line 1298
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 1299
    move-result-object v2

    .line 1302
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 1303
    int-to-float v2, v2

    .line 1305
    invoke-virtual {v11, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1306
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1309
    move-result-object v0

    .line 1312
    invoke-virtual {v11, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1313
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 1316
    move-result-object v0

    .line 1319
    const/4 v1, 0x0

    .line 1320
    invoke-virtual {v14, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    .line 1321
    :cond_34
    :goto_18
    add-int/lit8 v5, p4, -0x1

    .line 1324
    move-object/from16 v0, p0

    .line 1326
    move-object/from16 v3, v16

    .line 1328
    move-object/from16 v1, v17

    .line 1330
    move-object/from16 v13, v18

    .line 1332
    move-object/from16 v2, v19

    .line 1334
    goto/16 :goto_13

    .line 1336
    :cond_35
    move-object/from16 p0, v0

    .line 1338
    move-object/from16 v18, v13

    .line 1340
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1342
    move-result v0

    .line 1345
    if-eqz v0, :cond_36

    .line 1346
    if-eqz p0, :cond_36

    .line 1348
    const/4 v0, 0x1

    .line 1350
    move-object/from16 v1, p0

    .line 1351
    invoke-virtual {v14, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    .line 1353
    const/4 v2, 0x0

    .line 1356
    invoke-virtual {v11, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1357
    goto :goto_19

    .line 1360
    :cond_36
    const/4 v0, 0x1

    .line 1361
    :goto_19
    move v7, v0

    .line 1362
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1363
    const/4 v0, 0x0

    .line 1366
    invoke-virtual {v14, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 1367
    :goto_1a
    return v7
    .line 1370
.end method

.method public final startSplitWithIntentsForMiui(IILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/window/RemoteTransition;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    new-instance v4, Landroid/window/WindowContainerTransaction;

    .line 8
    invoke-direct {v4}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 10
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    .line 19
    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 25
    iget-boolean v2, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 27
    const/4 v3, 0x0

    .line 29
    if-nez v2, :cond_1

    .line 30
    invoke-virtual {v0, v4, v3}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 35
    invoke-virtual {p0, v2, v4}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 37
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 42
    invoke-virtual {v4, v2, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 44
    invoke-virtual {p0, v4, v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    .line 50
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    new-instance v2, Landroid/os/Bundle;

    .line 55
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-static {v1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 63
    invoke-static {v2, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 65
    if-eqz p3, :cond_3

    .line 68
    if-eqz p4, :cond_3

    .line 70
    new-instance v0, Landroid/content/Intent;

    .line 72
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    if-eqz p5, :cond_2

    .line 77
    const/high16 p5, 0x8000000

    .line 79
    invoke-virtual {v0, p5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    :cond_2
    new-instance p5, Landroid/content/Intent;

    .line 84
    invoke-direct {p5}, Landroid/content/Intent;-><init>()V

    .line 86
    invoke-virtual {v4, p3, p5, v1}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 89
    invoke-virtual {v4, p4, v0, v2}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 92
    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v4, p1, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 96
    invoke-virtual {v4, p2, v2}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 99
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo p4, "startTaskForMultipleTask, mainTaskId : "

    .line 104
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string p1, ", sideTaskId : "

    .line 113
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 124
    const-string p2, "StageCoordinator"

    .line 125
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 130
    const/16 v3, 0x3ed

    .line 132
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    move-object v5, p6

    .line 136
    move-object v6, p0

    .line 137
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 138
    return-void
    .line 141
.end method

.method public final startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    const/16 v8, 0xa

    .line 3
    invoke-virtual {p0, v9, v8}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    .line 4
    :cond_0
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/split/SplitLayout;->init()V

    .line 5
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    move/from16 v10, p8

    invoke-virtual {v8, v10}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    .line 6
    iget-object v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v8}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    .line 7
    iget-object v11, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v10, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 8
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 9
    invoke-virtual {v8, v10}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    iput-boolean v12, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    const/4 v8, 0x1

    .line 11
    iput-boolean v8, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsDividerRemoteAnimating:Z

    .line 12
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-nez v10, :cond_2

    .line 13
    new-instance v10, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    if-eqz v3, :cond_1

    .line 14
    invoke-virtual/range {p3 .. p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    :cond_1
    invoke-direct {v10, p2, v9, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;-><init>(ILandroid/content/Intent;I)V

    iput-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitRequest:Lcom/android/wm/shell/splitscreen/StageCoordinator$SplitRequest;

    .line 15
    :cond_2
    invoke-virtual {p0, v5, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSideStagePosition(ILandroid/window/WindowContainerTransaction;)V

    .line 16
    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-boolean v9, v5, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v9, :cond_3

    .line 17
    invoke-virtual {v5, p1, v12}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    :cond_3
    if-nez p6, :cond_4

    .line 18
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_4
    move-object/from16 v9, p6

    .line 19
    :goto_0
    invoke-static {v9, v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 20
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    invoke-virtual {p0, v10, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 21
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v10, v8}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 22
    invoke-virtual {p0, p1, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    const/4 v8, -0x1

    .line 23
    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    if-eq v2, v8, :cond_6

    .line 24
    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    .line 27
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictAllChildren(Landroid/window/WindowContainerTransaction;)V

    .line 28
    :cond_5
    new-instance v4, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;

    invoke-direct {v4, p0, v3, v6}, Lcom/android/wm/shell/splitscreen/StageCoordinator$4;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/WindowContainerTransaction;Landroid/view/RemoteAnimationAdapter;)V

    .line 29
    new-instance v3, Landroid/view/RemoteAnimationAdapter;

    .line 30
    invoke-virtual/range {p9 .. p9}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v11

    invoke-virtual/range {p9 .. p9}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v5

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v11

    move-wide/from16 p7, v5

    invoke-direct/range {p3 .. p8}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 31
    invoke-static {v9}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v4

    .line 32
    invoke-static {v3}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 33
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 34
    invoke-virtual {p1, p2, v3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 35
    invoke-virtual {v10, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 36
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4, v9}, Landroid/window/WindowContainerTransaction;->startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_7
    move-object/from16 v2, p4

    .line 37
    invoke-virtual {p1, v3, v2, v9}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 38
    :goto_1
    new-instance v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v6, v12}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I)V

    .line 39
    invoke-virtual {v10, v2, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;Landroid/window/WindowContainerTransaction;)V

    :goto_2
    if-eqz v7, :cond_8

    .line 40
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    iput-object v7, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    const/4 v1, 0x3

    .line 41
    iput v1, v0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    :cond_8
    return-void
.end method

.method public final startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->startWithLegacyTransition(Landroid/window/WindowContainerTransaction;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final startWithTask(Landroid/window/WindowContainerTransaction;ILandroid/os/Bundle;FLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 2
    iget-boolean v1, v0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/splitscreen/MainStage;->activate(Landroid/window/WindowContainerTransaction;Z)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 12
    invoke-virtual {v1, p4}, Lcom/android/wm/shell/common/split/SplitLayout;->setDivideRatio(F)V

    .line 14
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 17
    invoke-virtual {p0, p4, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z

    .line 19
    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    iget-object p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 24
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, p4, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 27
    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setRootForceTranslucent(Landroid/window/WindowContainerTransaction;Z)V

    .line 30
    if-eqz p3, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    new-instance p3, Landroid/os/Bundle;

    .line 36
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 38
    :goto_0
    invoke-static {p3, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->addActivityOptions(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    .line 44
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result p2

    .line 56
    if-eqz p2, :cond_2

    .line 57
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    .line 62
    const/4 v1, 0x3

    .line 64
    const/16 v5, 0x3ec

    .line 65
    const/4 v6, 0x0

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, p5

    .line 69
    move-object v4, p0

    .line 70
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V

    .line 71
    if-eqz p6, :cond_3

    .line 74
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 76
    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterSessionId:Lcom/android/internal/logging/InstanceId;

    .line 78
    const/4 p1, 0x3

    .line 80
    iput p1, p0, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->mEnterReason:I

    .line 81
    :cond_3
    return-void
    .line 83
.end method

.method public final switchSplitPosition(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mTempRect1:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 10
    iget v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 13
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 15
    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 17
    if-nez v2, :cond_0

    .line 19
    move-object v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v2, v4

    .line 23
    :goto_0
    iget-object v5, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 24
    const v6, 0x7ffffffe

    .line 26
    invoke-static {v0, v5, v5, v1, v6}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 29
    move-result-object v5

    .line 32
    iget v7, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 33
    if-nez v7, :cond_1

    .line 35
    move-object v7, v4

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-object v7, v3

    .line 39
    :goto_1
    iget-object v8, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 40
    invoke-static {v0, v8, v8, v1, v6}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 42
    move-result-object v1

    .line 45
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 46
    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 48
    iget-object v7, v7, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 50
    new-instance v8, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;

    .line 52
    invoke-direct {v8, v0, v5, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    .line 54
    invoke-virtual {v6, v0, v2, v7, v8}, Lcom/android/wm/shell/common/split/SplitLayout;->splitSwitching(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Ljava/util/function/Consumer;)V

    .line 57
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    .line 60
    if-eqz v0, :cond_2

    .line 62
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 69
    const v1, -0x3ec4ba35

    .line 70
    const/4 v2, 0x0

    .line 73
    const-string v5, "Switch split position: %s"

    .line 74
    invoke-static {v0, v1, v2, v5, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_2
    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mLogger:Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;

    .line 79
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->getMainStagePosition()I

    .line 81
    move-result v7

    .line 84
    invoke-virtual {v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 85
    move-result v8

    .line 88
    iget v9, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 89
    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopChildTaskUid()I

    .line 91
    move-result v10

    .line 94
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 95
    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitLayout;->isLandscape()Z

    .line 97
    move-result v11

    .line 100
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/splitscreen/SplitscreenEventLogger;->logSwap(IIIIZ)V

    .line 101
    return-void
    .line 104
.end method

.method public final updateRecentTasksSplitPair()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mShouldUpdateRecents:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;

    .line 15
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRecentTasks:Ljava/util/Optional;

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 23
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public final updateSurfaceBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    if-nez v0, :cond_0

    .line 8
    move-object v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v3, v2

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    move-object v1, v2

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    goto :goto_1

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 19
    :goto_1
    move-object v4, p1

    .line 21
    iget-object v6, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 22
    iget-object v7, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    .line 24
    iget-object v8, v3, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 26
    iget-object v9, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    .line 28
    move-object v5, p2

    .line 30
    move v10, p3

    .line 31
    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Z)V

    .line 32
    return-void
    .line 35
.end method

.method public final updateTaskAdjacent(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 18
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 29
    invoke-virtual {p1, p0}, Landroid/window/WindowContainerTransaction;->setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public final updateWindowBounds(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/window/WindowContainerTransaction;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStagePosition:I

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    .line 6
    if-nez v0, :cond_0

    .line 8
    move-object v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    move-object v1, p0

    .line 15
    :cond_1
    iget-object p0, v2, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 16
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 18
    invoke-virtual {p1, p0, v0, p2}, Lcom/android/wm/shell/common/split/SplitLayout;->applyTaskChanges(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)Z

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method
