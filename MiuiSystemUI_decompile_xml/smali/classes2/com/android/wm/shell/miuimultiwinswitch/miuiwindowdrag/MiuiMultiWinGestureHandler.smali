.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final APP_ICON_SIZE_DP:I = 0x45

.field private static final CORVE_RCORNER_RADIUS:I = 0x12

.field private static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.home"

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinGestureHandler"

.field public static final sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

.field public static final sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

.field public static final sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

.field public static final sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;


# instance fields
.field private EVENT_VELOCITY_THRESHOLD:F

.field animCount:I

.field private isAddedCover:Z

.field private isDragSplit:Z

.field private isEnteredOtherHotArea:Z

.field private isUpOrCancelOccured:Z

.field private final mAppIconSizePx:I

.field private mBackToOriginalAnimationRunning:Z

.field private mCancelMoveAnim:Z

.field private mCanceled:Z

.field private mConsumedFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mConsumedTransition:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mCoverCornerRadius:F

.field private mDragSplitPos:I

.field private mDragStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

.field private mFirstMove:Z

.field private mFreeformCornerRadius:F

.field private final mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private final mFreeformStartScale:Landroid/util/SparseArray;

.field private mFullScreenCornerRadius:F

.field private mFullScreenDeviceCorner:F

.field private mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

.field private mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private mIsSplitLeftRight:Z

.field private mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

.field private mLastSplitHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

.field private mMerging:Z

.field private mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

.field private mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

.field private mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

.field private mMiuiMultiWinAnimInfoOtherSide:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

.field private final mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

.field private final mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

.field private mOtherSideBounds:Landroid/graphics/Rect;

.field private mOtherSideSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

.field private final mOtherSideTargetPos:Landroid/graphics/PointF;

.field private mOtherStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPendingTaskInfo:Landroid/util/SparseArray;

.field private final mPendingTransitionTokens:Landroid/util/ArrayMap;

.field mPointDownId:I

.field private mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

.field private mShapeLayerHeight:I

.field private mShapeLayerWidth:I

.field private mSingleOpenDragType:I

.field private final mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field private mSplitCornerRadius:F

.field private mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

.field private mTaskBounds:Landroid/graphics/Rect;

.field private final mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

.field private final mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

.field private mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

.field private shouldHandleEvent:Z


# direct methods
.method public static synthetic $r8$lambda$6tEhrfhOK9ERYCjw6fR6qPdfr5Y(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->lambda$startFullToFreeformTransition$1([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$iuz1f2CDfcSbiO6mU8pa9XPM1AM(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->lambda$startSingleOpenToFreeformTransition$3([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$mbmEsJi0HcxOYnZmxz2axmRzi9c(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p3, p0, p1, p4, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->lambda$finishTransition$0(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$nBDoW1nIYg-jPMToRnAEN1usA8Q(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->lambda$startSplitToFreeformTransition$4(Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$zbWdi3Ax9UlYjR67lL_PxpuRaqo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->lambda$startSingleOpenToFullTransition$2([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetisDragSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmCancelMoveAnim(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmCanceled(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCanceled:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmConsumedFinishTransaction(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mConsumedFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmConsumedTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mConsumedTransition:Landroid/os/IBinder;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMerging(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMerging:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiDisplayInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiMultiWinAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiMultiWinAnimInfoOtherSide(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfoOtherSide:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmOtherSideSplitDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteTransitionCompat(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSoScSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitCornerRadius(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskBounds(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fputmBackToOriginalAnimationRunning(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mBackToOriginalAnimationRunning:Z

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fputmConsumedFinishTransaction(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mConsumedFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fputmConsumedTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mConsumedTransition:Landroid/os/IBinder;

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fputmMerging(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMerging:Z

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteTransitionCompat(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$mfinishTransition(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p3, p0, p4, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetOperateTaskLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    return-object v0
    .line 4
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [F

    .line 8
    fill-array-data v2, :array_0

    .line 10
    const/4 v3, -0x2

    .line 13
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 18
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 20
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 22
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 24
    new-array v2, v1, [F

    .line 27
    fill-array-data v2, :array_1

    .line 29
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 36
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 38
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 40
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 42
    new-array v2, v1, [F

    .line 45
    fill-array-data v2, :array_2

    .line 47
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 54
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 56
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 58
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 60
    new-array v1, v1, [F

    .line 63
    fill-array-data v1, :array_3

    .line 65
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 72
    sput-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 74
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3ed1eb85    # 0.41f
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data

    .line 86
    :array_2
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3ed1eb85    # 0.41f
    .end array-data

    .line 94
    :array_3
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3eb33333    # 0.35f
    .end array-data
    .line 102
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p9

    move-object/from16 v13, p13

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    invoke-direct {v1}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPointDownId:I

    const/4 v2, 0x0

    .line 7
    iput v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 8
    iput v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->EVENT_VELOCITY_THRESHOLD:F

    .line 9
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 10
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    invoke-direct {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 11
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    invoke-direct {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfoOtherSide:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 12
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isEnteredOtherHotArea:Z

    .line 13
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isUpOrCancelOccured:Z

    .line 14
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCanceled:Z

    .line 15
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 17
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideTargetPos:Landroid/graphics/PointF;

    .line 18
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mBackToOriginalAnimationRunning:Z

    .line 19
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->shouldHandleEvent:Z

    const/high16 v12, 0x41900000    # 18.0f

    .line 20
    iput v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    const/high16 v1, 0x41b00000    # 22.0f

    .line 21
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    const/4 v1, 0x0

    .line 22
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenCornerRadius:F

    .line 23
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    const/high16 v1, 0x42580000    # 54.0f

    .line 24
    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCoverCornerRadius:F

    const/4 v1, 0x0

    .line 25
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 26
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    move-object/from16 v4, p1

    .line 27
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 28
    iput-object v15, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 29
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    move-object/from16 v11, p11

    invoke-direct {v1, v11, v14, v13}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    const/16 v1, 0x78

    .line 30
    invoke-static {v15, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mShapeLayerWidth:I

    move-object/from16 v5, p3

    .line 31
    iput-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    move-object/from16 v10, p4

    .line 32
    iput-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v6, p5

    .line 33
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 34
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    invoke-direct {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    move-object/from16 v1, p8

    .line 35
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 36
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    invoke-direct {v3, v15}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 37
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v15, v9

    move-object/from16 v9, p9

    move-object/from16 v12, p12

    move-object/from16 v13, p14

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;-><init>(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    iput-object v15, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    move-object/from16 v1, p9

    .line 38
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    move-object/from16 v1, p6

    .line 39
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    move-object/from16 v1, p7

    .line 40
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v1, p10

    .line 41
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    move-object/from16 v1, p2

    const/high16 v2, 0x41900000    # 18.0f

    .line 42
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->applyDip2Px(Landroid/content/Context;F)F

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    move-object/from16 v2, p12

    .line 43
    iput-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    move-object/from16 v2, p13

    .line 44
    iput-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    const/high16 v2, 0x428a0000    # 69.0f

    .line 45
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mAppIconSizePx:I

    const/16 v2, 0x12

    .line 46
    invoke-static {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCoverCornerRadius:F

    .line 47
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    .line 48
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method private checkIfNeedCancel()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 2
    iget-boolean v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCanceled:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object v2

    .line 17
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiWindowDecoration(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 20
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 26
    const-string v2, "Freeform drag is canceled!"

    .line 28
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 33
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCanceled:Z

    .line 35
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->releaseCover()V

    .line 37
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 40
    return v1

    .line 43
    :cond_1
    const/4 p0, 0x0

    .line 44
    return p0
    .line 45
.end method

.method private finishTipsLayout()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->hideAllNoAnim()V

    .line 8
    return-void
    .line 11
.end method

.method private finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;

    move-object v1, v7

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda2;-><init>(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getHomeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.intent.action.MAIN"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v2, "android.intent.category.HOME"

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 14
    const-string v3, "com.miui.home"

    .line 15
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    move-result-object p0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 26
    move-result-object p0

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    .line 30
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 32
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 34
    invoke-direct {v0, v3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p0, Landroid/content/Intent;

    .line 39
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 48
    move-result-object p0

    .line 51
    const/high16 v0, 0x10000000

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method

.method private getOperateTaskLeash()Landroid/view/SurfaceControl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x6

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 19
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 21
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 26
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
.end method

.method private handleNoSwitchMove(FF)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 2
    const v1, 0x3f733333    # 0.95f

    .line 4
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 7
    move-result-object v9

    .line 10
    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->getTargetTaskLeashPos(FFFF)Landroid/graphics/PointF;

    .line 11
    move-result-object p1

    .line 14
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    .line 15
    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 17
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$4;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$4;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V

    .line 22
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 29
    move-result-object v12

    .line 32
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 33
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 38
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 39
    move-result-object p2

    .line 42
    const-string v2, "posX"

    .line 43
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 45
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    move-result-object v3

    .line 50
    const-string v4, "posY"

    .line 51
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    move-result-object v5

    .line 58
    const-string v6, "scaleX"

    .line 59
    const-string v8, "scaleY"

    .line 61
    const-string v10, "cornerRadius"

    .line 63
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 65
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 67
    move-result p0

    .line 70
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object v11

    .line 74
    move-object v7, v9

    .line 75
    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 79
    invoke-interface {p2, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 80
    return-void
    .line 83
.end method

.method private hideDimmer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;->-$$Nest$fgetmDimmer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 12
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;->-$$Nest$fgetmDimmer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinDimmer;->destroy()V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 21
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;->-$$Nest$fputmDimmer(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method private initFullScreenDragCornerRadius(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result v1

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result p2

    .line 15
    invoke-virtual {v0, p1, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 16
    invoke-virtual {v0, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 19
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 27
    return-void
    .line 30
.end method

.method private initTipsLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 8
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 12
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 18
    move-result p0

    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->show(Landroid/view/SurfaceControl;I)V

    .line 22
    return-void
    .line 25
.end method

.method private synthetic lambda$finishTransition$0(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    const/16 v0, 0xc9

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 6
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 8
    :cond_0
    const/16 v0, 0xca

    .line 11
    if-eq p1, v0, :cond_1

    .line 13
    const/16 v0, 0xcb

    .line 15
    if-eq p1, v0, :cond_1

    .line 17
    const/16 v0, 0xcc

    .line 19
    if-eq p1, v0, :cond_1

    .line 21
    const/16 v0, 0xcd

    .line 23
    if-ne p1, v0, :cond_2

    .line 25
    :cond_1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 27
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 32
    invoke-virtual {v1, p2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishExitSoSc(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 34
    :cond_2
    const/4 p2, 0x0

    .line 37
    invoke-interface {p3, p4, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 38
    const/16 p2, 0xce

    .line 41
    if-ne p1, p2, :cond_3

    .line 43
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 45
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishSwapTasks()V

    .line 47
    const/4 p2, 0x1

    .line 50
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 51
    invoke-static {p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 53
    :cond_3
    const-string p2, "FF_UI/MWS_ACTION_DRAG_WINDOW_RESIZE"

    .line 56
    invoke-static {p2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->onTransitionEnd(I)V

    .line 61
    return-void
    .line 64
.end method

.method private synthetic lambda$startFullToFreeformTransition$1([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    aput v1, p1, v0

    .line 7
    if-eqz p6, :cond_0

    .line 9
    invoke-virtual {p2, p6, v2}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 11
    :cond_0
    aget p1, p1, v0

    .line 14
    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    .line 18
    move-result p1

    .line 21
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startSingleOpenToFreeformTransition$3([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    aput v1, p1, v0

    .line 7
    if-eqz p6, :cond_0

    .line 9
    invoke-virtual {p2, p6, v2}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 11
    :cond_0
    aget p1, p1, v0

    .line 14
    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    .line 18
    move-result p1

    .line 21
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startSingleOpenToFullTransition$2([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    const/4 v2, 0x1

    .line 5
    sub-int/2addr v1, v2

    .line 6
    aput v1, p1, v0

    .line 7
    if-eqz p6, :cond_0

    .line 9
    invoke-virtual {p2, p6, v2}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 11
    :cond_0
    aget p1, p1, v0

    .line 14
    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    .line 18
    move-result p1

    .line 21
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startSplitToFreeformTransition$4(Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 2
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 6
    if-eqz p5, :cond_0

    .line 8
    invoke-virtual {p1, p5, v1}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 10
    :cond_0
    iget p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 13
    if-nez p5, :cond_1

    .line 15
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 17
    move-result p2

    .line 20
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 21
    :cond_1
    return-void
    .line 24
.end method

.method private onTransitionEnd(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onTransitionEnd type="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 21
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 26
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->releaseCoverLayer()V

    .line 28
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 31
    :cond_0
    const/16 v0, 0xc9

    .line 33
    if-ne p1, v0, :cond_1

    .line 35
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 37
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 39
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 42
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->continueUpdateSoScState()V

    .line 44
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 47
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->ensureSoScMinimized()V

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setMultiWinSwitchAnimationRunning(Z)V

    .line 54
    return-void
    .line 57
.end method

.method private startFullToFreeform()V
    .locals 9

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 7
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object v1

    .line 12
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 13
    const/4 v2, 0x5

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 16
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 19
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    move-result-object v1

    .line 24
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 28
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    move-result-object v1

    .line 36
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 39
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 42
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 48
    move-result v1

    .line 51
    if-ne v1, v2, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    move v7, v2

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 57
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    move-result-object v1

    .line 62
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    .line 69
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 71
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 74
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 76
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    move-result-object v5

    .line 81
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 82
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    move-result-object v2

    .line 87
    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    .line 88
    move-object v8, v1

    .line 90
    invoke-static/range {v3 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    .line 91
    move-result v2

    .line 94
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 97
    move-result v3

    .line 100
    int-to-float v3, v3

    .line 101
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 102
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 104
    move-result v4

    .line 107
    mul-float/2addr v4, v3

    .line 108
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 109
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 111
    move-result v3

    .line 114
    int-to-float v3, v3

    .line 115
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 116
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 118
    move-result v5

    .line 121
    mul-float/2addr v5, v3

    .line 122
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 123
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 125
    move-result v3

    .line 128
    const/high16 v6, 0x40000000    # 2.0f

    .line 129
    div-float/2addr v4, v6

    .line 131
    add-float/2addr v4, v3

    .line 132
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 133
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 135
    move-result v3

    .line 138
    div-float/2addr v5, v6

    .line 139
    add-float/2addr v5, v3

    .line 140
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 141
    move-result v3

    .line 144
    mul-float/2addr v3, v2

    .line 145
    div-float/2addr v3, v6

    .line 146
    sub-float/2addr v4, v3

    .line 147
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 148
    move-result v3

    .line 151
    mul-float/2addr v3, v2

    .line 152
    div-float/2addr v3, v6

    .line 153
    sub-float/2addr v5, v3

    .line 154
    new-instance v3, Landroid/graphics/Rect;

    .line 155
    float-to-int v6, v4

    .line 157
    float-to-int v7, v5

    .line 158
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 159
    move-result v8

    .line 162
    add-float/2addr v8, v4

    .line 163
    float-to-int v4, v8

    .line 164
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 165
    move-result v1

    .line 168
    add-float/2addr v1, v5

    .line 169
    float-to-int v1, v1

    .line 170
    invoke-direct {v3, v6, v7, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 174
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 176
    invoke-static {v1, v4, v3, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 178
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 181
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 183
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 185
    move-result-object v4

    .line 188
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 189
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 191
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 193
    move-result-object v5

    .line 196
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 200
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 202
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 204
    move-result-object v4

    .line 207
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 208
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 210
    move-result-object v2

    .line 213
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 217
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 219
    move-result-object v1

    .line 222
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 223
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 225
    const/16 v1, 0xc8

    .line 228
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 230
    return-void
    .line 233
.end method

.method private startFullToSingleOpen(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 21
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 26
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-ne v1, v3, :cond_0

    .line 32
    move v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 36
    move-result p1

    .line 39
    const/4 v1, 0x2

    .line 40
    if-ne p1, v1, :cond_1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, -0x1

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 45
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 47
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    move-result-object v1

    .line 52
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 55
    const/16 p1, 0xc9

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 60
    return-void
    .line 63
.end method

.method private startSingleOpenSwap(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startingSwapSplitTasks()V

    .line 6
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 9
    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 12
    iget v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 15
    if-nez v1, :cond_0

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 19
    move-result v1

    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    :cond_0
    iget v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 25
    if-ne v1, v2, :cond_2

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 29
    move-result v1

    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 36
    goto/16 :goto_1

    .line 39
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 41
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 43
    move-result-object v1

    .line 46
    iget v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 47
    const/4 v4, 0x0

    .line 49
    if-nez v3, :cond_4

    .line 50
    iget-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 52
    if-eqz v3, :cond_3

    .line 54
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 56
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 60
    move-result v3

    .line 63
    sub-int/2addr v1, v3

    .line 64
    int-to-float v1, v1

    .line 65
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 66
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 68
    int-to-float v3, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 72
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 74
    int-to-float v5, v5

    .line 76
    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 77
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 79
    move-result v3

    .line 82
    sub-int/2addr v1, v3

    .line 83
    int-to-float v3, v1

    .line 84
    move v1, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 87
    if-eqz v1, :cond_5

    .line 89
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 91
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 93
    int-to-float v3, v1

    .line 95
    move v1, v4

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 98
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 100
    int-to-float v1, v1

    .line 102
    move v3, v4

    .line 103
    :goto_0
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 106
    move-result v5

    .line 109
    int-to-float v5, v5

    .line 110
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 113
    move-result v6

    .line 116
    int-to-float v6, v6

    .line 117
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 118
    invoke-virtual {v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 120
    move-result v7

    .line 123
    iget-object v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 124
    invoke-virtual {v8}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 126
    move-result v8

    .line 129
    mul-float/2addr v8, v5

    .line 130
    const/high16 v9, 0x40000000    # 2.0f

    .line 131
    div-float/2addr v8, v9

    .line 133
    add-float/2addr v8, v7

    .line 134
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 135
    invoke-virtual {v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 137
    move-result v7

    .line 140
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 141
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 143
    move-result v10

    .line 146
    mul-float/2addr v10, v6

    .line 147
    div-float/2addr v10, v9

    .line 148
    add-float/2addr v10, v7

    .line 149
    div-float v7, v5, v9

    .line 150
    add-float/2addr v7, v1

    .line 152
    div-float v1, v6, v9

    .line 153
    add-float/2addr v1, v3

    .line 155
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 156
    invoke-direct {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 158
    new-instance v9, Lmiuix/animation/base/AnimConfig;

    .line 161
    invoke-direct {v9}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 163
    sget-object v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 166
    const-string v12, "posX"

    .line 168
    invoke-virtual {v9, v12, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 170
    move-result-object v9

    .line 173
    const-string v12, "posY"

    .line 174
    invoke-virtual {v9, v12, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 176
    move-result-object v9

    .line 179
    sget-object v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 180
    const-string v12, "scaleX"

    .line 182
    invoke-virtual {v9, v12, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 184
    move-result-object v9

    .line 187
    const-string v12, "scaleY"

    .line 188
    invoke-virtual {v9, v12, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 190
    move-result-object v9

    .line 193
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;

    .line 194
    invoke-direct {v11, v0, v3, v5, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;FF)V

    .line 196
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 199
    move-result-object v5

    .line 202
    invoke-virtual {v9, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 203
    move-result-object v23

    .line 206
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 207
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 209
    move-result-object v2

    .line 212
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 213
    move-result-object v2

    .line 216
    const-string v11, "posX"

    .line 217
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 219
    move-result-object v12

    .line 222
    const-string v13, "posY"

    .line 223
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 225
    move-result-object v14

    .line 228
    const-string v15, "scaleX"

    .line 229
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 231
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 233
    move-result v3

    .line 236
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    move-result-object v16

    .line 240
    const-string v17, "scaleY"

    .line 241
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 243
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 245
    move-result v3

    .line 248
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    move-result-object v18

    .line 252
    const-string v19, "coverLayerAlpha"

    .line 253
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 255
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 257
    move-result v3

    .line 260
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 261
    move-result-object v20

    .line 264
    const-string v21, "cornerRadius"

    .line 265
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 267
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 269
    move-result v3

    .line 272
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    move-result-object v22

    .line 276
    filled-new-array/range {v11 .. v22}, [Ljava/lang/Object;

    .line 277
    move-result-object v3

    .line 280
    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 281
    move-result-object v2

    .line 284
    const-string v11, "posX"

    .line 285
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    move-result-object v12

    .line 290
    const-string v13, "posY"

    .line 291
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v14

    .line 296
    const-string v15, "scaleX"

    .line 297
    const/high16 v1, 0x3f800000    # 1.0f

    .line 299
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 301
    move-result-object v16

    .line 304
    const-string v17, "scaleY"

    .line 305
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    move-result-object v18

    .line 310
    const-string v19, "coverLayerAlpha"

    .line 311
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 313
    move-result-object v20

    .line 316
    const-string v21, "cornerRadius"

    .line 317
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 319
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    move-result-object v22

    .line 324
    filled-new-array/range {v11 .. v23}, [Ljava/lang/Object;

    .line 325
    move-result-object v0

    .line 328
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 329
    :goto_1
    return-void
    .line 332
.end method

.method private startSingleOpenToFreeform()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplitByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 10
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 13
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 18
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 20
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 22
    move-result-object v2

    .line 25
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 26
    const/4 v3, -0x1

    .line 28
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v1

    .line 37
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 38
    const/4 v2, 0x1

    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 44
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    move-result-object v1

    .line 49
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 52
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 55
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 61
    move-result v1

    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    goto :goto_0

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    move v7, v2

    .line 69
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 70
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 72
    move-result-object v1

    .line 75
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 76
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 81
    new-instance v1, Landroid/graphics/RectF;

    .line 82
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 84
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 87
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 89
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 91
    move-result-object v5

    .line 94
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 95
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    move-result-object v2

    .line 100
    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    .line 101
    move-object v8, v1

    .line 103
    invoke-static/range {v3 .. v8}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    .line 104
    move-result v2

    .line 107
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 108
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 110
    move-result v3

    .line 113
    int-to-float v3, v3

    .line 114
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 115
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 117
    move-result v4

    .line 120
    mul-float/2addr v4, v3

    .line 121
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 122
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 124
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 129
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 131
    move-result v5

    .line 134
    mul-float/2addr v5, v3

    .line 135
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 136
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 138
    move-result v3

    .line 141
    const/high16 v6, 0x40000000    # 2.0f

    .line 142
    div-float/2addr v4, v6

    .line 144
    add-float/2addr v4, v3

    .line 145
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 146
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 148
    move-result v3

    .line 151
    div-float/2addr v5, v6

    .line 152
    add-float/2addr v5, v3

    .line 153
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 154
    move-result v3

    .line 157
    mul-float/2addr v3, v2

    .line 158
    div-float/2addr v3, v6

    .line 159
    sub-float/2addr v4, v3

    .line 160
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 161
    move-result v3

    .line 164
    mul-float/2addr v3, v2

    .line 165
    div-float/2addr v3, v6

    .line 166
    sub-float/2addr v5, v3

    .line 167
    new-instance v3, Landroid/graphics/Rect;

    .line 168
    float-to-int v6, v4

    .line 170
    float-to-int v7, v5

    .line 171
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 172
    move-result v8

    .line 175
    add-float/2addr v8, v4

    .line 176
    float-to-int v4, v8

    .line 177
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 178
    move-result v1

    .line 181
    add-float/2addr v1, v5

    .line 182
    float-to-int v1, v1

    .line 183
    invoke-direct {v3, v6, v7, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 187
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 189
    invoke-static {v1, v4, v3, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 191
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 194
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 196
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 198
    move-result-object v4

    .line 201
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 202
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 204
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 206
    move-result-object v5

    .line 209
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 213
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 215
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 217
    move-result-object v4

    .line 220
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 221
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    move-result-object v2

    .line 226
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 230
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 232
    move-result-object v1

    .line 235
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 236
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 238
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 241
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 243
    move-result-object v1

    .line 246
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 247
    const/4 v2, 0x5

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 250
    const/16 v1, 0xcb

    .line 253
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 255
    return-void
    .line 258
.end method

.method private startSingleOpenToFull()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 23
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitSplitByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 29
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 32
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 37
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 39
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    move-result-object v2

    .line 44
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 45
    const/4 v3, -0x1

    .line 47
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 51
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    move-result-object v1

    .line 56
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 57
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 60
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 63
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 65
    const/high16 v2, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {v1, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 70
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 73
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    move-result-object v2

    .line 78
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 81
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 84
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 86
    move-result-object v1

    .line 89
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 90
    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 93
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 96
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 98
    move-result-object v1

    .line 101
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 102
    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 105
    const/16 v1, 0xca

    .line 108
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 110
    return-void
    .line 113
.end method

.method private startSplitSwap(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 7
    move-result v0

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 13
    if-ne v0, v1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 17
    move-result p1

    .line 20
    const/4 v0, 0x2

    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 24
    goto :goto_0

    .line 27
    :cond_2
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 28
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 33
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->swapSplitTasks(Landroid/window/WindowContainerTransaction;Z)V

    .line 36
    const/16 v0, 0xce

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 41
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 55
    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 57
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    :goto_0
    return-void
    .line 62
.end method

.method private startSplitToFreeform()V
    .locals 14

    .line 1
    new-instance v6, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object v0

    .line 12
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 13
    const/4 v7, 0x1

    .line 15
    invoke-virtual {v6, v0, v7}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 19
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    move-result-object v0

    .line 24
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 25
    invoke-virtual {v6, v0, v7}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 34
    move-result-object v1

    .line 37
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageOfTask(I)I

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 46
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 48
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x1

    .line 55
    move-object v0, v6

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 57
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 61
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 63
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    move-result-object v1

    .line 68
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getStageOfTask(I)I

    .line 71
    move-result v0

    .line 74
    if-ne v0, v7, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 77
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 79
    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x1

    .line 86
    move-object v0, v6

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 93
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    move-result-object v1

    .line 98
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 101
    move-result v0

    .line 104
    const/4 v1, 0x0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 108
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 110
    move-result-object v0

    .line 113
    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 115
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 117
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 119
    move-result-object v2

    .line 122
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 123
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 125
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 133
    move-result-object v0

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    const/4 v0, 0x0

    .line 138
    :goto_1
    if-eqz v0, :cond_4

    .line 139
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 141
    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 143
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 148
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 150
    const/4 v3, -0x1

    .line 152
    invoke-virtual {v2, v6, v0, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 156
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 158
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 162
    move-result v0

    .line 165
    if-ne v0, v7, :cond_5

    .line 166
    move v12, v7

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    move v12, v1

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 171
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 173
    move-result-object v0

    .line 176
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 177
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 179
    move-result-object v9

    .line 182
    new-instance v0, Landroid/graphics/RectF;

    .line 183
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 185
    iget-object v8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 188
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 190
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 192
    move-result-object v10

    .line 195
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 196
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 198
    move-result-object v1

    .line 201
    iget v11, v1, Landroid/app/ActivityManager$RunningTaskInfo;->mTopActivityOrientation:I

    .line 202
    move-object v13, v0

    .line 204
    invoke-static/range {v8 .. v13}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;Landroid/app/TaskInfo;IZLandroid/graphics/RectF;)F

    .line 205
    move-result v1

    .line 208
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 209
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 211
    move-result v2

    .line 214
    int-to-float v2, v2

    .line 215
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 216
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 218
    move-result v3

    .line 221
    mul-float/2addr v3, v2

    .line 222
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 225
    move-result v2

    .line 228
    int-to-float v2, v2

    .line 229
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 230
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 232
    move-result v4

    .line 235
    mul-float/2addr v4, v2

    .line 236
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 237
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 239
    move-result v2

    .line 242
    const/high16 v5, 0x40000000    # 2.0f

    .line 243
    div-float/2addr v3, v5

    .line 245
    add-float/2addr v3, v2

    .line 246
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 247
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 249
    move-result v2

    .line 252
    div-float/2addr v4, v5

    .line 253
    add-float/2addr v4, v2

    .line 254
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 255
    move-result v2

    .line 258
    mul-float/2addr v2, v1

    .line 259
    div-float/2addr v2, v5

    .line 260
    sub-float/2addr v3, v2

    .line 261
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 262
    move-result v2

    .line 265
    mul-float/2addr v2, v1

    .line 266
    div-float/2addr v2, v5

    .line 267
    sub-float/2addr v4, v2

    .line 268
    new-instance v2, Landroid/graphics/Rect;

    .line 269
    float-to-int v5, v3

    .line 271
    float-to-int v7, v4

    .line 272
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 273
    move-result v8

    .line 276
    add-float/2addr v8, v3

    .line 277
    float-to-int v3, v8

    .line 278
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 279
    move-result v0

    .line 282
    add-float/2addr v0, v4

    .line 283
    float-to-int v0, v0

    .line 284
    invoke-direct {v2, v5, v7, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 288
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 290
    invoke-static {v0, v3, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 292
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 295
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 297
    move-result-object v0

    .line 300
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 301
    invoke-virtual {v6, v0, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 303
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 306
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 308
    move-result-object v0

    .line 311
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 312
    const/4 v3, 0x5

    .line 314
    invoke-virtual {v6, v0, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 315
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 318
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 320
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 322
    move-result-object v3

    .line 325
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 326
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 328
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 330
    move-result-object v4

    .line 333
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 337
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 339
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 341
    move-result-object v3

    .line 344
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 345
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 347
    move-result-object v1

    .line 350
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    const/16 v0, 0xcd

    .line 354
    invoke-direct {p0, v0, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 356
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 359
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 364
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 366
    move-result-object v1

    .line 369
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 372
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 375
    invoke-virtual {p0, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 377
    return-void
    .line 380
.end method

.method private startSplitToFull()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 6
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 12
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 21
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 23
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 26
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 28
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    move-result-object v2

    .line 33
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 34
    const/4 v3, -0x1

    .line 36
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 40
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 42
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 44
    move-result-object v2

    .line 47
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 50
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x1

    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 59
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 66
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 68
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 70
    move-result-object v5

    .line 73
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 74
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 76
    move-result v1

    .line 79
    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 82
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 84
    move-result-object v1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move-object v1, v4

    .line 89
    :goto_0
    if-eqz v1, :cond_2

    .line 90
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 92
    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 94
    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    :cond_2
    new-instance v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 99
    invoke-direct {v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 101
    const/high16 v5, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v1, v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 106
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 109
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    move-result-object v5

    .line 114
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 115
    invoke-virtual {v0, v5, v1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 117
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 120
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 122
    move-result-object v1

    .line 125
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 126
    invoke-virtual {v0, v1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 128
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 131
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 133
    move-result-object v1

    .line 136
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 139
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 142
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 144
    move-result-object v1

    .line 147
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 148
    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 150
    const/16 v1, 0xcc

    .line 153
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 155
    return-void
    .line 158
.end method

.method private startSwitch(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 6
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 8
    move-result-object v2

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v3, p1

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 18
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 24
    move-result v0

    .line 27
    const-string v1, ", hotAreaType="

    .line 28
    const-string/jumbo v2, "unknown window drag, windowingMode="

    .line 30
    const/4 v3, 0x5

    .line 33
    const/4 v4, 0x2

    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v0, v5, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 38
    move-result v0

    .line 41
    if-ne v0, v3, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startFullToFreeform()V

    .line 44
    goto/16 :goto_4

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 49
    move-result v0

    .line 52
    if-eq v0, v5, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 55
    move-result v0

    .line 58
    if-ne v0, v4, :cond_1

    .line 59
    goto :goto_0

    .line 61
    :cond_1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 69
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 75
    move-result v2

    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 85
    move-result p1

    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 99
    goto/16 :goto_4

    .line 102
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startFullToSingleOpen(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V

    .line 104
    goto/16 :goto_4

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 109
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 111
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 115
    move-result v0

    .line 118
    const/4 v6, 0x6

    .line 119
    if-ne v0, v6, :cond_11

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 124
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    move-result-object v1

    .line 129
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 132
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 138
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 140
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 142
    move-result-object v1

    .line 145
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 148
    move-result v0

    .line 151
    if-eqz v0, :cond_4

    .line 152
    goto :goto_1

    .line 154
    :cond_4
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 162
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 164
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 168
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", dragTask is not in split"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 183
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 187
    goto/16 :goto_4

    .line 190
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 192
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 194
    move-result v0

    .line 197
    const-string/jumbo v1, "unexpected hot area type: "

    .line 198
    const-string v2, "isDragSplit is false!"

    .line 201
    if-ne v0, v4, :cond_b

    .line 203
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 205
    move-result v0

    .line 208
    if-nez v0, :cond_6

    .line 209
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSplitToFull()V

    .line 211
    goto/16 :goto_4

    .line 214
    :cond_6
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 216
    move-result v0

    .line 219
    if-ne v0, v3, :cond_7

    .line 220
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSplitToFreeform()V

    .line 222
    goto/16 :goto_4

    .line 225
    :cond_7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 227
    move-result v0

    .line 230
    if-eq v0, v5, :cond_9

    .line 231
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 233
    move-result v0

    .line 236
    if-ne v0, v4, :cond_8

    .line 237
    goto :goto_2

    .line 239
    :cond_8
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 247
    move-result p1

    .line 250
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object p1

    .line 257
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 261
    goto/16 :goto_4

    .line 264
    :cond_9
    :goto_2
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 266
    if-eqz v0, :cond_a

    .line 268
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSplitSwap(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V

    .line 270
    goto/16 :goto_4

    .line 273
    :cond_a
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 275
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 280
    goto/16 :goto_4

    .line 283
    :cond_b
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 285
    move-result v0

    .line 288
    if-nez v0, :cond_c

    .line 289
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSingleOpenToFull()V

    .line 291
    goto :goto_4

    .line 294
    :cond_c
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 295
    move-result v0

    .line 298
    if-ne v0, v3, :cond_d

    .line 299
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSingleOpenToFreeform()V

    .line 301
    goto :goto_4

    .line 304
    :cond_d
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 305
    move-result v0

    .line 308
    if-eq v0, v5, :cond_f

    .line 309
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 311
    move-result v0

    .line 314
    if-ne v0, v4, :cond_e

    .line 315
    goto :goto_3

    .line 317
    :cond_e
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 325
    move-result p1

    .line 328
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object p1

    .line 335
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 339
    goto :goto_4

    .line 342
    :cond_f
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 343
    invoke-static {v5, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 348
    if-eqz v0, :cond_10

    .line 350
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSingleOpenSwap(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V

    .line 352
    goto :goto_4

    .line 355
    :cond_10
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 356
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 361
    goto :goto_4

    .line 364
    :cond_11
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 372
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 374
    move-result-object v2

    .line 377
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 378
    move-result v2

    .line 381
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 388
    move-result p1

    .line 391
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object p1

    .line 398
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 402
    :goto_4
    return-void
    .line 405
.end method

.method private startTransition(ILandroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v2, "startTransition type="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setIsDraggingDot(Z)V

    .line 25
    const/16 v0, 0xc9

    .line 28
    if-ne p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 32
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchStart()V

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 37
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->deferUpdateSoScState()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 42
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setMultiWinSwitchAnimationRunning(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 48
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 50
    move-result-object p2

    .line 53
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
    .line 63
.end method

.method private toastNotSupport(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 17
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method private updateTipsLayout(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 2
    if-eq p1, v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->hideAll()V

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 28
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 34
    move-result v0

    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 40
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->showFullscreen()V

    .line 46
    goto/16 :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 51
    move-result v0

    .line 54
    const/4 v2, 0x5

    .line 55
    if-ne v0, v2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 58
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 64
    move-result v0

    .line 67
    if-eq v0, v2, :cond_1

    .line 68
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 70
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->showFreeform()V

    .line 76
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 80
    move-result v0

    .line 83
    const/4 v2, 0x2

    .line 84
    if-ne v0, v1, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 87
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 89
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 91
    move-result-object v1

    .line 94
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 97
    move-result v0

    .line 100
    if-nez v0, :cond_3

    .line 101
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 103
    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 107
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 109
    move-result p1

    .line 112
    if-ne p1, v2, :cond_2

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 116
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 118
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->showSplitLeft()V

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 126
    move-result p1

    .line 129
    if-ne p1, v2, :cond_5

    .line 130
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 132
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 134
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 136
    move-result-object v0

    .line 139
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 140
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 142
    move-result p1

    .line 145
    if-nez p1, :cond_5

    .line 146
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 148
    if-eqz p1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 152
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 154
    move-result p1

    .line 157
    if-ne p1, v2, :cond_4

    .line 158
    goto :goto_0

    .line 160
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTipsController:Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;

    .line 161
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsController;->getTipsLayout()Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;

    .line 163
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiTipsLayout;->showSplitRight()V

    .line 167
    :cond_5
    :goto_0
    return-void
    .line 170
.end method


# virtual methods
.method public backToOriginal()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal(Z)V

    return-void
.end method

.method public backToOriginal(Z)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    sget-object v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "backToOriginal animate="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSingleOpenDragType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onSingleOpenDragEnd(I)V

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenCornerRadius:F

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 8
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    goto :goto_0

    .line 9
    :cond_2
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 10
    :goto_0
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    const-string v6, "posX"

    .line 11
    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    const-string v6, "posY"

    .line 12
    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    const-string v6, "scaleX"

    .line 13
    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    const-string v6, "scaleY"

    .line 14
    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$3;

    invoke-direct {v5, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V

    .line 15
    sget-object v6, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 16
    new-instance v6, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    const-string v7, "FF_UI/MULTI_TASK_TYPE_MWS"

    invoke-direct {v6, v5, v7}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 17
    filled-new-array {v6}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v26

    .line 18
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mBackToOriginalAnimationRunning:Z

    .line 19
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 20
    invoke-static {v7}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 21
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v8, "posX"

    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 22
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v10, "posY"

    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 23
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-string v12, "scaleX"

    .line 24
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v14, "scaleY"

    .line 25
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const-string v16, "leashAlpha"

    .line 26
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const-string v18, "coverLayerAlpha"

    .line 27
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const-string v20, "cornerRadius"

    .line 28
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const-string v22, "otherSidePosX"

    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 29
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    const-string v24, "otherSidePosY"

    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 30
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    filled-new-array/range {v8 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    .line 31
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 32
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v8, "posX"

    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 33
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v10, "posY"

    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 34
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const-string v12, "scaleX"

    .line 35
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v14, "scaleY"

    .line 36
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const-string v16, "leashAlpha"

    .line 37
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    const-string v18, "coverLayerAlpha"

    .line 38
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    const-string v20, "cornerRadius"

    .line 39
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const-string v22, "otherSidePosX"

    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 40
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    const-string v24, "otherSidePosY"

    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 41
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    filled-new-array/range {v8 .. v26}, [Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->releaseCoverLayer()V

    .line 9
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 14
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishHomeTransition()V

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setIsDraggingDot(Z)V

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 25
    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    move-result-object p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 35
    move-result p0

    .line 38
    const/4 v0, 0x6

    .line 39
    if-ne p0, v0, :cond_1

    .line 40
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScUtils;->updateSoScSurfaceForMultiWinSwitch()V

    .line 46
    :cond_1
    return-void
    .line 49
.end method

.method public finishHomeTransition()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;->finishAnimation()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public freeformFirstEnterHotArea()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->hideCurrentInputMethod()V

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized()V

    .line 9
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->initTipsLayout()V

    .line 12
    return-void
    .line 15
.end method

.method public getOtherSideTargetPos(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 2
    if-eqz v0, :cond_f

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 21
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 23
    int-to-float v0, v0

    .line 25
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 31
    move-result-object v0

    .line 34
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    int-to-float v0, v0

    .line 44
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 48
    if-nez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 52
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 54
    int-to-float v0, v0

    .line 56
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 60
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 62
    move-result-object v0

    .line 65
    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 66
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 70
    move-result v1

    .line 73
    sub-int/2addr v0, v1

    .line 74
    int-to-float v0, v0

    .line 75
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 76
    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastSplitHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 78
    goto/16 :goto_2

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 82
    move-result v0

    .line 85
    const/4 v2, 0x2

    .line 86
    if-ne v0, v2, :cond_7

    .line 87
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 89
    if-eqz v0, :cond_5

    .line 91
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 93
    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 97
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 99
    int-to-float v0, v0

    .line 101
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 102
    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 105
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 107
    int-to-float v0, v0

    .line 109
    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 110
    goto :goto_1

    .line 112
    :cond_5
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 113
    if-nez v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 117
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 119
    int-to-float v0, v0

    .line 121
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 122
    goto :goto_1

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 125
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 127
    int-to-float v0, v0

    .line 129
    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 130
    :goto_1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastSplitHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 132
    goto/16 :goto_2

    .line 134
    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastSplitHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 136
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 138
    move-result p1

    .line 141
    if-ne p1, v1, :cond_b

    .line 142
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 144
    if-eqz p1, :cond_9

    .line 146
    iget p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 148
    if-nez p1, :cond_8

    .line 150
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 152
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 154
    int-to-float p0, p0

    .line 156
    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 157
    goto :goto_2

    .line 159
    :cond_8
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 160
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 162
    move-result-object p1

    .line 165
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 166
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 170
    move-result p0

    .line 173
    sub-int/2addr p1, p0

    .line 174
    int-to-float p0, p1

    .line 175
    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 176
    goto :goto_2

    .line 178
    :cond_9
    iget p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 179
    if-nez p1, :cond_a

    .line 181
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 183
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 185
    int-to-float p0, p0

    .line 187
    iput p0, p2, Landroid/graphics/PointF;->y:F

    .line 188
    goto :goto_2

    .line 190
    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 191
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 193
    move-result-object p1

    .line 196
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 197
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 201
    move-result p0

    .line 204
    sub-int/2addr p1, p0

    .line 205
    int-to-float p0, p1

    .line 206
    iput p0, p2, Landroid/graphics/PointF;->y:F

    .line 207
    goto :goto_2

    .line 209
    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastSplitHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 210
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 212
    move-result p1

    .line 215
    if-ne p1, v2, :cond_f

    .line 216
    iget-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 218
    if-eqz p1, :cond_d

    .line 220
    iget p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 222
    if-nez p1, :cond_c

    .line 224
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 226
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 228
    int-to-float p0, p0

    .line 230
    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 231
    goto :goto_2

    .line 233
    :cond_c
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 234
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 236
    int-to-float p0, p0

    .line 238
    iput p0, p2, Landroid/graphics/PointF;->x:F

    .line 239
    goto :goto_2

    .line 241
    :cond_d
    iget p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 242
    if-nez p1, :cond_e

    .line 244
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 246
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 248
    int-to-float p0, p0

    .line 250
    iput p0, p2, Landroid/graphics/PointF;->y:F

    .line 251
    goto :goto_2

    .line 253
    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 254
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 256
    int-to-float p0, p0

    .line 258
    iput p0, p2, Landroid/graphics/PointF;->y:F

    .line 259
    :cond_f
    :goto_2
    return-void
    .line 261
.end method

.method public handleFreeformCancelEvent(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "handleFreeformCancelEvent"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 9
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCanceled:Z

    .line 12
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 14
    move-result v0

    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 23
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->moveFreeformToTargetPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;Landroid/graphics/Rect;Z)V

    .line 30
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 33
    return-void
    .line 36
.end method

.method public handleFreeformDownEvent(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "handleFreeformDownEvent"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 9
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCanceled:Z

    .line 12
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isEnteredOtherHotArea:Z

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->handleDownEvent(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 16
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 19
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 21
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->initHotAreas(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 31
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 35
    return-void
    .line 37
.end method

.method public handleFreeformMoveEvent(FFFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->checkIfNeedCancel()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v5, Landroid/graphics/PointF;

    .line 9
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->EVENT_VELOCITY_THRESHOLD:F

    .line 18
    cmpg-float p3, p3, v1

    .line 20
    if-gez p3, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleX()F

    .line 25
    move-result p3

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleY()F

    .line 31
    move-result v0

    .line 34
    invoke-virtual {v5, p3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 35
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 39
    invoke-virtual {p3, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 41
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleX()F

    .line 45
    move-result v0

    .line 48
    invoke-virtual {p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleY()F

    .line 49
    move-result v1

    .line 52
    invoke-virtual {v5, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 53
    invoke-direct {p0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->updateTipsLayout(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V

    .line 56
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 59
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 61
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 63
    move v2, p1

    .line 65
    move v3, p2

    .line 66
    move-object v6, p4

    .line 67
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->handleMoveEvent(FFLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 68
    return-void
    .line 71
.end method

.method public handleFreeformToPin()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 2
    const-string v1, "handleFreeformToPin"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 9
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 12
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->releaseCover()V

    .line 14
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 17
    return-void
    .line 20
.end method

.method public handleFreeformUpEvent(FFFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v2, p1

    .line 3
    move v3, p2

    .line 4
    move-object/from16 v6, p4

    .line 5
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->checkIfNeedCancel()Z

    .line 7
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 14
    const-string v4, "handleFreeformUpEvent"

    .line 16
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v5, Landroid/graphics/PointF;

    .line 21
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 23
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 26
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 34
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 36
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 39
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    move-result-object v1

    .line 44
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 45
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 55
    move-result-object v1

    .line 58
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 59
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 61
    move-result v2

    .line 64
    const/4 v3, 0x5

    .line 65
    if-ne v2, v3, :cond_1

    .line 66
    const v2, 0x7f1303ab    # @string/drag_shadow_freeform_unsupported_app '%s doesn't support floating windows'

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    const v2, 0x7f1303b2    # @string/drag_shadow_split_unsupported_app '%s doesn't support Split screen'

    .line 72
    :goto_0
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0, v3, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->toastNotSupport(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 77
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 80
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 82
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 84
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 86
    move-result-object v6

    .line 89
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 90
    const/4 v8, 0x0

    .line 92
    const-string/jumbo v9, "\u4e0d\u652f\u6301\u62d6\u62fd"

    .line 93
    invoke-static/range {v4 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 96
    goto :goto_1

    .line 99
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 100
    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 102
    move-result-object v9

    .line 105
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 106
    move-result v1

    .line 109
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 110
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getOriginHotAreaType()I

    .line 112
    move-result v4

    .line 115
    if-eq v1, v4, :cond_3

    .line 116
    iget v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->EVENT_VELOCITY_THRESHOLD:F

    .line 118
    cmpg-float v1, p3, v1

    .line 120
    if-gez v1, :cond_3

    .line 122
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleX()F

    .line 124
    move-result v1

    .line 127
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleY()F

    .line 128
    move-result v4

    .line 131
    invoke-virtual {v5, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 132
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 135
    move v2, p1

    .line 137
    move v3, p2

    .line 138
    move-object v4, v9

    .line 139
    move-object/from16 v6, p4

    .line 140
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->handleUpEvent(FFLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 142
    goto :goto_1

    .line 145
    :cond_3
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 146
    invoke-virtual {v1, p1, p2, v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->handleFreeformNoSwitchUpEvent(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 148
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 151
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 153
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 155
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 157
    move-result-object v8

    .line 160
    const/4 v10, 0x0

    .line 161
    const-string/jumbo v11, "\u672a\u53d1\u751f\u5207\u6362"

    .line 162
    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 165
    :goto_1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 168
    return-void
    .line 171
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 86

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v2, :cond_1

    .line 12
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->getInstance()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->isSupported()Z

    .line 18
    move-result v2

    .line 21
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 22
    invoke-virtual {v5}, Lcom/android/wm/shell/transition/Transitions;->isIdle()Z

    .line 24
    move-result v5

    .line 27
    if-eqz v2, :cond_0

    .line 28
    if-eqz v5, :cond_0

    .line 30
    iget-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mBackToOriginalAnimationRunning:Z

    .line 32
    if-nez v6, :cond_0

    .line 34
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 36
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v6

    .line 41
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 42
    if-eqz v6, :cond_0

    .line 44
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 46
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    move-result-object v6

    .line 51
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 52
    if-eqz v6, :cond_0

    .line 54
    move v6, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move v6, v3

    .line 58
    :goto_0
    iput-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->shouldHandleEvent:Z

    .line 59
    sget-object v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 63
    const-string v8, "handleMotionEvent shouldHandleEvent="

    .line 65
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-boolean v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->shouldHandleEvent:Z

    .line 70
    const-string v9, ", multiWinSwitchIsSupported="

    .line 72
    const-string v10, ", transitionsIsIdle="

    .line 74
    invoke-static {v7, v8, v9, v2, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 76
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, ", mBackToOriginalAnimationRunning="

    .line 82
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mBackToOriginalAnimationRunning:Z

    .line 87
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, ", topActivity="

    .line 92
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 97
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    move-result-object v2

    .line 102
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 103
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, ", realActivity="

    .line 108
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 113
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 115
    move-result-object v2

    .line 118
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 119
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 127
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    iget-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->shouldHandleEvent:Z

    .line 131
    if-nez v2, :cond_2

    .line 133
    return-void

    .line 135
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 136
    move-result v2

    .line 139
    const/4 v5, -0x1

    .line 140
    if-nez v2, :cond_3

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 143
    move-result v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 147
    move-result v2

    .line 150
    iput v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPointDownId:I

    .line 151
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCanceled:Z

    .line 153
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 155
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->reset()V

    .line 157
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 160
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->clear()V

    .line 162
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 165
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->reset()V

    .line 167
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 170
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 172
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 174
    move-result-object v2

    .line 177
    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 178
    int-to-float v2, v2

    .line 180
    const/high16 v6, 0x40000000    # 2.0f

    .line 181
    div-float/2addr v2, v6

    .line 183
    float-to-int v2, v2

    .line 184
    iput v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mShapeLayerHeight:I

    .line 185
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isUpOrCancelOccured:Z

    .line 187
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isEnteredOtherHotArea:Z

    .line 189
    iput v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSingleOpenDragType:I

    .line 191
    :cond_3
    iget-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isUpOrCancelOccured:Z

    .line 193
    if-eqz v2, :cond_4

    .line 195
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 197
    const-string v1, "handleMotionEvent isUpOrCancelOccured=true!"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 204
    :cond_4
    iget v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPointDownId:I

    .line 205
    if-eq v2, v5, :cond_22

    .line 207
    shl-int v2, v4, v2

    .line 209
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    .line 211
    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    .line 215
    move-result v2

    .line 218
    const/4 v6, 0x6

    .line 219
    const/high16 v7, 0x3f800000    # 1.0f

    .line 220
    const/4 v8, 0x2

    .line 222
    if-eqz v2, :cond_18

    .line 223
    const-string v9, "FF_UI/MWS_ACTION_MOVE"

    .line 225
    if-eq v2, v4, :cond_11

    .line 227
    const/4 v5, 0x3

    .line 229
    if-eq v2, v8, :cond_7

    .line 230
    if-eq v2, v5, :cond_5

    .line 232
    goto/16 :goto_d

    .line 234
    :cond_5
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 236
    const-string v2, "handleMotionEvent ACTION_CANCEL"

    .line 238
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 243
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoveOccured()Z

    .line 245
    move-result v1

    .line 248
    if-eqz v1, :cond_6

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 251
    :cond_6
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isUpOrCancelOccured:Z

    .line 254
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCanceled:Z

    .line 256
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal(Z)V

    .line 258
    goto/16 :goto_d

    .line 261
    :cond_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 263
    move-result v2

    .line 266
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 267
    move-result v1

    .line 270
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 271
    new-array v11, v8, [F

    .line 273
    aput v2, v11, v3

    .line 275
    aput v1, v11, v4

    .line 277
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->update([F)V

    .line 279
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 282
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoveOccured()Z

    .line 284
    move-result v10

    .line 287
    if-eqz v10, :cond_22

    .line 288
    iget-boolean v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFirstMove:Z

    .line 290
    if-eqz v10, :cond_b

    .line 292
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 294
    invoke-static {v9}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 296
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 299
    invoke-virtual {v9, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setIsDraggingDot(Z)V

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->initTipsLayout()V

    .line 304
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 307
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 309
    move-result-object v9

    .line 312
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 313
    move-result v9

    .line 316
    if-ne v9, v4, :cond_8

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 319
    move-result-object v6

    .line 322
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 323
    iget v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    .line 325
    invoke-direct {v0, v6, v9, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->initFullScreenDragCornerRadius(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startHomeTransition()V

    .line 330
    goto :goto_1

    .line 333
    :cond_8
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 334
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 336
    move-result-object v9

    .line 339
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 340
    move-result v9

    .line 343
    if-ne v9, v6, :cond_a

    .line 344
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 346
    invoke-static {v3, v6}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 348
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 351
    invoke-virtual {v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 353
    move-result v6

    .line 356
    if-eq v6, v8, :cond_a

    .line 357
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 359
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 361
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 363
    move-result-object v9

    .line 366
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 367
    invoke-virtual {v6, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 369
    move-result v6

    .line 372
    if-eqz v6, :cond_9

    .line 373
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSingleOpenDragType:I

    .line 375
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 377
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onSingleOpenDragStart()V

    .line 379
    goto :goto_1

    .line 382
    :cond_9
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 383
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 385
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 387
    move-result-object v9

    .line 390
    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 391
    invoke-virtual {v6, v9}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 393
    move-result v6

    .line 396
    if-eqz v6, :cond_a

    .line 397
    iput v8, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSingleOpenDragType:I

    .line 399
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 401
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onSingleOpenDragStart()V

    .line 403
    :cond_a
    :goto_1
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFirstMove:Z

    .line 406
    :cond_b
    iget-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isEnteredOtherHotArea:Z

    .line 408
    if-nez v6, :cond_d

    .line 410
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 412
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->getXYVelocity()F

    .line 414
    move-result v6

    .line 417
    iget v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->EVENT_VELOCITY_THRESHOLD:F

    .line 418
    cmpg-float v6, v6, v9

    .line 420
    if-gez v6, :cond_c

    .line 422
    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isCurrentPosHotAreaDifOri(FF)Z

    .line 424
    move-result v6

    .line 427
    if-eqz v6, :cond_c

    .line 428
    goto :goto_2

    .line 430
    :cond_c
    invoke-direct {v0, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->handleNoSwitchMove(FF)V

    .line 431
    goto/16 :goto_d

    .line 434
    :cond_d
    :goto_2
    new-instance v6, Landroid/graphics/PointF;

    .line 436
    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 438
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 441
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->getXYVelocity()F

    .line 443
    move-result v9

    .line 446
    iget v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->EVENT_VELOCITY_THRESHOLD:F

    .line 447
    cmpg-float v9, v9, v10

    .line 449
    if-gez v9, :cond_e

    .line 451
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 453
    invoke-virtual {v9, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 455
    move-result-object v9

    .line 458
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleX()F

    .line 459
    move-result v10

    .line 462
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleY()F

    .line 463
    move-result v11

    .line 466
    invoke-virtual {v6, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 467
    invoke-direct {v0, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->updateTipsLayout(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V

    .line 470
    iput-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 473
    goto :goto_3

    .line 475
    :cond_e
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 476
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleX()F

    .line 478
    move-result v9

    .line 481
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 482
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getScaleY()F

    .line 484
    move-result v10

    .line 487
    invoke-virtual {v6, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 488
    :goto_3
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 491
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideTargetPos:Landroid/graphics/PointF;

    .line 493
    invoke-virtual {v0, v9, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOtherSideTargetPos(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/graphics/PointF;)V

    .line 495
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 498
    invoke-direct {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;-><init>()V

    .line 500
    new-instance v10, Landroid/graphics/RectF;

    .line 503
    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 505
    iput-object v10, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 508
    new-instance v10, Landroid/graphics/RectF;

    .line 510
    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 512
    iput-object v10, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 515
    const/16 v10, 0x8

    .line 517
    new-array v10, v10, [F

    .line 519
    iput-object v10, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 521
    new-instance v10, Landroid/graphics/RectF;

    .line 523
    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 525
    iput-object v10, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 528
    iget-boolean v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isEnteredOtherHotArea:Z

    .line 530
    const/4 v11, 0x0

    .line 532
    if-eqz v10, :cond_f

    .line 533
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 535
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 537
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 539
    move-result v10

    .line 542
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 543
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 545
    move-result v12

    .line 548
    invoke-virtual {v5, v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setShapeSwitchToType(IZ)V

    .line 549
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 552
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 554
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 556
    move-result v10

    .line 559
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 560
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 562
    move-result v12

    .line 565
    invoke-virtual {v5, v10, v12, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeTypeAnimInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 566
    goto/16 :goto_5

    .line 569
    :cond_f
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isEnteredOtherHotArea:Z

    .line 571
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 573
    :try_start_0
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 575
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 577
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 579
    move-result-object v12

    .line 582
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 583
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 585
    move-result-object v12

    .line 588
    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 589
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    goto :goto_4

    .line 593
    :catch_0
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 594
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 596
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 598
    move-result-object v12

    .line 601
    iget-object v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 602
    invoke-virtual {v10, v12}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 604
    move-result-object v10

    .line 607
    :goto_4
    iget v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mAppIconSizePx:I

    .line 608
    invoke-static {v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->zoomDrawableIfNeed(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 610
    move-result-object v19

    .line 613
    iget-object v13, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 614
    iget-object v14, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 616
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 618
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 620
    move-result v15

    .line 623
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 624
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 626
    move-result v16

    .line 629
    iget v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mShapeLayerWidth:I

    .line 630
    iget v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mShapeLayerHeight:I

    .line 632
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 634
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 636
    move-result v20

    .line 639
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 640
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 642
    move-result v21

    .line 645
    iget-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 646
    move/from16 v17, v10

    .line 648
    move/from16 v18, v12

    .line 650
    move/from16 v22, v4

    .line 652
    invoke-virtual/range {v13 .. v22}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->createCoverLayer(Landroid/content/Context;IIIILandroid/graphics/Bitmap;IZZ)V

    .line 654
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 657
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 659
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 661
    move-result v10

    .line 664
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 665
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 667
    move-result v12

    .line 670
    invoke-virtual {v4, v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setShapeSwitchToType(IZ)V

    .line 671
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 674
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 676
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 678
    move-result v10

    .line 681
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 682
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 684
    move-result v12

    .line 687
    invoke-virtual {v4, v10, v12, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeTypeAnimInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 688
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 691
    invoke-virtual {v4, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->initShadowInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 693
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 696
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->drawShapeCoverContent()V

    .line 698
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 701
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 703
    move-result-object v4

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 707
    move-result-object v10

    .line 710
    invoke-virtual {v4, v10, v5}, Landroid/view/SurfaceControl$Transaction;->deferAnimation(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 714
    move-result-object v5

    .line 717
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 718
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 720
    move-result v10

    .line 723
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 724
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 726
    move-result v12

    .line 729
    invoke-virtual {v4, v5, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 733
    move-result-object v5

    .line 736
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 737
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 739
    move-result v10

    .line 742
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 743
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 745
    move-result v12

    .line 748
    invoke-virtual {v4, v5, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 749
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 752
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 754
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 756
    move-result-object v10

    .line 759
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 760
    move-result v10

    .line 763
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 764
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 766
    move-result-object v12

    .line 769
    invoke-virtual {v5, v10, v12, v4}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->reparentToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 770
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 773
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 775
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 777
    move-result-object v10

    .line 780
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 781
    move-result v10

    .line 784
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 785
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 787
    move-result-object v12

    .line 790
    invoke-virtual {v5, v10, v12, v4}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->reparentToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 791
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 794
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 796
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 798
    move-result v14

    .line 801
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 802
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 804
    move-result v15

    .line 807
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 808
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 810
    move-result v16

    .line 813
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 814
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 816
    move-result v17

    .line 819
    const/16 v18, 0x0

    .line 820
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 822
    move-object v13, v4

    .line 824
    move-object/from16 v19, v5

    .line 825
    invoke-virtual/range {v12 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 830
    move-result-object v5

    .line 833
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 834
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 836
    move-result v10

    .line 839
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 840
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 842
    move-result v12

    .line 845
    invoke-virtual {v4, v5, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 846
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 849
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 851
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 853
    move-result v10

    .line 856
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 857
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 859
    move-result v12

    .line 862
    invoke-virtual {v5, v4, v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;II)V

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getOperateTaskLeash()Landroid/view/SurfaceControl;

    .line 866
    move-result-object v5

    .line 869
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 870
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 872
    move-result v10

    .line 875
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 876
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 878
    move-result v12

    .line 881
    div-float/2addr v10, v12

    .line 882
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 883
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 885
    move-result v12

    .line 888
    iget-object v13, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 889
    invoke-virtual {v13}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 891
    move-result v13

    .line 894
    div-float/2addr v12, v13

    .line 895
    invoke-virtual {v4, v5, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 896
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 899
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 901
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 903
    move-result v10

    .line 906
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 907
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 909
    move-result v12

    .line 912
    div-float/2addr v10, v12

    .line 913
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 914
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 916
    move-result v12

    .line 919
    iget-object v13, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 920
    invoke-virtual {v13}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 922
    move-result v13

    .line 925
    div-float/2addr v12, v13

    .line 926
    invoke-virtual {v5, v4, v10, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 927
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 930
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 932
    move-result-object v5

    .line 935
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 936
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 939
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 941
    move-result-object v5

    .line 944
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 945
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 948
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 950
    move-result-object v5

    .line 953
    const v10, 0x7ffffffe

    .line 954
    invoke-virtual {v4, v5, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 957
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 960
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 962
    move-result-object v5

    .line 965
    const v10, 0x7fffffff

    .line 966
    invoke-virtual {v4, v5, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 969
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 972
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 975
    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 977
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 980
    invoke-virtual {v4, v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setLeashAlpha(F)V

    .line 982
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 985
    invoke-virtual {v4, v11}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setCoverLayerAlpha(F)V

    .line 987
    :goto_5
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 990
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 992
    move-result v4

    .line 995
    if-eqz v4, :cond_10

    .line 996
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 998
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1000
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1002
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 1004
    move-result v10

    .line 1007
    invoke-virtual {v4, v5, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setShadowForSnapShotLayer(Landroid/content/Context;F)V

    .line 1008
    move v4, v7

    .line 1011
    goto :goto_6

    .line 1012
    :cond_10
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 1013
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1015
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 1017
    move-result v5

    .line 1020
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->reShadowForSnapShotLayer(F)V

    .line 1021
    const/high16 v7, 0x3f400000    # 0.75f

    .line 1024
    move v4, v7

    .line 1026
    move v7, v11

    .line 1027
    :goto_6
    iget v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCoverCornerRadius:F

    .line 1028
    new-instance v10, Lmiuix/animation/base/AnimSpecialConfig;

    .line 1030
    invoke-direct {v10}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 1032
    new-array v11, v8, [F

    .line 1035
    fill-array-data v11, :array_0

    .line 1037
    const/4 v12, -0x2

    .line 1040
    invoke-virtual {v10, v12, v11}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 1041
    move-result-object v10

    .line 1044
    check-cast v10, Lmiuix/animation/base/AnimSpecialConfig;

    .line 1045
    new-instance v11, Lmiuix/animation/base/AnimSpecialConfig;

    .line 1047
    invoke-direct {v11}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 1049
    new-array v13, v8, [F

    .line 1052
    fill-array-data v13, :array_1

    .line 1054
    invoke-virtual {v11, v12, v13}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 1057
    move-result-object v11

    .line 1060
    check-cast v11, Lmiuix/animation/base/AnimSpecialConfig;

    .line 1061
    new-instance v13, Lmiuix/animation/base/AnimSpecialConfig;

    .line 1063
    invoke-direct {v13}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 1065
    new-array v14, v8, [F

    .line 1068
    fill-array-data v14, :array_2

    .line 1070
    invoke-virtual {v13, v12, v14}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 1073
    move-result-object v12

    .line 1076
    check-cast v12, Lmiuix/animation/base/AnimSpecialConfig;

    .line 1077
    new-instance v13, Lmiuix/animation/base/AnimConfig;

    .line 1079
    invoke-direct {v13}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 1081
    const-string v14, "posX"

    .line 1084
    invoke-virtual {v13, v14, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1086
    move-result-object v13

    .line 1089
    const-string v14, "posY"

    .line 1090
    invoke-virtual {v13, v14, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1092
    move-result-object v13

    .line 1095
    const-string v14, "scaleX"

    .line 1096
    invoke-virtual {v13, v14, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1098
    move-result-object v13

    .line 1101
    const-string v14, "scaleY"

    .line 1102
    invoke-virtual {v13, v14, v10}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1104
    move-result-object v10

    .line 1107
    sget-object v13, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 1108
    const-string v14, "otherSidePosX"

    .line 1110
    invoke-virtual {v10, v14, v13}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1112
    move-result-object v10

    .line 1115
    const-string v14, "otherSidePosY"

    .line 1116
    invoke-virtual {v10, v14, v13}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1118
    move-result-object v10

    .line 1121
    const-string v13, "changeLayerLeft"

    .line 1122
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1124
    move-result-object v10

    .line 1127
    const-string v13, "changeLayerTop"

    .line 1128
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1130
    move-result-object v10

    .line 1133
    const-string v13, "changeLayerRight"

    .line 1134
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1136
    move-result-object v10

    .line 1139
    const-string v13, "changeLayerBottom"

    .line 1140
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1142
    move-result-object v10

    .line 1145
    const-string v13, "changeLayerTopLeftXRadius"

    .line 1146
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1148
    move-result-object v10

    .line 1151
    const-string v13, "changeLayerTopLeftYRadius"

    .line 1152
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1154
    move-result-object v10

    .line 1157
    const-string v13, "changeLayerTopRightXRadius"

    .line 1158
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1160
    move-result-object v10

    .line 1163
    const-string v13, "changeLayerTopRightYRadius"

    .line 1164
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1166
    move-result-object v10

    .line 1169
    const-string v13, "changeLayerBottomRightXRadius"

    .line 1170
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1172
    move-result-object v10

    .line 1175
    const-string v13, "changeLayerBottomRightYRadius"

    .line 1176
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1178
    move-result-object v10

    .line 1181
    const-string v13, "changeLayerBottomLeftXRadius"

    .line 1182
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1184
    move-result-object v10

    .line 1187
    const-string v13, "changeLayerBottomLeftYRadius"

    .line 1188
    invoke-virtual {v10, v13, v11}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1190
    move-result-object v10

    .line 1193
    const-string v11, "appDesRectLeft"

    .line 1194
    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1196
    move-result-object v10

    .line 1199
    const-string v11, "appDesRectTop"

    .line 1200
    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1202
    move-result-object v10

    .line 1205
    const-string v11, "appDesRectRight"

    .line 1206
    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1208
    move-result-object v10

    .line 1211
    const-string v11, "appDesRectBottom"

    .line 1212
    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1214
    move-result-object v10

    .line 1217
    const-string v11, "appRadius"

    .line 1218
    invoke-virtual {v10, v11, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 1220
    move-result-object v10

    .line 1223
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$1;

    .line 1224
    invoke-direct {v11, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V

    .line 1226
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 1229
    move-result-object v11

    .line 1232
    invoke-virtual {v10, v11}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1233
    move-result-object v85

    .line 1236
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 1237
    iget v11, v6, Landroid/graphics/PointF;->x:F

    .line 1239
    iget v12, v6, Landroid/graphics/PointF;->y:F

    .line 1241
    invoke-virtual {v10, v2, v1, v11, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->getTargetTaskLeashPos(FFFF)Landroid/graphics/PointF;

    .line 1243
    move-result-object v1

    .line 1246
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1247
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 1249
    move-result-object v2

    .line 1252
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 1253
    move-result-object v2

    .line 1256
    const-string v23, "posX"

    .line 1257
    iget v10, v1, Landroid/graphics/PointF;->x:F

    .line 1259
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1261
    move-result-object v24

    .line 1264
    const-string v25, "posY"

    .line 1265
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 1267
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1269
    move-result-object v26

    .line 1272
    const-string v27, "scaleX"

    .line 1273
    iget v1, v6, Landroid/graphics/PointF;->x:F

    .line 1275
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1277
    move-result-object v28

    .line 1280
    const-string v29, "scaleY"

    .line 1281
    iget v1, v6, Landroid/graphics/PointF;->y:F

    .line 1283
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1285
    move-result-object v30

    .line 1288
    const-string v31, "leashAlpha"

    .line 1289
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1291
    move-result-object v32

    .line 1294
    const-string v33, "coverLayerAlpha"

    .line 1295
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1297
    move-result-object v34

    .line 1300
    const-string v35, "cornerRadius"

    .line 1301
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1303
    move-result-object v36

    .line 1306
    const-string v37, "bottomBoardLeft"

    .line 1307
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 1309
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 1311
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1313
    move-result-object v38

    .line 1316
    const-string v39, "bottomBoardTop"

    .line 1317
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 1319
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 1321
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1323
    move-result-object v40

    .line 1326
    const-string v41, "bottomBoardRight"

    .line 1327
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 1329
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 1331
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1333
    move-result-object v42

    .line 1336
    const-string v43, "bottomBoardBottom"

    .line 1337
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 1339
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 1341
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1343
    move-result-object v44

    .line 1346
    const-string v45, "changeLayerLeft"

    .line 1347
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 1349
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 1351
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1353
    move-result-object v46

    .line 1356
    const-string v47, "changeLayerTop"

    .line 1357
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 1359
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 1361
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1363
    move-result-object v48

    .line 1366
    const-string v49, "changeLayerRight"

    .line 1367
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 1369
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 1371
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1373
    move-result-object v50

    .line 1376
    const-string v51, "changeLayerBottom"

    .line 1377
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 1379
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 1381
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1383
    move-result-object v52

    .line 1386
    const-string v53, "changeLayerTopLeftXRadius"

    .line 1387
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1389
    aget v1, v1, v3

    .line 1391
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1393
    move-result-object v54

    .line 1396
    const-string v55, "changeLayerTopLeftYRadius"

    .line 1397
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1399
    const/4 v3, 0x1

    .line 1401
    aget v1, v1, v3

    .line 1402
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1404
    move-result-object v56

    .line 1407
    const-string v57, "changeLayerTopRightXRadius"

    .line 1408
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1410
    aget v1, v1, v8

    .line 1412
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1414
    move-result-object v58

    .line 1417
    const-string v59, "changeLayerTopRightYRadius"

    .line 1418
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1420
    const/4 v3, 0x3

    .line 1422
    aget v1, v1, v3

    .line 1423
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1425
    move-result-object v60

    .line 1428
    const-string v61, "changeLayerBottomRightXRadius"

    .line 1429
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1431
    const/4 v3, 0x4

    .line 1433
    aget v1, v1, v3

    .line 1434
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1436
    move-result-object v62

    .line 1439
    const-string v63, "changeLayerBottomRightYRadius"

    .line 1440
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1442
    const/4 v3, 0x5

    .line 1444
    aget v1, v1, v3

    .line 1445
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1447
    move-result-object v64

    .line 1450
    const-string v65, "changeLayerBottomLeftXRadius"

    .line 1451
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1453
    const/4 v3, 0x6

    .line 1455
    aget v1, v1, v3

    .line 1456
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1458
    move-result-object v66

    .line 1461
    const-string v67, "changeLayerBottomLeftYRadius"

    .line 1462
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 1464
    const/4 v3, 0x7

    .line 1466
    aget v1, v1, v3

    .line 1467
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1469
    move-result-object v68

    .line 1472
    const-string v69, "appDesRectLeft"

    .line 1473
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 1475
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 1477
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1479
    move-result-object v70

    .line 1482
    const-string v71, "appDesRectTop"

    .line 1483
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 1485
    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 1487
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1489
    move-result-object v72

    .line 1492
    const-string v73, "appDesRectRight"

    .line 1493
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 1495
    iget v1, v1, Landroid/graphics/RectF;->right:F

    .line 1497
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1499
    move-result-object v74

    .line 1502
    const-string v75, "appDesRectBottom"

    .line 1503
    iget-object v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 1505
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 1507
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1509
    move-result-object v76

    .line 1512
    const-string v77, "appRadius"

    .line 1513
    iget v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 1515
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1517
    move-result-object v78

    .line 1520
    const-string/jumbo v79, "textHeight"

    .line 1521
    iget v1, v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 1524
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1526
    move-result-object v80

    .line 1529
    const-string v81, "otherSidePosX"

    .line 1530
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideTargetPos:Landroid/graphics/PointF;

    .line 1532
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 1534
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1536
    move-result-object v82

    .line 1539
    const-string v83, "otherSidePosY"

    .line 1540
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideTargetPos:Landroid/graphics/PointF;

    .line 1542
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 1544
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1546
    move-result-object v84

    .line 1549
    filled-new-array/range {v23 .. v85}, [Ljava/lang/Object;

    .line 1550
    move-result-object v0

    .line 1553
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 1554
    goto/16 :goto_d

    .line 1557
    :cond_11
    sget-object v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 1559
    const-string v4, "handleMotionEvent ACTION_UP"

    .line 1561
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v2, 0x1

    .line 1566
    iput-boolean v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isUpOrCancelOccured:Z

    .line 1567
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiwinTouchStatus:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;

    .line 1569
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiwinTouchStatus;->isMoveOccured()Z

    .line 1571
    move-result v4

    .line 1574
    if-eqz v4, :cond_17

    .line 1575
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTipsLayout()V

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->hideDimmer()V

    .line 1580
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 1583
    move-result v4

    .line 1586
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 1587
    move-result v1

    .line 1590
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 1591
    new-array v7, v8, [F

    .line 1593
    aput v4, v7, v3

    .line 1595
    aput v1, v7, v2

    .line 1597
    invoke-virtual {v6, v7}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->update([F)V

    .line 1599
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 1602
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->getXYVelocity()F

    .line 1604
    move-result v2

    .line 1607
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 1608
    invoke-virtual {v3, v4, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->enterHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 1610
    move-result-object v9

    .line 1613
    iget v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->EVENT_VELOCITY_THRESHOLD:F

    .line 1614
    cmpg-float v1, v2, v1

    .line 1616
    if-gez v1, :cond_16

    .line 1618
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 1620
    move-result v1

    .line 1623
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 1624
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getOriginHotAreaType()I

    .line 1626
    move-result v2

    .line 1629
    if-ne v1, v2, :cond_12

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 1632
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1635
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1637
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1639
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1641
    move-result-object v8

    .line 1644
    const/4 v10, 0x0

    .line 1645
    const-string/jumbo v11, "\u672a\u53d1\u751f\u5207\u6362"

    .line 1646
    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 1649
    goto/16 :goto_d

    .line 1652
    :cond_12
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 1654
    move-result v1

    .line 1657
    if-nez v1, :cond_14

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 1660
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1663
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1665
    move-result-object v1

    .line 1668
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 1669
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1671
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1673
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1675
    move-result-object v2

    .line 1678
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 1679
    move-result-object v1

    .line 1682
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 1683
    move-result v2

    .line 1686
    const/4 v3, 0x5

    .line 1687
    if-ne v2, v3, :cond_13

    .line 1688
    const v2, 0x7f1303ab    # @string/drag_shadow_freeform_unsupported_app '%s doesn't support floating windows'

    .line 1690
    goto :goto_7

    .line 1693
    :cond_13
    const v2, 0x7f1303b2    # @string/drag_shadow_split_unsupported_app '%s doesn't support Split screen'

    .line 1694
    :goto_7
    iget-object v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1697
    invoke-direct {v0, v3, v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->toastNotSupport(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 1699
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1702
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1704
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1706
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1708
    move-result-object v8

    .line 1711
    const/4 v10, 0x0

    .line 1712
    const-string/jumbo v11, "\u4e0d\u652f\u6301\u62d6\u62fd"

    .line 1713
    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 1716
    goto/16 :goto_d

    .line 1719
    :cond_14
    iget v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSingleOpenDragType:I

    .line 1721
    if-eq v1, v5, :cond_15

    .line 1723
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 1725
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 1727
    move-result v2

    .line 1730
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onSingleOpenDragEnd(I)V

    .line 1731
    :cond_15
    invoke-direct {v0, v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSwitch(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;)V

    .line 1734
    goto/16 :goto_d

    .line 1737
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->backToOriginal()V

    .line 1739
    iget-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1742
    iget-object v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1744
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1746
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1748
    move-result-object v8

    .line 1751
    const/4 v10, 0x0

    .line 1752
    const-string/jumbo v11, "\u62d6\u62fd\u901f\u5ea6\u8d85\u8fc7\u9608\u503c"

    .line 1753
    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 1756
    goto/16 :goto_d

    .line 1759
    :cond_17
    invoke-static {v9}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 1761
    goto/16 :goto_d

    .line 1764
    :cond_18
    sget-object v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 1766
    const-string v4, "handleMotionEvent ACTION_DOWN"

    .line 1768
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 1773
    move-result-object v4

    .line 1776
    const/4 v6, 0x0

    .line 1777
    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 1778
    move-result v4

    .line 1781
    iput-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mIsSplitLeftRight:Z

    .line 1782
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    .line 1784
    move-result v4

    .line 1787
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    .line 1788
    move-result v1

    .line 1791
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 1792
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 1794
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 1796
    int-to-float v11, v11

    .line 1798
    sub-float v11, v4, v11

    .line 1799
    iget v10, v10, Landroid/graphics/Rect;->top:I

    .line 1801
    int-to-float v10, v10

    .line 1803
    sub-float v10, v1, v10

    .line 1804
    invoke-virtual {v9, v11, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->setDownPointInTask(FF)V

    .line 1806
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 1809
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 1811
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 1813
    iget-object v12, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1815
    invoke-virtual {v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1817
    move-result-object v12

    .line 1820
    invoke-virtual {v9, v10, v11, v12}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->initHotAreas(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1821
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 1824
    invoke-virtual {v9, v4, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getTargetHotAreaAtLocation(FF)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 1826
    move-result-object v9

    .line 1829
    iput-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 1830
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mVelocityMonitor:Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;

    .line 1832
    new-array v8, v8, [F

    .line 1834
    aput v4, v8, v3

    .line 1836
    const/4 v4, 0x1

    .line 1838
    aput v1, v8, v4

    .line 1839
    invoke-virtual {v9, v8}, Lcom/android/wm/shell/miuimultiwinswitch/VelocityMonitor;->update([F)V

    .line 1841
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1844
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 1846
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1848
    int-to-float v4, v4

    .line 1850
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setPosX(F)V

    .line 1851
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1854
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 1856
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1858
    int-to-float v4, v4

    .line 1860
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setPosY(F)V

    .line 1861
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1864
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setScaleX(F)V

    .line 1866
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1869
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setScaleY(F)V

    .line 1871
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1874
    invoke-virtual {v1, v7}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setLeashAlpha(F)V

    .line 1876
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1879
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1881
    move-result-object v1

    .line 1884
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1885
    move-result v1

    .line 1888
    const/4 v4, 0x1

    .line 1889
    if-ne v1, v4, :cond_19

    .line 1890
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1892
    iget v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    .line 1894
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setCornerRadius(F)V

    .line 1896
    goto :goto_8

    .line 1899
    :cond_19
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 1900
    iget v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 1902
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setCornerRadius(F)V

    .line 1904
    :goto_8
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1907
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1909
    move-result-object v1

    .line 1912
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 1913
    move-result v1

    .line 1916
    const/4 v4, 0x6

    .line 1917
    if-ne v1, v4, :cond_21

    .line 1918
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1920
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1922
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1924
    move-result-object v4

    .line 1927
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1928
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 1930
    move-result v1

    .line 1933
    if-nez v1, :cond_1a

    .line 1934
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1936
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1938
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1940
    move-result-object v4

    .line 1943
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1944
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 1946
    move-result v1

    .line 1949
    if-eqz v1, :cond_21

    .line 1950
    :cond_1a
    const/4 v1, 0x1

    .line 1952
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 1953
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1955
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1957
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1959
    move-result-object v5

    .line 1962
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 1963
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->stageInfo(I)Ljava/util/List;

    .line 1965
    move-result-object v4

    .line 1968
    if-eqz v4, :cond_1b

    .line 1969
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1971
    move-result-object v5

    .line 1974
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1975
    iput-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1977
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1979
    move-result-object v4

    .line 1982
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1983
    iput-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1985
    goto :goto_9

    .line 1987
    :cond_1b
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1988
    iput-object v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1990
    :goto_9
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 1992
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 1994
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1996
    move-result-object v4

    .line 1999
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2000
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 2002
    move-result v1

    .line 2005
    if-eqz v1, :cond_1c

    .line 2006
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2008
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2010
    move-result-object v1

    .line 2013
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2014
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2016
    const/4 v4, 0x1

    .line 2018
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2019
    move-result-object v1

    .line 2022
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2023
    iput v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 2025
    goto :goto_a

    .line 2027
    :cond_1c
    const/4 v4, 0x1

    .line 2028
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2029
    iget-object v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2031
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2033
    move-result-object v5

    .line 2036
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 2037
    invoke-virtual {v1, v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 2039
    move-result v1

    .line 2042
    if-eqz v1, :cond_1d

    .line 2043
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2045
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2047
    move-result-object v1

    .line 2050
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2051
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2053
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getDragTaskInfo(I)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2055
    move-result-object v1

    .line 2058
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2059
    iput v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 2061
    :cond_1d
    :goto_a
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2063
    if-eqz v1, :cond_20

    .line 2065
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 2067
    move-result-object v1

    .line 2070
    if-eqz v1, :cond_20

    .line 2071
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2073
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 2075
    move-result-object v1

    .line 2078
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 2079
    move-result v1

    .line 2082
    if-nez v1, :cond_1e

    .line 2083
    goto :goto_b

    .line 2085
    :cond_1e
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2086
    if-eqz v1, :cond_1f

    .line 2088
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2090
    move-result-object v1

    .line 2093
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2094
    move-result-object v1

    .line 2097
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2098
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 2100
    move-result-object v1

    .line 2103
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 2104
    if-eqz v1, :cond_1f

    .line 2106
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 2108
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2110
    int-to-float v1, v1

    .line 2112
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setOtherSidePosX(F)V

    .line 2113
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 2116
    iget-object v2, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 2118
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2120
    int-to-float v2, v2

    .line 2122
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->setOtherSidePosY(F)V

    .line 2123
    :cond_1f
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 2126
    iput-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mLastSplitHotArea:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;

    .line 2128
    goto :goto_c

    .line 2130
    :cond_20
    :goto_b
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->shouldHandleEvent:Z

    .line 2131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2133
    const-string v3, "handleMotionEvent shouldHandleEvent=false, mSplitDragTaskInfo="

    .line 2135
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2137
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2145
    move-result-object v0

    .line 2148
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void

    .line 2152
    :cond_21
    iput-boolean v3, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isDragSplit:Z

    .line 2153
    iput v5, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragSplitPos:I

    .line 2155
    iget-object v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideBounds:Landroid/graphics/Rect;

    .line 2157
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2159
    :goto_c
    const/4 v1, 0x1

    .line 2162
    iput-boolean v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFirstMove:Z

    .line 2163
    :cond_22
    :goto_d
    return-void

    .line 2165
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e6147ae    # 0.22f
    .end array-data

    .line 2166
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data

    .line 2174
    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
    .line 2182
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public isCurrentPosHotAreaDifOri(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getCurrentPosHotAreaType(FF)I

    .line 4
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mHotAreaController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->getOriginHotAreaType()I

    .line 10
    move-result p0

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
    .line 19
.end method

.method public isHandlingFreeformUp()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIsHandlingFreeformUp:Z

    .line 4
    return p0
    .line 6
.end method

.method public bridge synthetic mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMerging:Z

    .line 2
    if-eqz p2, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mConsumedTransition:Landroid/os/IBinder;

    .line 6
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mConsumedFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishHomeTransition()V

    .line 11
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 14
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 27
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->onTransitionEnd(I)V

    .line 28
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public bridge synthetic setAnimScaleSetting(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p1

    .line 11
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 18
    return-void
    .line 20
.end method

.method public setFreeformTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->initTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V

    .line 22
    return-void
    .line 25
.end method

.method public setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimation:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    .line 4
    return-void
    .line 7
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 13
    const-string p4, "Receive an unknown transition, token="

    .line 15
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ", type="

    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 28
    move-result p1

    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 48
    invoke-static {p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->makeAnimRootUnderFreeforms(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 50
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 53
    move-result v0

    .line 56
    const/16 v2, 0xc8

    .line 57
    if-ne v0, v2, :cond_1

    .line 59
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startFullToFreeformTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 61
    move-result p1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v2, 0xc9

    .line 66
    if-ne v0, v2, :cond_2

    .line 68
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startFullToSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 70
    move-result p1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    const/16 v2, 0xca

    .line 75
    if-ne v0, v2, :cond_3

    .line 77
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSingleOpenToFullTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 79
    move-result p1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/16 v2, 0xcb

    .line 84
    if-ne v0, v2, :cond_4

    .line 86
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSingleOpenToFreeformTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 88
    move-result p1

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    const/16 v2, 0xcc

    .line 93
    if-ne v0, v2, :cond_5

    .line 95
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSplitToFullTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 97
    move-result p1

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    const/16 v2, 0xcd

    .line 102
    if-ne v0, v2, :cond_6

    .line 104
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSplitToFreeformTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 106
    move-result p1

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const/16 v2, 0xce

    .line 111
    if-ne v0, v2, :cond_8

    .line 113
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->startSplitSwapTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 115
    move-result p1

    .line 118
    :goto_0
    const-string p2, "FF_UI/MWS_ACTION_DRAG_WINDOW_RESIZE"

    .line 119
    invoke-static {p2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 124
    if-nez p1, :cond_7

    .line 127
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 129
    const-string p2, "No animation started, finish transition now!"

    .line 131
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, v0, p5, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 136
    :cond_7
    const/4 p0, 0x1

    .line 139
    return p0

    .line 140
    :cond_8
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->TAG:Ljava/lang/String;

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    .line 143
    const-string p2, "Unknown transition type: "

    .line 145
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 156
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v1
    .line 160
.end method

.method public startFullToFreeformTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 46

    .line 1
    move-object/from16 v11, p0

    .line 2
    move-object/from16 v12, p3

    .line 4
    move-object/from16 v13, p4

    .line 6
    const/4 v14, 0x1

    .line 8
    new-array v15, v14, [I

    .line 9
    new-instance v10, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v10}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v8, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda0;

    .line 18
    const/4 v7, 0x1

    .line 20
    move-object v0, v9

    .line 21
    move-object/from16 v1, p0

    .line 22
    move-object v2, v15

    .line 24
    move-object v3, v10

    .line 25
    move-object/from16 v4, p2

    .line 26
    move-object/from16 v5, p5

    .line 28
    move-object/from16 v6, p4

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

    .line 32
    move-object v0, v8

    .line 35
    move-object/from16 v1, p1

    .line 36
    move-object/from16 v2, p2

    .line 38
    move-object/from16 v3, p3

    .line 40
    move-object/from16 v4, p4

    .line 42
    move-object v5, v9

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 45
    move-result-object v16

    .line 48
    const/4 v9, 0x0

    .line 49
    if-eqz v16, :cond_0

    .line 50
    aget v0, v15, v9

    .line 52
    add-int/2addr v0, v14

    .line 54
    aput v0, v15, v9

    .line 55
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 57
    move-result-object v0

    .line 60
    invoke-static {v0, v12, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->handlerFullToFreeLeashStatus(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 64
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object v17

    .line 71
    move v0, v9

    .line 72
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 82
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 83
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 85
    move-result v2

    .line 88
    and-int/lit8 v2, v2, 0x2

    .line 89
    if-eqz v2, :cond_1

    .line 91
    goto/16 :goto_3

    .line 93
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 95
    move-result-object v8

    .line 98
    if-eqz v8, :cond_6

    .line 99
    iget v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 101
    const/4 v3, -0x1

    .line 103
    if-ne v2, v3, :cond_2

    .line 104
    goto/16 :goto_3

    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 108
    move-result v2

    .line 111
    if-eq v2, v14, :cond_3

    .line 112
    const/4 v3, 0x3

    .line 114
    if-eq v2, v3, :cond_3

    .line 115
    const/4 v3, 0x6

    .line 117
    if-eq v2, v3, :cond_3

    .line 118
    goto/16 :goto_3

    .line 120
    :cond_3
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 122
    iget v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 124
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 129
    move-object v6, v2

    .line 130
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 131
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 133
    iget v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 135
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v2

    .line 140
    check-cast v2, Ljava/lang/Float;

    .line 141
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 143
    move-result-object v3

    .line 146
    if-eqz v3, :cond_6

    .line 147
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 149
    move-result-object v3

    .line 152
    if-eqz v3, :cond_6

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 155
    move-result-object v3

    .line 158
    if-eqz v3, :cond_6

    .line 159
    if-eqz v6, :cond_6

    .line 161
    if-eqz v2, :cond_6

    .line 163
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 165
    move-result v3

    .line 168
    const/16 v18, 0x0

    .line 169
    cmpl-float v3, v3, v18

    .line 171
    if-eqz v3, :cond_6

    .line 173
    aget v0, v15, v9

    .line 175
    add-int/2addr v0, v14

    .line 177
    aput v0, v15, v9

    .line 178
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 180
    iget v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 182
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 184
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 187
    iget v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 189
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 194
    move-result-object v7

    .line 197
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 198
    move-result-object v5

    .line 201
    if-eqz v16, :cond_4

    .line 202
    iget-object v3, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 204
    iget-object v4, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 206
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 208
    move-object/from16 v0, v16

    .line 210
    move-object v1, v8

    .line 212
    move-object/from16 v19, v2

    .line 213
    move-object v2, v5

    .line 215
    move-object v9, v5

    .line 216
    move-object/from16 v5, v19

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->adjustFreeformBoundsAfterRotation(Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)F

    .line 219
    move-result v0

    .line 222
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    move-result-object v2

    .line 226
    iget-object v0, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 227
    invoke-virtual {v10, v0, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 229
    goto :goto_1

    .line 232
    :cond_4
    move-object v9, v5

    .line 233
    :goto_1
    move-object/from16 v26, v2

    .line 234
    const v0, 0x7fffffff

    .line 236
    invoke-virtual {v12, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 239
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 242
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 244
    move-result v0

    .line 247
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 248
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 250
    move-result v1

    .line 253
    invoke-virtual {v12, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 254
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 259
    move-result v0

    .line 262
    int-to-float v0, v0

    .line 263
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 264
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 266
    move-result v1

    .line 269
    mul-float/2addr v1, v0

    .line 270
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 271
    move-result v0

    .line 274
    int-to-float v0, v0

    .line 275
    div-float v6, v1, v0

    .line 276
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 278
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 280
    move-result v0

    .line 283
    int-to-float v0, v0

    .line 284
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 285
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 287
    move-result v1

    .line 290
    mul-float/2addr v1, v0

    .line 291
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 292
    move-result v0

    .line 295
    int-to-float v0, v0

    .line 296
    div-float v5, v1, v0

    .line 297
    invoke-virtual {v12, v7, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 299
    iget-boolean v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 302
    if-eqz v0, :cond_5

    .line 304
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 306
    if-eqz v0, :cond_5

    .line 308
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 310
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 312
    move-result v19

    .line 315
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 316
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 318
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 320
    move-result v2

    .line 323
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 324
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 326
    move-result v3

    .line 329
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 330
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 332
    move-result v4

    .line 335
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 336
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 338
    move-result v20

    .line 341
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 342
    move-object/from16 v21, v1

    .line 344
    move-object/from16 v1, p3

    .line 346
    move/from16 v22, v5

    .line 348
    move/from16 v5, v20

    .line 350
    move/from16 v20, v6

    .line 352
    move/from16 v6, v19

    .line 354
    move-object v14, v7

    .line 356
    move-object/from16 v7, v21

    .line 357
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 359
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 362
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 364
    move-result v0

    .line 367
    div-float v0, v0, v20

    .line 368
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 370
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 372
    move-result v1

    .line 375
    div-float v1, v1, v22

    .line 376
    invoke-virtual {v12, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 378
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 381
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 383
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 385
    move-result v1

    .line 388
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 389
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 391
    move-result v2

    .line 394
    div-float/2addr v1, v2

    .line 395
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 396
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 398
    move-result v2

    .line 401
    iget-object v3, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 402
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 404
    move-result v3

    .line 407
    div-float/2addr v2, v3

    .line 408
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 409
    goto :goto_2

    .line 412
    :cond_5
    move/from16 v22, v5

    .line 413
    move/from16 v20, v6

    .line 415
    move-object v14, v7

    .line 417
    :goto_2
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 418
    move-result v0

    .line 421
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 422
    move-result v1

    .line 425
    invoke-virtual {v12, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 426
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    .line 429
    move-result v0

    .line 432
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    .line 433
    move-result v1

    .line 436
    invoke-virtual {v13, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 437
    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 440
    int-to-float v0, v0

    .line 442
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 443
    int-to-float v1, v1

    .line 445
    invoke-virtual {v13, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 446
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 449
    move-result v0

    .line 452
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 453
    move-result v1

    .line 456
    invoke-virtual {v13, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 457
    iget v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    .line 460
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    .line 462
    move-result v1

    .line 465
    div-float/2addr v0, v1

    .line 466
    invoke-virtual {v13, v14, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 467
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 470
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 472
    invoke-static {v0, v8, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeformByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 474
    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 477
    int-to-float v8, v0

    .line 479
    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 480
    int-to-float v7, v0

    .line 482
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    .line 483
    move-result v5

    .line 486
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 487
    invoke-direct/range {v19 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 489
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 492
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 494
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 497
    const-string v2, "posX"

    .line 499
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 501
    move-result-object v0

    .line 504
    const-string v2, "posY"

    .line 505
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 507
    move-result-object v0

    .line 510
    const-string v2, "scaleX"

    .line 511
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 513
    move-result-object v0

    .line 516
    const-string v2, "scaleY"

    .line 517
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 519
    move-result-object v6

    .line 522
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$5;

    .line 523
    move-object/from16 v0, v21

    .line 525
    move-object/from16 v1, p0

    .line 527
    move-object v2, v14

    .line 529
    move-object/from16 v3, v19

    .line 530
    move-object v4, v9

    .line 532
    move-object v14, v6

    .line 533
    move-object v6, v15

    .line 534
    move/from16 v23, v7

    .line 535
    move-object/from16 v7, p2

    .line 537
    move/from16 v24, v8

    .line 539
    move-object/from16 v8, p5

    .line 541
    const/16 v32, 0x0

    .line 543
    move-object/from16 v9, p4

    .line 545
    move-object/from16 v33, v10

    .line 547
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$5;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;F[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 549
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 552
    move-result-object v0

    .line 555
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 556
    move-result-object v31

    .line 559
    const/4 v1, 0x1

    .line 560
    iput-boolean v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 561
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 563
    move-result-object v0

    .line 566
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 567
    move-result-object v0

    .line 570
    const-string v34, "posX"

    .line 571
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 573
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 575
    move-result v2

    .line 578
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 579
    move-result-object v35

    .line 582
    const-string v36, "posY"

    .line 583
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 585
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 587
    move-result v2

    .line 590
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 591
    move-result-object v37

    .line 594
    const-string v38, "scaleX"

    .line 595
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 597
    move-result-object v39

    .line 600
    const-string v40, "scaleY"

    .line 601
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 603
    move-result-object v41

    .line 606
    const-string v42, "coverLayerAlpha"

    .line 607
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 609
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 611
    move-result v2

    .line 614
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 615
    move-result-object v43

    .line 618
    const-string v44, "cornerRadius"

    .line 619
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 621
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 623
    move-result v2

    .line 626
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 627
    move-result-object v45

    .line 630
    filled-new-array/range {v34 .. v45}, [Ljava/lang/Object;

    .line 631
    move-result-object v2

    .line 634
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 635
    move-result-object v0

    .line 638
    const-string v19, "posX"

    .line 639
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 641
    move-result-object v20

    .line 644
    const-string v21, "posY"

    .line 645
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 647
    move-result-object v22

    .line 650
    const-string v23, "scaleX"

    .line 651
    const-string v25, "scaleY"

    .line 653
    const-string v27, "coverLayerAlpha"

    .line 655
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 657
    move-result-object v28

    .line 660
    const-string v29, "cornerRadius"

    .line 661
    iget v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    .line 663
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 665
    move-result-object v30

    .line 668
    move-object/from16 v24, v26

    .line 669
    filled-new-array/range {v19 .. v31}, [Ljava/lang/Object;

    .line 671
    move-result-object v2

    .line 674
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 675
    move v0, v1

    .line 678
    goto :goto_4

    .line 679
    :cond_6
    :goto_3
    move/from16 v32, v9

    .line 680
    move-object/from16 v33, v10

    .line 682
    move v1, v14

    .line 684
    :goto_4
    move v14, v1

    .line 685
    move/from16 v9, v32

    .line 686
    move-object/from16 v10, v33

    .line 688
    goto/16 :goto_0

    .line 690
    :cond_7
    return v0
    .line 692
.end method

.method public startFullToSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 31

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 6
    move-result v0

    .line 9
    const/16 v1, 0xc9

    .line 10
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_9

    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 26
    const/4 v3, -0x1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 34
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 36
    move-result v4

    .line 39
    and-int/lit8 v4, v4, 0x2

    .line 40
    if-eqz v4, :cond_1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 45
    move-result-object v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 51
    if-ne v5, v3, :cond_2

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    iget-object v6, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 61
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 70
    move-result-object v6

    .line 73
    if-eqz v6, :cond_0

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 76
    move-result-object v6

    .line 79
    if-eqz v6, :cond_0

    .line 80
    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 88
    move-result-object v5

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 92
    move-result v6

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 96
    move-result v0

    .line 99
    invoke-virtual {v9, v5, v6, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 100
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 103
    move-result-object v0

    .line 106
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenCornerRadius:F

    .line 107
    invoke-virtual {v9, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 109
    iget v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 112
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 114
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 116
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 121
    iget-object v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 123
    invoke-static {v1, v5, v4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterSingleOpenByWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 125
    goto :goto_1

    .line 128
    :cond_3
    move v0, v3

    .line 129
    :goto_1
    if-ne v0, v3, :cond_4

    .line 130
    return v2

    .line 132
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 133
    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v1

    .line 140
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v4

    .line 144
    if-eqz v4, :cond_9

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v4

    .line 150
    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 151
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 153
    move-result v5

    .line 156
    and-int/lit8 v5, v5, 0x2

    .line 157
    if-eqz v5, :cond_5

    .line 159
    goto :goto_2

    .line 161
    :cond_5
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 162
    move-result-object v5

    .line 165
    if-eqz v5, :cond_8

    .line 166
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 168
    if-ne v5, v3, :cond_6

    .line 170
    goto :goto_2

    .line 172
    :cond_6
    if-ne v5, v0, :cond_8

    .line 173
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 175
    move-result-object v5

    .line 178
    if-eqz v5, :cond_8

    .line 179
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 181
    move-result-object v5

    .line 184
    if-eqz v5, :cond_8

    .line 185
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 187
    move-result-object v10

    .line 190
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 191
    move-result-object v11

    .line 194
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 195
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 197
    move-result v0

    .line 200
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 201
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 203
    move-result v1

    .line 206
    invoke-virtual {v9, v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 207
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 210
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 212
    move-result v0

    .line 215
    int-to-float v0, v0

    .line 216
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 217
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 219
    move-result v1

    .line 222
    mul-float/2addr v1, v0

    .line 223
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 224
    move-result v0

    .line 227
    int-to-float v0, v0

    .line 228
    div-float v12, v1, v0

    .line 229
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 233
    move-result v0

    .line 236
    int-to-float v0, v0

    .line 237
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 238
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 240
    move-result v1

    .line 243
    mul-float/2addr v1, v0

    .line 244
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 245
    move-result v0

    .line 248
    int-to-float v0, v0

    .line 249
    div-float v13, v1, v0

    .line 250
    invoke-virtual {v9, v10, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 252
    iget-boolean v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 255
    if-eqz v0, :cond_7

    .line 257
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 259
    if-eqz v0, :cond_7

    .line 261
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 263
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 265
    move-result v6

    .line 268
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 269
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 271
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 273
    move-result v2

    .line 276
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 277
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 279
    move-result v3

    .line 282
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 283
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 285
    move-result v4

    .line 288
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 289
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 291
    move-result v5

    .line 294
    iget-object v7, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 295
    move-object/from16 v1, p3

    .line 297
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 299
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 302
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 304
    move-result v0

    .line 307
    div-float/2addr v0, v12

    .line 308
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 309
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 311
    move-result v1

    .line 314
    div-float/2addr v1, v13

    .line 315
    invoke-virtual {v9, v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 316
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 319
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 321
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 323
    move-result v1

    .line 326
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 327
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 329
    move-result v2

    .line 332
    div-float/2addr v1, v2

    .line 333
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 334
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 336
    move-result v2

    .line 339
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 340
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 342
    move-result v3

    .line 345
    div-float/2addr v2, v3

    .line 346
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 347
    :cond_7
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 350
    move-result v0

    .line 353
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 354
    move-result v1

    .line 357
    invoke-virtual {v9, v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 358
    iget v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 361
    move-object/from16 v7, p4

    .line 363
    invoke-virtual {v7, v10, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 365
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 368
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 370
    move-result v0

    .line 373
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 374
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 376
    move-result v1

    .line 379
    int-to-float v1, v1

    .line 380
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 381
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 383
    move-result v2

    .line 386
    mul-float/2addr v2, v1

    .line 387
    const/high16 v1, 0x40000000    # 2.0f

    .line 388
    div-float/2addr v2, v1

    .line 390
    add-float v9, v2, v0

    .line 391
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 393
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 395
    move-result v0

    .line 398
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 399
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 401
    move-result v2

    .line 404
    int-to-float v2, v2

    .line 405
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 406
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 408
    move-result v3

    .line 411
    mul-float/2addr v3, v2

    .line 412
    div-float/2addr v3, v1

    .line 413
    add-float v14, v3, v0

    .line 414
    iget v0, v11, Landroid/graphics/Rect;->left:I

    .line 416
    int-to-float v0, v0

    .line 418
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 419
    move-result v2

    .line 422
    int-to-float v2, v2

    .line 423
    div-float/2addr v2, v1

    .line 424
    add-float v15, v2, v0

    .line 425
    iget v0, v11, Landroid/graphics/Rect;->top:I

    .line 427
    int-to-float v0, v0

    .line 429
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 430
    move-result v2

    .line 433
    int-to-float v2, v2

    .line 434
    div-float/2addr v2, v1

    .line 435
    add-float v16, v2, v0

    .line 436
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 438
    invoke-direct/range {v17 .. v17}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 440
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 443
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 445
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 448
    const-string v2, "posX"

    .line 450
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 452
    move-result-object v0

    .line 455
    const-string v2, "posY"

    .line 456
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 458
    move-result-object v0

    .line 461
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 462
    const-string v2, "scaleX"

    .line 464
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 466
    move-result-object v0

    .line 469
    const-string v2, "scaleY"

    .line 470
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 472
    move-result-object v6

    .line 475
    new-instance v18, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$6;

    .line 476
    move-object/from16 v0, v18

    .line 478
    move-object/from16 v1, p0

    .line 480
    move-object v2, v10

    .line 482
    move-object/from16 v3, v17

    .line 483
    move-object v4, v11

    .line 485
    move-object/from16 v5, p2

    .line 486
    move-object v10, v6

    .line 488
    move-object/from16 v6, p5

    .line 489
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$6;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 491
    filled-new-array/range {v18 .. v18}, [Lmiuix/animation/listener/TransitionListener;

    .line 494
    move-result-object v0

    .line 497
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 498
    move-result-object v30

    .line 501
    const/4 v2, 0x1

    .line 502
    iput-boolean v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 503
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 505
    move-result-object v0

    .line 508
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 509
    move-result-object v0

    .line 512
    const-string v17, "posX"

    .line 513
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 515
    move-result-object v18

    .line 518
    const-string v19, "posY"

    .line 519
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 521
    move-result-object v20

    .line 524
    const-string v21, "scaleX"

    .line 525
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 527
    move-result-object v22

    .line 530
    const-string v23, "scaleY"

    .line 531
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 533
    move-result-object v24

    .line 536
    const-string v25, "coverLayerAlpha"

    .line 537
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 539
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 541
    move-result v1

    .line 544
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 545
    move-result-object v26

    .line 548
    const-string v27, "cornerRadius"

    .line 549
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 551
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 553
    move-result v1

    .line 556
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 557
    move-result-object v28

    .line 560
    filled-new-array/range {v17 .. v28}, [Ljava/lang/Object;

    .line 561
    move-result-object v1

    .line 564
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 565
    move-result-object v0

    .line 568
    const-string v18, "posX"

    .line 569
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 571
    move-result-object v19

    .line 574
    const-string v20, "posY"

    .line 575
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 577
    move-result-object v21

    .line 580
    const-string v22, "scaleX"

    .line 581
    const/high16 v1, 0x3f800000    # 1.0f

    .line 583
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 585
    move-result-object v23

    .line 588
    const-string v24, "scaleY"

    .line 589
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 591
    move-result-object v25

    .line 594
    const-string v26, "coverLayerAlpha"

    .line 595
    const/4 v1, 0x0

    .line 597
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 598
    move-result-object v27

    .line 601
    const-string v28, "cornerRadius"

    .line 602
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 604
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 606
    move-result-object v29

    .line 609
    filled-new-array/range {v18 .. v30}, [Ljava/lang/Object;

    .line 610
    move-result-object v1

    .line 613
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 614
    goto :goto_3

    .line 617
    :cond_8
    move-object/from16 v7, p4

    .line 618
    goto/16 :goto_2

    .line 620
    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 622
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 624
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 626
    :cond_a
    return v2
    .line 629
.end method

.method public startHomeTransition()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;I)V

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->getHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 15
    new-instance v1, Landroid/window/RemoteTransition;

    .line 16
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mRemoteTransitionCompat:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$RemoteTransitionCompat;

    .line 18
    invoke-direct {v1, v2}, Landroid/window/RemoteTransition;-><init>(Landroid/window/IRemoteTransition;)V

    .line 20
    invoke-static {v1}, Landroid/app/ActivityOptions;->makeRemoteTransition(Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setTransientLaunch()Landroid/app/ActivityOptions;

    .line 27
    move-result-object v1

    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    move-result-wide v3

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 41
    move-result-object v1

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 45
    return-void
    .line 48
.end method

.method public startSingleOpenToFreeformTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 46

    .line 1
    move-object/from16 v11, p0

    .line 2
    move-object/from16 v12, p3

    .line 4
    move-object/from16 v13, p4

    .line 6
    const/4 v14, 0x1

    .line 8
    new-array v15, v14, [I

    .line 9
    new-instance v10, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v10}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v8, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda0;

    .line 18
    const/4 v7, 0x0

    .line 20
    move-object v0, v9

    .line 21
    move-object/from16 v1, p0

    .line 22
    move-object v2, v15

    .line 24
    move-object v3, v10

    .line 25
    move-object/from16 v4, p2

    .line 26
    move-object/from16 v5, p5

    .line 28
    move-object/from16 v6, p4

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

    .line 32
    move-object v0, v8

    .line 35
    move-object/from16 v1, p1

    .line 36
    move-object/from16 v2, p2

    .line 38
    move-object/from16 v3, p3

    .line 40
    move-object/from16 v4, p4

    .line 42
    move-object v5, v9

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 45
    move-result-object v16

    .line 48
    const/16 v17, 0x0

    .line 49
    if-eqz v16, :cond_0

    .line 51
    aget v0, v15, v17

    .line 53
    add-int/2addr v0, v14

    .line 55
    aput v0, v15, v17

    .line 56
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 58
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v18

    .line 65
    move/from16 v0, v17

    .line 66
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_7

    .line 72
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 78
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 80
    move-result v2

    .line 83
    and-int/lit8 v2, v2, 0x2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    goto/16 :goto_2

    .line 88
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    move-result-object v6

    .line 93
    if-eqz v6, :cond_6

    .line 94
    iget v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 96
    const/4 v3, -0x1

    .line 98
    if-ne v2, v3, :cond_2

    .line 99
    goto/16 :goto_2

    .line 101
    :cond_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 103
    move-result v2

    .line 106
    const/4 v3, 0x6

    .line 107
    if-eq v2, v3, :cond_3

    .line 108
    goto/16 :goto_2

    .line 110
    :cond_3
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 112
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 114
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 119
    move-object v7, v2

    .line 120
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 121
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 123
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 125
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/Float;

    .line 131
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 133
    move-result-object v3

    .line 136
    if-eqz v3, :cond_6

    .line 137
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 139
    move-result-object v3

    .line 142
    if-eqz v3, :cond_6

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 145
    move-result-object v3

    .line 148
    if-eqz v3, :cond_6

    .line 149
    if-eqz v7, :cond_6

    .line 151
    if-eqz v2, :cond_6

    .line 153
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 155
    move-result v3

    .line 158
    const/16 v19, 0x0

    .line 159
    cmpl-float v3, v3, v19

    .line 161
    if-eqz v3, :cond_6

    .line 163
    aget v0, v15, v17

    .line 165
    add-int/2addr v0, v14

    .line 167
    aput v0, v15, v17

    .line 168
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 170
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 172
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 174
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 177
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 179
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 181
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 184
    move-result-object v8

    .line 187
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 188
    move-result-object v9

    .line 191
    if-eqz v16, :cond_4

    .line 192
    const v0, 0x7fffffff

    .line 194
    invoke-virtual {v12, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 197
    iget-object v3, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 200
    iget-object v4, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 202
    iget-object v5, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 204
    move-object/from16 v0, v16

    .line 206
    move-object v1, v6

    .line 208
    move-object v2, v9

    .line 209
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->adjustFreeformBoundsAfterRotation(Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)F

    .line 210
    move-result v0

    .line 213
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    move-result-object v2

    .line 217
    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 218
    invoke-virtual {v10, v0, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 220
    :cond_4
    move-object/from16 v27, v2

    .line 223
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 225
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 227
    move-result v0

    .line 230
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 231
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 233
    move-result v1

    .line 236
    invoke-virtual {v12, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 237
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 242
    move-result v0

    .line 245
    int-to-float v0, v0

    .line 246
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 247
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 249
    move-result v1

    .line 252
    mul-float/2addr v1, v0

    .line 253
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 254
    move-result v0

    .line 257
    int-to-float v0, v0

    .line 258
    div-float v7, v1, v0

    .line 259
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 261
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 263
    move-result v0

    .line 266
    int-to-float v0, v0

    .line 267
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 268
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 270
    move-result v1

    .line 273
    mul-float/2addr v1, v0

    .line 274
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 275
    move-result v0

    .line 278
    int-to-float v0, v0

    .line 279
    div-float v5, v1, v0

    .line 280
    invoke-virtual {v12, v8, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 282
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 285
    move-result v0

    .line 288
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 289
    move-result v1

    .line 292
    invoke-virtual {v12, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 293
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    .line 296
    move-result v0

    .line 299
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    .line 300
    move-result v1

    .line 303
    invoke-virtual {v13, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 304
    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 307
    int-to-float v0, v0

    .line 309
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 310
    int-to-float v1, v1

    .line 312
    invoke-virtual {v13, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 313
    iget v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    .line 316
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    .line 318
    move-result v1

    .line 321
    div-float/2addr v0, v1

    .line 322
    invoke-virtual {v13, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 323
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 326
    move-result v0

    .line 329
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 330
    move-result v1

    .line 333
    invoke-virtual {v13, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 334
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 337
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 339
    invoke-static {v0, v6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeformByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 341
    iget-boolean v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 344
    if-eqz v0, :cond_5

    .line 346
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 348
    if-eqz v0, :cond_5

    .line 350
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 352
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 354
    move-result v6

    .line 357
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 358
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 360
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 362
    move-result v2

    .line 365
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 366
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 368
    move-result v3

    .line 371
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 372
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 374
    move-result v4

    .line 377
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 378
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 380
    move-result v20

    .line 383
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 384
    move-object/from16 v21, v1

    .line 386
    move-object/from16 v1, p3

    .line 388
    move/from16 v22, v5

    .line 390
    move/from16 v5, v20

    .line 392
    move/from16 v20, v7

    .line 394
    move-object/from16 v7, v21

    .line 396
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 398
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 401
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 403
    move-result v0

    .line 406
    div-float v0, v0, v20

    .line 407
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 409
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 411
    move-result v1

    .line 414
    div-float v1, v1, v22

    .line 415
    invoke-virtual {v12, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 417
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 420
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 422
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 424
    move-result v1

    .line 427
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 428
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 430
    move-result v2

    .line 433
    div-float/2addr v1, v2

    .line 434
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 435
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 437
    move-result v2

    .line 440
    iget-object v3, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 441
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 443
    move-result v3

    .line 446
    div-float/2addr v2, v3

    .line 447
    invoke-virtual {v0, v12, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 448
    goto :goto_1

    .line 451
    :cond_5
    move/from16 v22, v5

    .line 452
    move/from16 v20, v7

    .line 454
    :goto_1
    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 456
    int-to-float v7, v0

    .line 458
    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 459
    int-to-float v6, v0

    .line 461
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    .line 462
    move-result v5

    .line 465
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 466
    invoke-direct/range {v21 .. v21}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 468
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 471
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 473
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 476
    const-string v2, "posX"

    .line 478
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 480
    move-result-object v0

    .line 483
    const-string v2, "posY"

    .line 484
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 486
    move-result-object v0

    .line 489
    const-string v2, "scaleX"

    .line 490
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 492
    move-result-object v0

    .line 495
    const-string v2, "scaleY"

    .line 496
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 498
    move-result-object v4

    .line 501
    new-instance v23, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$8;

    .line 502
    move-object/from16 v0, v23

    .line 504
    move-object/from16 v1, p0

    .line 506
    move-object v2, v8

    .line 508
    move-object/from16 v3, v21

    .line 509
    move-object v8, v4

    .line 511
    move-object v4, v9

    .line 512
    move/from16 v24, v6

    .line 513
    move-object v6, v15

    .line 515
    move/from16 v25, v7

    .line 516
    move-object/from16 v7, p2

    .line 518
    move-object v9, v8

    .line 520
    move-object/from16 v8, p5

    .line 521
    move-object v14, v9

    .line 523
    move-object/from16 v9, p4

    .line 524
    move-object/from16 v33, v10

    .line 526
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$8;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;F[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 528
    filled-new-array/range {v23 .. v23}, [Lmiuix/animation/listener/TransitionListener;

    .line 531
    move-result-object v0

    .line 534
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 535
    move-result-object v32

    .line 538
    const/4 v1, 0x1

    .line 539
    iput-boolean v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 540
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    .line 542
    move-result-object v0

    .line 545
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 546
    move-result-object v0

    .line 549
    const-string v34, "posX"

    .line 550
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 552
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 554
    move-result v2

    .line 557
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 558
    move-result-object v35

    .line 561
    const-string v36, "posY"

    .line 562
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 564
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 566
    move-result v2

    .line 569
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 570
    move-result-object v37

    .line 573
    const-string v38, "scaleX"

    .line 574
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 576
    move-result-object v39

    .line 579
    const-string v40, "scaleY"

    .line 580
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 582
    move-result-object v41

    .line 585
    const-string v42, "coverLayerAlpha"

    .line 586
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 588
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 590
    move-result v2

    .line 593
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 594
    move-result-object v43

    .line 597
    const-string v44, "cornerRadius"

    .line 598
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 600
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 602
    move-result v2

    .line 605
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 606
    move-result-object v45

    .line 609
    filled-new-array/range {v34 .. v45}, [Ljava/lang/Object;

    .line 610
    move-result-object v2

    .line 613
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 614
    move-result-object v0

    .line 617
    const-string v20, "posX"

    .line 618
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 620
    move-result-object v21

    .line 623
    const-string v22, "posY"

    .line 624
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 626
    move-result-object v23

    .line 629
    const-string v24, "scaleX"

    .line 630
    const-string v26, "scaleY"

    .line 632
    const-string v28, "coverLayerAlpha"

    .line 634
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 636
    move-result-object v29

    .line 639
    const-string v30, "cornerRadius"

    .line 640
    iget v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    .line 642
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 644
    move-result-object v31

    .line 647
    move-object/from16 v25, v27

    .line 648
    filled-new-array/range {v20 .. v32}, [Ljava/lang/Object;

    .line 650
    move-result-object v2

    .line 653
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 654
    move v0, v1

    .line 657
    goto :goto_3

    .line 658
    :cond_6
    :goto_2
    move-object/from16 v33, v10

    .line 659
    move v1, v14

    .line 661
    :goto_3
    move v14, v1

    .line 662
    move-object/from16 v10, v33

    .line 663
    goto/16 :goto_0

    .line 665
    :cond_7
    return v0
    .line 667
.end method

.method public startSingleOpenToFullTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 41

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p3

    .line 4
    move-object/from16 v12, p4

    .line 6
    const/4 v13, 0x1

    .line 8
    new-array v14, v13, [I

    .line 9
    new-instance v15, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v15}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v8, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda0;

    .line 18
    const/4 v7, 0x2

    .line 20
    move-object v0, v9

    .line 21
    move-object/from16 v1, p0

    .line 22
    move-object v2, v14

    .line 24
    move-object v3, v15

    .line 25
    move-object/from16 v4, p2

    .line 26
    move-object/from16 v5, p5

    .line 28
    move-object/from16 v6, p4

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

    .line 32
    move-object v0, v8

    .line 35
    move-object/from16 v1, p1

    .line 36
    move-object/from16 v2, p2

    .line 38
    move-object/from16 v3, p3

    .line 40
    move-object/from16 v4, p4

    .line 42
    move-object v5, v9

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 45
    move-result-object v16

    .line 48
    const/16 v17, 0x0

    .line 49
    if-eqz v16, :cond_0

    .line 51
    aget v0, v14, v17

    .line 53
    add-int/2addr v0, v13

    .line 55
    aput v0, v14, v17

    .line 56
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 58
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v18

    .line 65
    move/from16 v0, v17

    .line 66
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_9

    .line 72
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 78
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 80
    move-result v2

    .line 83
    and-int/lit8 v2, v2, 0x2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    goto/16 :goto_2

    .line 88
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 90
    move-result-object v2

    .line 93
    if-eqz v2, :cond_7

    .line 94
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 96
    const/4 v4, -0x1

    .line 98
    if-ne v3, v4, :cond_2

    .line 99
    goto/16 :goto_2

    .line 101
    :cond_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 103
    move-result v3

    .line 106
    const/4 v4, 0x6

    .line 107
    if-eq v3, v4, :cond_3

    .line 108
    goto/16 :goto_2

    .line 110
    :cond_3
    iget-object v3, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 112
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 114
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 119
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 120
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 122
    move-result-object v4

    .line 125
    if-eqz v4, :cond_6

    .line 126
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 128
    move-result-object v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 134
    move-result-object v4

    .line 137
    if-eqz v4, :cond_6

    .line 138
    if-eqz v3, :cond_6

    .line 140
    aget v0, v14, v17

    .line 142
    add-int/2addr v0, v13

    .line 144
    aput v0, v14, v17

    .line 145
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 147
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 149
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 151
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 154
    move-result-object v8

    .line 157
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 158
    move-result-object v9

    .line 161
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 162
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 164
    move-result v0

    .line 167
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 168
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 170
    move-result v1

    .line 173
    invoke-virtual {v11, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    if-eqz v16, :cond_4

    .line 177
    const v0, 0x7fffffff

    .line 179
    invoke-virtual {v11, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 182
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 185
    invoke-virtual {v15, v0, v9}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 187
    :cond_4
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 192
    move-result v0

    .line 195
    int-to-float v0, v0

    .line 196
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 197
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 199
    move-result v1

    .line 202
    mul-float/2addr v1, v0

    .line 203
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 204
    move-result v0

    .line 207
    int-to-float v0, v0

    .line 208
    div-float v7, v1, v0

    .line 209
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 211
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 213
    move-result v0

    .line 216
    int-to-float v0, v0

    .line 217
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 218
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 220
    move-result v1

    .line 223
    mul-float/2addr v1, v0

    .line 224
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 225
    move-result v0

    .line 228
    int-to-float v0, v0

    .line 229
    div-float v6, v1, v0

    .line 230
    invoke-virtual {v11, v8, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 232
    iget-boolean v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 235
    if-eqz v0, :cond_5

    .line 237
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 239
    if-eqz v0, :cond_5

    .line 241
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 243
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 245
    move-result v19

    .line 248
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 249
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 251
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 253
    move-result v2

    .line 256
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 257
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 259
    move-result v3

    .line 262
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 263
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 265
    move-result v4

    .line 268
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 269
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 271
    move-result v5

    .line 274
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 275
    move-object/from16 v20, v1

    .line 277
    move-object/from16 v1, p3

    .line 279
    move/from16 v21, v6

    .line 281
    move/from16 v6, v19

    .line 283
    move/from16 v19, v7

    .line 285
    move-object/from16 v7, v20

    .line 287
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 289
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 292
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 294
    move-result v0

    .line 297
    div-float v0, v0, v19

    .line 298
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 300
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 302
    move-result v1

    .line 305
    div-float v1, v1, v21

    .line 306
    invoke-virtual {v11, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 308
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 311
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 313
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 315
    move-result v1

    .line 318
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 319
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 321
    move-result v2

    .line 324
    div-float/2addr v1, v2

    .line 325
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 326
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 328
    move-result v2

    .line 331
    iget-object v3, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 332
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 334
    move-result v3

    .line 337
    div-float/2addr v2, v3

    .line 338
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 339
    goto :goto_1

    .line 342
    :cond_5
    move/from16 v21, v6

    .line 343
    move/from16 v19, v7

    .line 345
    :goto_1
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 347
    move-result v0

    .line 350
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 351
    move-result v1

    .line 354
    invoke-virtual {v11, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 355
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 358
    move-result v0

    .line 361
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 362
    move-result v1

    .line 365
    invoke-virtual {v12, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 366
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenCornerRadius:F

    .line 369
    invoke-virtual {v12, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 371
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 374
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 376
    move-result v0

    .line 379
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 380
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 382
    move-result v1

    .line 385
    int-to-float v1, v1

    .line 386
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 387
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 389
    move-result v2

    .line 392
    mul-float/2addr v2, v1

    .line 393
    const/high16 v1, 0x40000000    # 2.0f

    .line 394
    div-float/2addr v2, v1

    .line 396
    add-float v20, v2, v0

    .line 397
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 399
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 401
    move-result v0

    .line 404
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 405
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 407
    move-result v2

    .line 410
    int-to-float v2, v2

    .line 411
    iget-object v3, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 412
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 414
    move-result v3

    .line 417
    mul-float/2addr v3, v2

    .line 418
    div-float/2addr v3, v1

    .line 419
    add-float v22, v3, v0

    .line 420
    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 422
    int-to-float v0, v0

    .line 424
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 425
    move-result v2

    .line 428
    int-to-float v2, v2

    .line 429
    div-float/2addr v2, v1

    .line 430
    add-float v23, v2, v0

    .line 431
    iget v0, v9, Landroid/graphics/Rect;->top:I

    .line 433
    int-to-float v0, v0

    .line 435
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 436
    move-result v2

    .line 439
    int-to-float v2, v2

    .line 440
    div-float/2addr v2, v1

    .line 441
    add-float v24, v2, v0

    .line 442
    new-instance v25, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 444
    invoke-direct/range {v25 .. v25}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 446
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 449
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 451
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 454
    const-string v2, "posX"

    .line 456
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 458
    move-result-object v0

    .line 461
    const-string v2, "posY"

    .line 462
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 464
    move-result-object v0

    .line 467
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 468
    const-string v2, "scaleX"

    .line 470
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 472
    move-result-object v0

    .line 475
    const-string v2, "scaleY"

    .line 476
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 478
    move-result-object v7

    .line 481
    new-instance v26, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$7;

    .line 482
    move-object/from16 v0, v26

    .line 484
    move-object/from16 v1, p0

    .line 486
    move-object v2, v8

    .line 488
    move-object/from16 v3, v25

    .line 489
    move-object v4, v9

    .line 491
    move-object v5, v14

    .line 492
    move-object/from16 v6, p2

    .line 493
    move-object v9, v7

    .line 495
    move-object/from16 v7, p5

    .line 496
    move-object/from16 v8, p4

    .line 498
    move-object v13, v9

    .line 500
    move-object v9, v15

    .line 501
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$7;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 502
    filled-new-array/range {v26 .. v26}, [Lmiuix/animation/listener/TransitionListener;

    .line 505
    move-result-object v0

    .line 508
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 509
    move-result-object v40

    .line 512
    const/4 v2, 0x1

    .line 513
    iput-boolean v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 514
    filled-new-array/range {v25 .. v25}, [Ljava/lang/Object;

    .line 516
    move-result-object v0

    .line 519
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 520
    move-result-object v0

    .line 523
    const-string v25, "posX"

    .line 524
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 526
    move-result-object v26

    .line 529
    const-string v27, "posY"

    .line 530
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 532
    move-result-object v28

    .line 535
    const-string v29, "scaleX"

    .line 536
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 538
    move-result-object v30

    .line 541
    const-string v31, "scaleY"

    .line 542
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 544
    move-result-object v32

    .line 547
    const-string v33, "coverLayerAlpha"

    .line 548
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 550
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 552
    move-result v1

    .line 555
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 556
    move-result-object v34

    .line 559
    const-string v35, "cornerRadius"

    .line 560
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 562
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 564
    move-result v1

    .line 567
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 568
    move-result-object v36

    .line 571
    filled-new-array/range {v25 .. v36}, [Ljava/lang/Object;

    .line 572
    move-result-object v1

    .line 575
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 576
    move-result-object v0

    .line 579
    const-string v28, "posX"

    .line 580
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 582
    move-result-object v29

    .line 585
    const-string v30, "posY"

    .line 586
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 588
    move-result-object v31

    .line 591
    const-string v32, "scaleX"

    .line 592
    const/high16 v1, 0x3f800000    # 1.0f

    .line 594
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 596
    move-result-object v33

    .line 599
    const-string v34, "scaleY"

    .line 600
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 602
    move-result-object v35

    .line 605
    const-string v36, "coverLayerAlpha"

    .line 606
    const/4 v1, 0x0

    .line 608
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 609
    move-result-object v37

    .line 612
    const-string v38, "cornerRadius"

    .line 613
    iget v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    .line 615
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 617
    move-result-object v39

    .line 620
    filled-new-array/range {v28 .. v40}, [Ljava/lang/Object;

    .line 621
    move-result-object v1

    .line 624
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 625
    move v0, v2

    .line 628
    goto :goto_3

    .line 629
    :cond_6
    move v2, v13

    .line 630
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 631
    move-result-object v3

    .line 634
    if-eqz v3, :cond_8

    .line 635
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 637
    move-result-object v3

    .line 640
    if-eqz v3, :cond_8

    .line 641
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 643
    move-result-object v3

    .line 646
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 647
    move-result v3

    .line 650
    const/4 v4, 0x5

    .line 651
    if-ne v3, v4, :cond_8

    .line 652
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 654
    move-result-object v3

    .line 657
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 658
    if-eqz v3, :cond_8

    .line 660
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 662
    move-result-object v3

    .line 665
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 666
    iget v3, v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 668
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 670
    move-result-object v1

    .line 673
    invoke-virtual {v11, v1, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 674
    goto :goto_3

    .line 677
    :cond_7
    :goto_2
    move v2, v13

    .line 678
    :cond_8
    :goto_3
    move v13, v2

    .line 679
    goto/16 :goto_0

    .line 680
    :cond_9
    return v0
    .line 682
.end method

.method public startSplitSwapTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 34

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v11

    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_6

    .line 21
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 27
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 29
    move-result v2

    .line 32
    and-int/lit8 v2, v2, 0x2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 44
    const/4 v4, -0x1

    .line 46
    if-ne v3, v4, :cond_2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 50
    move-result v3

    .line 53
    const/4 v4, 0x6

    .line 54
    if-eq v3, v4, :cond_3

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 58
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 60
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 65
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 66
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 68
    move-result-object v4

    .line 71
    if-eqz v4, :cond_5

    .line 72
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 74
    move-result-object v4

    .line 77
    if-eqz v4, :cond_5

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 80
    move-result-object v4

    .line 83
    if-eqz v4, :cond_5

    .line 84
    if-eqz v3, :cond_5

    .line 86
    iget-object v4, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mDragStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    if-eqz v4, :cond_5

    .line 90
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 92
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 94
    if-ne v5, v4, :cond_5

    .line 96
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 103
    move-result-object v12

    .line 106
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 107
    move-result-object v13

    .line 110
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 111
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 113
    move-result v0

    .line 116
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 117
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 119
    move-result v2

    .line 122
    invoke-virtual {v9, v12, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 123
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 126
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 128
    move-result v0

    .line 131
    int-to-float v0, v0

    .line 132
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 133
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 135
    move-result v2

    .line 138
    mul-float/2addr v2, v0

    .line 139
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 140
    move-result v0

    .line 143
    int-to-float v0, v0

    .line 144
    div-float v14, v2, v0

    .line 145
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 149
    move-result v0

    .line 152
    int-to-float v0, v0

    .line 153
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 154
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 156
    move-result v2

    .line 159
    mul-float/2addr v2, v0

    .line 160
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 161
    move-result v0

    .line 164
    int-to-float v0, v0

    .line 165
    div-float v15, v2, v0

    .line 166
    invoke-virtual {v9, v12, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 168
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 171
    move-result v0

    .line 174
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 175
    move-result v2

    .line 178
    invoke-virtual {v9, v12, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 179
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 182
    move-result v0

    .line 185
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 186
    move-result v2

    .line 189
    invoke-virtual {v10, v12, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 190
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 193
    move-result-object v0

    .line 196
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 197
    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 199
    iget-boolean v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 202
    if-eqz v0, :cond_4

    .line 204
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 206
    if-eqz v0, :cond_4

    .line 208
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 210
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 212
    move-result v6

    .line 215
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 216
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 218
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 220
    move-result v2

    .line 223
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 224
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 226
    move-result v3

    .line 229
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 230
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 232
    move-result v4

    .line 235
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 236
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 238
    move-result v5

    .line 241
    iget-object v7, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 242
    move-object/from16 v1, p3

    .line 244
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 246
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 249
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 251
    move-result v0

    .line 254
    div-float/2addr v0, v14

    .line 255
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 256
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 258
    move-result v1

    .line 261
    div-float/2addr v1, v15

    .line 262
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 263
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 266
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 268
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 270
    move-result v1

    .line 273
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 274
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 276
    move-result v2

    .line 279
    div-float/2addr v1, v2

    .line 280
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 281
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 283
    move-result v2

    .line 286
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 287
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 289
    move-result v3

    .line 292
    div-float/2addr v2, v3

    .line 293
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 294
    :cond_4
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 297
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 299
    move-result v0

    .line 302
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 303
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 305
    move-result v1

    .line 308
    int-to-float v1, v1

    .line 309
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 310
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 312
    move-result v2

    .line 315
    mul-float/2addr v2, v1

    .line 316
    const/high16 v1, 0x40000000    # 2.0f

    .line 317
    div-float/2addr v2, v1

    .line 319
    add-float v16, v2, v0

    .line 320
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 322
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 324
    move-result v0

    .line 327
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 328
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 330
    move-result v2

    .line 333
    int-to-float v2, v2

    .line 334
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 335
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 337
    move-result v3

    .line 340
    mul-float/2addr v3, v2

    .line 341
    div-float/2addr v3, v1

    .line 342
    add-float v17, v3, v0

    .line 343
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 345
    int-to-float v0, v0

    .line 347
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 348
    move-result v2

    .line 351
    int-to-float v2, v2

    .line 352
    div-float/2addr v2, v1

    .line 353
    add-float v18, v2, v0

    .line 354
    iget v0, v13, Landroid/graphics/Rect;->top:I

    .line 356
    int-to-float v0, v0

    .line 358
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 359
    move-result v2

    .line 362
    int-to-float v2, v2

    .line 363
    div-float/2addr v2, v1

    .line 364
    add-float v19, v2, v0

    .line 365
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 367
    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 369
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 372
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 374
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 377
    const-string v2, "posX"

    .line 379
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 381
    move-result-object v0

    .line 384
    const-string v2, "posY"

    .line 385
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 387
    move-result-object v0

    .line 390
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 391
    const-string v2, "scaleX"

    .line 393
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 395
    move-result-object v0

    .line 398
    const-string v2, "scaleY"

    .line 399
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 401
    move-result-object v7

    .line 404
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$13;

    .line 405
    move-object/from16 v0, v21

    .line 407
    move-object/from16 v1, p0

    .line 409
    move-object v2, v12

    .line 411
    move-object/from16 v3, v20

    .line 412
    move-object v4, v13

    .line 414
    move-object/from16 v5, p2

    .line 415
    move-object/from16 v6, p5

    .line 417
    move-object v12, v7

    .line 419
    move-object/from16 v7, p4

    .line 420
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$13;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 422
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 425
    move-result-object v0

    .line 428
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 429
    move-result-object v33

    .line 432
    const/4 v0, 0x1

    .line 433
    iput-boolean v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 434
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    .line 436
    move-result-object v1

    .line 439
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 440
    move-result-object v1

    .line 443
    const-string v20, "posX"

    .line 444
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 446
    move-result-object v21

    .line 449
    const-string v22, "posY"

    .line 450
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 452
    move-result-object v23

    .line 455
    const-string v24, "scaleX"

    .line 456
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 458
    move-result-object v25

    .line 461
    const-string v26, "scaleY"

    .line 462
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    move-result-object v27

    .line 467
    const-string v28, "coverLayerAlpha"

    .line 468
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 470
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 472
    move-result v2

    .line 475
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    move-result-object v29

    .line 479
    const-string v30, "cornerRadius"

    .line 480
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 482
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 484
    move-result v2

    .line 487
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 488
    move-result-object v31

    .line 491
    filled-new-array/range {v20 .. v31}, [Ljava/lang/Object;

    .line 492
    move-result-object v2

    .line 495
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 496
    move-result-object v1

    .line 499
    const-string v21, "posX"

    .line 500
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 502
    move-result-object v22

    .line 505
    const-string v23, "posY"

    .line 506
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 508
    move-result-object v24

    .line 511
    const-string v25, "scaleX"

    .line 512
    const/high16 v2, 0x3f800000    # 1.0f

    .line 514
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    move-result-object v26

    .line 519
    const-string v27, "scaleY"

    .line 520
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 522
    move-result-object v28

    .line 525
    const-string v29, "coverLayerAlpha"

    .line 526
    const/4 v2, 0x0

    .line 528
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 529
    move-result-object v30

    .line 532
    const-string v31, "cornerRadius"

    .line 533
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mSplitCornerRadius:F

    .line 535
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 537
    move-result-object v32

    .line 540
    filled-new-array/range {v21 .. v33}, [Ljava/lang/Object;

    .line 541
    move-result-object v2

    .line 544
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 545
    goto/16 :goto_0

    .line 548
    :cond_5
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 550
    move-result-object v4

    .line 553
    if-eqz v4, :cond_0

    .line 554
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 556
    move-result-object v4

    .line 559
    if-eqz v4, :cond_0

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 562
    move-result-object v4

    .line 565
    if-eqz v4, :cond_0

    .line 566
    if-eqz v3, :cond_0

    .line 568
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherStageInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 570
    if-eqz v3, :cond_0

    .line 572
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 574
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 576
    if-ne v2, v3, :cond_0

    .line 578
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 580
    move-result-object v2

    .line 583
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 584
    move-result-object v1

    .line 587
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 588
    int-to-float v3, v3

    .line 590
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 591
    int-to-float v2, v2

    .line 593
    invoke-virtual {v9, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 594
    goto/16 :goto_0

    .line 597
    :cond_6
    return v0
    .line 599
.end method

.method public startSplitToFreeformTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 48

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p3

    .line 4
    move-object/from16 v12, p4

    .line 6
    const/4 v6, 0x0

    .line 8
    iput v6, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 9
    new-instance v13, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v7, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda1;

    .line 18
    move-object v0, v8

    .line 20
    move-object/from16 v1, p0

    .line 21
    move-object v2, v13

    .line 23
    move-object/from16 v3, p2

    .line 24
    move-object/from16 v4, p5

    .line 26
    move-object/from16 v5, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 30
    move-object v0, v7

    .line 33
    move-object/from16 v1, p1

    .line 34
    move-object/from16 v2, p2

    .line 36
    move-object/from16 v3, p3

    .line 38
    move-object/from16 v4, p4

    .line 40
    move-object v5, v8

    .line 42
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 43
    move-result-object v14

    .line 46
    const/4 v15, 0x1

    .line 47
    if-eqz v14, :cond_0

    .line 48
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 50
    add-int/2addr v0, v15

    .line 52
    iput v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 53
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 55
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v16

    .line 62
    move v7, v6

    .line 63
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_9

    .line 68
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 74
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 76
    move-result v1

    .line 79
    and-int/lit8 v1, v1, 0x2

    .line 80
    if-eqz v1, :cond_1

    .line 82
    goto/16 :goto_3

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 86
    move-result-object v6

    .line 89
    if-eqz v6, :cond_7

    .line 90
    iget v1, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 92
    const/4 v2, -0x1

    .line 94
    if-ne v1, v2, :cond_2

    .line 95
    goto/16 :goto_3

    .line 97
    :cond_2
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    move-object v8, v1

    .line 105
    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 106
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 108
    iget v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 110
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 115
    check-cast v1, Ljava/lang/Float;

    .line 116
    const-string v9, "scaleY"

    .line 118
    const-string v5, "scaleX"

    .line 120
    const-string v4, "posY"

    .line 122
    const-string v3, "posX"

    .line 124
    if-eqz v8, :cond_5

    .line 126
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 128
    move-result v15

    .line 131
    const/4 v2, 0x6

    .line 132
    if-ne v15, v2, :cond_5

    .line 133
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 135
    move-result-object v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 141
    move-result-object v2

    .line 144
    if-eqz v2, :cond_5

    .line 145
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 147
    move-result-object v2

    .line 150
    if-eqz v2, :cond_5

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 153
    move-result-object v2

    .line 156
    if-eqz v2, :cond_5

    .line 157
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 159
    move-result v2

    .line 162
    const/4 v15, 0x5

    .line 163
    if-ne v2, v15, :cond_5

    .line 164
    if-eqz v1, :cond_5

    .line 166
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 168
    move-result v2

    .line 171
    const/4 v15, 0x0

    .line 172
    cmpl-float v2, v2, v15

    .line 173
    if-eqz v2, :cond_5

    .line 175
    iget v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 177
    const/4 v7, 0x1

    .line 179
    add-int/2addr v2, v7

    .line 180
    iput v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 181
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 183
    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 185
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 190
    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 192
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 194
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 197
    move-result-object v7

    .line 200
    new-instance v2, Landroid/graphics/Rect;

    .line 201
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 203
    move-result-object v0

    .line 206
    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 207
    if-eqz v14, :cond_3

    .line 210
    const v0, 0x7fffffff

    .line 212
    invoke-virtual {v11, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 215
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 218
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 220
    iget-object v15, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 222
    move-object/from16 v17, v0

    .line 224
    move-object v0, v14

    .line 226
    move-object/from16 v19, v1

    .line 227
    move-object v1, v6

    .line 229
    move-object/from16 v20, v2

    .line 230
    move-object/from16 v21, v14

    .line 232
    move-object v14, v3

    .line 234
    move-object/from16 v3, v19

    .line 235
    move-object/from16 v19, v9

    .line 237
    move-object v9, v4

    .line 239
    move-object/from16 v4, v17

    .line 240
    move-object/from16 v22, v5

    .line 242
    move-object v5, v15

    .line 244
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->adjustFreeformBoundsAfterRotation(Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)F

    .line 245
    move-result v0

    .line 248
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 249
    move-result-object v1

    .line 252
    iget-object v0, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 253
    move-object/from16 v8, v20

    .line 255
    invoke-virtual {v13, v0, v8}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 257
    goto :goto_1

    .line 260
    :cond_3
    move-object v8, v2

    .line 261
    move-object/from16 v22, v5

    .line 262
    move-object/from16 v19, v9

    .line 264
    move-object/from16 v21, v14

    .line 266
    move-object v14, v3

    .line 268
    move-object v9, v4

    .line 269
    :goto_1
    move-object/from16 v30, v1

    .line 270
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 272
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 274
    move-result v0

    .line 277
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 278
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 280
    move-result v1

    .line 283
    invoke-virtual {v11, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 284
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 287
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 289
    move-result v0

    .line 292
    int-to-float v0, v0

    .line 293
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 294
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 296
    move-result v1

    .line 299
    mul-float/2addr v1, v0

    .line 300
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 301
    move-result v0

    .line 304
    int-to-float v0, v0

    .line 305
    div-float v15, v1, v0

    .line 306
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 310
    move-result v0

    .line 313
    int-to-float v0, v0

    .line 314
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 315
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 317
    move-result v1

    .line 320
    mul-float/2addr v1, v0

    .line 321
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 322
    move-result v0

    .line 325
    int-to-float v0, v0

    .line 326
    div-float v5, v1, v0

    .line 327
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 329
    move-result v0

    .line 332
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 333
    move-result v1

    .line 336
    invoke-virtual {v11, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 337
    invoke-virtual {v11, v7, v15, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 340
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    .line 343
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    .line 345
    move-result v1

    .line 348
    div-float/2addr v0, v1

    .line 349
    invoke-virtual {v12, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 350
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 353
    move-result v0

    .line 356
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 357
    move-result v1

    .line 360
    invoke-virtual {v12, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 361
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    .line 364
    move-result v0

    .line 367
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    .line 368
    move-result v1

    .line 371
    invoke-virtual {v12, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 372
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 375
    int-to-float v0, v0

    .line 377
    iget v1, v8, Landroid/graphics/Rect;->top:I

    .line 378
    int-to-float v1, v1

    .line 380
    invoke-virtual {v12, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 381
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mContext:Landroid/content/Context;

    .line 384
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 386
    invoke-static {v0, v6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeformByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 388
    iget-boolean v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 391
    if-eqz v0, :cond_4

    .line 393
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 395
    if-eqz v0, :cond_4

    .line 397
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 399
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 401
    move-result v6

    .line 404
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 405
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 407
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 409
    move-result v2

    .line 412
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 413
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 415
    move-result v3

    .line 418
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 419
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 421
    move-result v4

    .line 424
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 425
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 427
    move-result v17

    .line 430
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 431
    move-object/from16 v20, v1

    .line 433
    move-object/from16 v1, p3

    .line 435
    move/from16 v23, v5

    .line 437
    move/from16 v5, v17

    .line 439
    move-object v12, v7

    .line 441
    move-object/from16 v7, v20

    .line 442
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 444
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 447
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 449
    move-result v0

    .line 452
    div-float/2addr v0, v15

    .line 453
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 454
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 456
    move-result v1

    .line 459
    div-float v1, v1, v23

    .line 460
    invoke-virtual {v11, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 462
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 465
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 467
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 469
    move-result v1

    .line 472
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 473
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 475
    move-result v2

    .line 478
    div-float/2addr v1, v2

    .line 479
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 480
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 482
    move-result v2

    .line 485
    iget-object v3, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 486
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 488
    move-result v3

    .line 491
    div-float/2addr v2, v3

    .line 492
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 493
    goto :goto_2

    .line 496
    :cond_4
    move/from16 v23, v5

    .line 497
    move-object v12, v7

    .line 499
    :goto_2
    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 500
    int-to-float v7, v0

    .line 502
    iget v0, v8, Landroid/graphics/Rect;->top:I

    .line 503
    int-to-float v6, v0

    .line 505
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    .line 506
    move-result v5

    .line 509
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 510
    invoke-direct/range {v17 .. v17}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 512
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 515
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 517
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 520
    invoke-virtual {v0, v14, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 522
    move-result-object v0

    .line 525
    invoke-virtual {v0, v9, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 526
    move-result-object v0

    .line 529
    move-object/from16 v2, v22

    .line 530
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 532
    move-result-object v0

    .line 535
    move-object/from16 v3, v19

    .line 536
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 538
    move-result-object v14

    .line 541
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$11;

    .line 542
    move-object/from16 v0, v19

    .line 544
    move-object/from16 v1, p0

    .line 546
    move-object v2, v12

    .line 548
    move-object/from16 v3, v17

    .line 549
    move-object v4, v8

    .line 551
    move v12, v6

    .line 552
    move-object/from16 v6, p2

    .line 553
    move/from16 v20, v7

    .line 555
    move-object/from16 v7, p5

    .line 557
    move-object/from16 v8, p4

    .line 559
    move-object v9, v13

    .line 561
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$11;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;FLandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 562
    filled-new-array/range {v19 .. v19}, [Lmiuix/animation/listener/TransitionListener;

    .line 565
    move-result-object v0

    .line 568
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 569
    move-result-object v35

    .line 572
    const/4 v0, 0x1

    .line 573
    iput-boolean v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 574
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 576
    move-result-object v0

    .line 579
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 580
    move-result-object v0

    .line 583
    const-string v36, "posX"

    .line 584
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 586
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 588
    move-result v1

    .line 591
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 592
    move-result-object v37

    .line 595
    const-string v38, "posY"

    .line 596
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 598
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 600
    move-result v1

    .line 603
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 604
    move-result-object v39

    .line 607
    const-string v40, "scaleX"

    .line 608
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 610
    move-result-object v41

    .line 613
    const-string v42, "scaleY"

    .line 614
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 616
    move-result-object v43

    .line 619
    const-string v44, "coverLayerAlpha"

    .line 620
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 622
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 624
    move-result v1

    .line 627
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 628
    move-result-object v45

    .line 631
    const-string v46, "cornerRadius"

    .line 632
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 634
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 636
    move-result v1

    .line 639
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 640
    move-result-object v47

    .line 643
    filled-new-array/range {v36 .. v47}, [Ljava/lang/Object;

    .line 644
    move-result-object v1

    .line 647
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 648
    move-result-object v0

    .line 651
    const-string v23, "posX"

    .line 652
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 654
    move-result-object v24

    .line 657
    const-string v25, "posY"

    .line 658
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 660
    move-result-object v26

    .line 663
    const-string v27, "scaleX"

    .line 664
    const-string v29, "scaleY"

    .line 666
    const-string v31, "coverLayerAlpha"

    .line 668
    const/4 v1, 0x0

    .line 670
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 671
    move-result-object v32

    .line 674
    const-string v33, "cornerRadius"

    .line 675
    iget v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFreeformCornerRadius:F

    .line 677
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 679
    move-result-object v34

    .line 682
    move-object/from16 v28, v30

    .line 683
    filled-new-array/range {v23 .. v35}, [Ljava/lang/Object;

    .line 685
    move-result-object v1

    .line 688
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 689
    const/4 v7, 0x1

    .line 692
    goto/16 :goto_4

    .line 693
    :cond_5
    move-object v2, v5

    .line 695
    move-object/from16 v21, v14

    .line 696
    move-object v14, v3

    .line 698
    move-object v3, v9

    .line 699
    move-object v9, v4

    .line 700
    if-eqz v8, :cond_6

    .line 701
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 703
    move-result-object v1

    .line 706
    if-eqz v1, :cond_6

    .line 707
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 709
    move-result-object v1

    .line 712
    if-eqz v1, :cond_6

    .line 713
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 715
    move-result-object v1

    .line 718
    if-eqz v1, :cond_6

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 721
    move-result-object v1

    .line 724
    if-eqz v1, :cond_6

    .line 725
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 727
    move-result v1

    .line 730
    const/4 v8, 0x1

    .line 731
    if-ne v1, v8, :cond_6

    .line 732
    iget v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 734
    add-int/2addr v1, v8

    .line 736
    iput v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 737
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 739
    iget v4, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 741
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 743
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 746
    move-result-object v12

    .line 749
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideTargetPos:Landroid/graphics/PointF;

    .line 750
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 752
    float-to-int v4, v4

    .line 754
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 755
    float-to-int v1, v1

    .line 757
    invoke-virtual {v12, v4, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 758
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 761
    move-result-object v1

    .line 764
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 765
    move-result-object v4

    .line 768
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 769
    int-to-float v0, v0

    .line 771
    iget v5, v12, Landroid/graphics/Rect;->top:I

    .line 772
    int-to-float v5, v5

    .line 774
    invoke-virtual {v11, v4, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 775
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 778
    move-result v0

    .line 781
    int-to-float v0, v0

    .line 782
    const/high16 v15, 0x3f800000    # 1.0f

    .line 783
    mul-float/2addr v0, v15

    .line 785
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 786
    move-result v5

    .line 789
    int-to-float v5, v5

    .line 790
    div-float v6, v0, v5

    .line 791
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 793
    move-result v0

    .line 796
    int-to-float v0, v0

    .line 797
    mul-float/2addr v0, v15

    .line 798
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 799
    move-result v5

    .line 802
    int-to-float v5, v5

    .line 803
    div-float v5, v0, v5

    .line 804
    invoke-virtual {v11, v4, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 806
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 809
    move-result v0

    .line 812
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 813
    move-result v8

    .line 816
    invoke-virtual {v11, v4, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 817
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    .line 820
    invoke-virtual {v11, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 822
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenCornerRadius:F

    .line 825
    move-object/from16 v8, p4

    .line 827
    invoke-virtual {v8, v4, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 829
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 832
    int-to-float v0, v0

    .line 834
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 835
    int-to-float v1, v1

    .line 837
    new-instance v15, Lmiuix/animation/base/AnimConfig;

    .line 838
    invoke-direct {v15}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 840
    move/from16 v18, v0

    .line 843
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 845
    invoke-virtual {v15, v14, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 847
    move-result-object v14

    .line 850
    invoke-virtual {v14, v9, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 851
    move-result-object v9

    .line 854
    invoke-virtual {v9, v2, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 855
    move-result-object v2

    .line 858
    invoke-virtual {v2, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 859
    move-result-object v9

    .line 862
    new-instance v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$12;

    .line 863
    move/from16 v15, v18

    .line 865
    move-object v0, v14

    .line 867
    move/from16 v18, v1

    .line 868
    move-object/from16 v1, p0

    .line 870
    move-object v2, v4

    .line 872
    move-object/from16 v3, p2

    .line 873
    move-object/from16 v4, p5

    .line 875
    move/from16 v19, v5

    .line 877
    move-object/from16 v5, p4

    .line 879
    move/from16 v20, v6

    .line 881
    move-object v6, v13

    .line 883
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$12;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 884
    filled-new-array {v14}, [Lmiuix/animation/listener/TransitionListener;

    .line 887
    move-result-object v0

    .line 890
    invoke-virtual {v9, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 891
    move-result-object v30

    .line 894
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfoOtherSide:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 895
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 897
    move-result-object v0

    .line 900
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 901
    move-result-object v0

    .line 904
    const-string v22, "posX"

    .line 905
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 907
    int-to-float v1, v1

    .line 909
    const/high16 v2, 0x3f800000    # 1.0f

    .line 910
    mul-float/2addr v1, v2

    .line 912
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 913
    move-result-object v23

    .line 916
    const-string v24, "posY"

    .line 917
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 919
    int-to-float v1, v1

    .line 921
    mul-float/2addr v1, v2

    .line 922
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 923
    move-result-object v25

    .line 926
    const-string v26, "scaleX"

    .line 927
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 929
    move-result-object v27

    .line 932
    const-string v28, "scaleY"

    .line 933
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 935
    move-result-object v29

    .line 938
    filled-new-array/range {v22 .. v29}, [Ljava/lang/Object;

    .line 939
    move-result-object v1

    .line 942
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 943
    move-result-object v0

    .line 946
    const-string v22, "posX"

    .line 947
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 949
    move-result-object v23

    .line 952
    const-string v24, "posY"

    .line 953
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 955
    move-result-object v25

    .line 958
    const-string v26, "scaleX"

    .line 959
    const/high16 v1, 0x3f800000    # 1.0f

    .line 961
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 963
    move-result-object v27

    .line 966
    const-string v28, "scaleY"

    .line 967
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 969
    move-result-object v29

    .line 972
    filled-new-array/range {v22 .. v30}, [Ljava/lang/Object;

    .line 973
    move-result-object v1

    .line 976
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 977
    goto :goto_4

    .line 980
    :cond_6
    move-object/from16 v8, p4

    .line 981
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 983
    move-result-object v1

    .line 986
    if-eqz v1, :cond_8

    .line 987
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 989
    move-result-object v1

    .line 992
    if-eqz v1, :cond_8

    .line 993
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 995
    move-result-object v1

    .line 998
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 999
    move-result v1

    .line 1002
    const/4 v2, 0x5

    .line 1003
    if-ne v1, v2, :cond_8

    .line 1004
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1006
    move-result-object v1

    .line 1009
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 1010
    if-eqz v1, :cond_8

    .line 1012
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1014
    move-result-object v1

    .line 1017
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 1018
    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 1020
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 1022
    move-result-object v0

    .line 1025
    invoke-virtual {v11, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1026
    goto :goto_4

    .line 1029
    :cond_7
    :goto_3
    move-object v8, v12

    .line 1030
    move-object/from16 v21, v14

    .line 1031
    :cond_8
    :goto_4
    move-object v12, v8

    .line 1033
    move-object/from16 v14, v21

    .line 1034
    const/4 v15, 0x1

    .line 1036
    goto/16 :goto_0

    .line 1037
    :cond_9
    return v7
    .line 1039
.end method

.method public startSplitToFullTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 37

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v11, 0x0

    .line 8
    iput v11, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v12

    .line 18
    move v6, v11

    .line 19
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_7

    .line 24
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 30
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 32
    move-result v1

    .line 35
    and-int/lit8 v1, v1, 0x2

    .line 36
    if-eqz v1, :cond_0

    .line 38
    goto/16 :goto_2

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object v1

    .line 45
    if-eqz v1, :cond_6

    .line 46
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    const/4 v3, -0x1

    .line 50
    if-ne v2, v3, :cond_1

    .line 51
    goto/16 :goto_2

    .line 53
    :cond_1
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    const/4 v13, 0x0

    .line 63
    const/high16 v14, 0x3f800000    # 1.0f

    .line 64
    const/4 v15, 0x1

    .line 66
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 69
    move-result v3

    .line 72
    const/4 v4, 0x6

    .line 73
    if-ne v3, v4, :cond_3

    .line 74
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 76
    move-result-object v3

    .line 79
    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 82
    move-result-object v3

    .line 85
    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 88
    move-result-object v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 94
    move-result-object v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 100
    move-result v3

    .line 103
    if-ne v3, v15, :cond_3

    .line 104
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 106
    add-int/2addr v2, v15

    .line 108
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 109
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 111
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 113
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 115
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 118
    move-result-object v7

    .line 121
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 122
    move-result-object v6

    .line 125
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 126
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 128
    move-result v0

    .line 131
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 132
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 134
    move-result v1

    .line 137
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 138
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 141
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 143
    move-result v0

    .line 146
    int-to-float v0, v0

    .line 147
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 148
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 150
    move-result v1

    .line 153
    mul-float/2addr v1, v0

    .line 154
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 155
    move-result v0

    .line 158
    int-to-float v0, v0

    .line 159
    div-float v5, v1, v0

    .line 160
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 164
    move-result v0

    .line 167
    int-to-float v0, v0

    .line 168
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 169
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 171
    move-result v1

    .line 174
    mul-float/2addr v1, v0

    .line 175
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 176
    move-result v0

    .line 179
    int-to-float v0, v0

    .line 180
    div-float v4, v1, v0

    .line 181
    invoke-virtual {v9, v7, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 183
    iget-boolean v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->isAddedCover:Z

    .line 186
    if-eqz v0, :cond_2

    .line 188
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 190
    if-eqz v0, :cond_2

    .line 192
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 194
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 196
    move-result v16

    .line 199
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 200
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 202
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 204
    move-result v2

    .line 207
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 208
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 210
    move-result v3

    .line 213
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 214
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 216
    move-result v17

    .line 219
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 220
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 222
    move-result v18

    .line 225
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 226
    move-object/from16 v19, v1

    .line 228
    move-object/from16 v1, p3

    .line 230
    move/from16 v20, v4

    .line 232
    move/from16 v4, v17

    .line 234
    move/from16 v17, v5

    .line 236
    move/from16 v5, v18

    .line 238
    move-object/from16 p1, v6

    .line 240
    move/from16 v6, v16

    .line 242
    move-object v11, v7

    .line 244
    move-object/from16 v7, v19

    .line 245
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 247
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 250
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 252
    move-result v0

    .line 255
    div-float v0, v0, v17

    .line 256
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 258
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 260
    move-result v1

    .line 263
    div-float v1, v1, v20

    .line 264
    invoke-virtual {v9, v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 266
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 269
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 271
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 273
    move-result v1

    .line 276
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 277
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 279
    move-result v2

    .line 282
    div-float/2addr v1, v2

    .line 283
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 284
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 286
    move-result v2

    .line 289
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 290
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 292
    move-result v3

    .line 295
    div-float/2addr v2, v3

    .line 296
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 297
    goto :goto_1

    .line 300
    :cond_2
    move/from16 v20, v4

    .line 301
    move/from16 v17, v5

    .line 303
    move-object/from16 p1, v6

    .line 305
    move-object v11, v7

    .line 307
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 308
    move-result v0

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    .line 312
    move-result v1

    .line 315
    invoke-virtual {v9, v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 316
    invoke-virtual {v9, v11}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    .line 322
    move-result v0

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    .line 326
    move-result v1

    .line 329
    invoke-virtual {v10, v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 330
    iget v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenCornerRadius:F

    .line 333
    invoke-virtual {v10, v11, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 335
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 338
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 340
    move-result v0

    .line 343
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 344
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 346
    move-result v1

    .line 349
    int-to-float v1, v1

    .line 350
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 351
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 353
    move-result v2

    .line 356
    mul-float/2addr v2, v1

    .line 357
    const/high16 v1, 0x40000000    # 2.0f

    .line 358
    div-float/2addr v2, v1

    .line 360
    add-float v18, v2, v0

    .line 361
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 363
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 365
    move-result v0

    .line 368
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mTaskBounds:Landroid/graphics/Rect;

    .line 369
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 371
    move-result v2

    .line 374
    int-to-float v2, v2

    .line 375
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 376
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 378
    move-result v3

    .line 381
    mul-float/2addr v3, v2

    .line 382
    div-float/2addr v3, v1

    .line 383
    add-float v19, v3, v0

    .line 384
    move-object/from16 v4, p1

    .line 386
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 388
    int-to-float v0, v0

    .line 390
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 391
    move-result v2

    .line 394
    int-to-float v2, v2

    .line 395
    div-float/2addr v2, v1

    .line 396
    add-float v21, v2, v0

    .line 397
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 399
    int-to-float v0, v0

    .line 401
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 402
    move-result v2

    .line 405
    int-to-float v2, v2

    .line 406
    div-float/2addr v2, v1

    .line 407
    add-float v22, v2, v0

    .line 408
    new-instance v23, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 410
    invoke-direct/range {v23 .. v23}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 412
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 415
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 417
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 420
    const-string v2, "posX"

    .line 422
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 424
    move-result-object v0

    .line 427
    const-string v2, "posY"

    .line 428
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 430
    move-result-object v0

    .line 433
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 434
    const-string v2, "scaleX"

    .line 436
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 438
    move-result-object v0

    .line 441
    const-string v2, "scaleY"

    .line 442
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 444
    move-result-object v7

    .line 447
    new-instance v24, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$9;

    .line 448
    move-object/from16 v0, v24

    .line 450
    move-object/from16 v1, p0

    .line 452
    move-object v2, v11

    .line 454
    move-object/from16 v3, v23

    .line 455
    move-object/from16 v5, p2

    .line 457
    move-object/from16 v6, p5

    .line 459
    move-object v11, v7

    .line 461
    move-object/from16 v7, p4

    .line 462
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$9;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 464
    filled-new-array/range {v24 .. v24}, [Lmiuix/animation/listener/TransitionListener;

    .line 467
    move-result-object v0

    .line 470
    invoke-virtual {v11, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 471
    move-result-object v36

    .line 474
    iput-boolean v15, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mCancelMoveAnim:Z

    .line 475
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    .line 477
    move-result-object v0

    .line 480
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 481
    move-result-object v0

    .line 484
    const-string v23, "posX"

    .line 485
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 487
    move-result-object v24

    .line 490
    const-string v25, "posY"

    .line 491
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 493
    move-result-object v26

    .line 496
    const-string v27, "scaleX"

    .line 497
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 499
    move-result-object v28

    .line 502
    const-string v29, "scaleY"

    .line 503
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 505
    move-result-object v30

    .line 508
    const-string v31, "coverLayerAlpha"

    .line 509
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 511
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 513
    move-result v1

    .line 516
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 517
    move-result-object v32

    .line 520
    const-string v33, "cornerRadius"

    .line 521
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 523
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 525
    move-result v1

    .line 528
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 529
    move-result-object v34

    .line 532
    filled-new-array/range {v23 .. v34}, [Ljava/lang/Object;

    .line 533
    move-result-object v1

    .line 536
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 537
    move-result-object v0

    .line 540
    const-string v24, "posX"

    .line 541
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 543
    move-result-object v25

    .line 546
    const-string v26, "posY"

    .line 547
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 549
    move-result-object v27

    .line 552
    const-string v28, "scaleX"

    .line 553
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 555
    move-result-object v29

    .line 558
    const-string v30, "scaleY"

    .line 559
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 561
    move-result-object v31

    .line 564
    const-string v32, "coverLayerAlpha"

    .line 565
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 567
    move-result-object v33

    .line 570
    const-string v34, "cornerRadius"

    .line 571
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mFullScreenDeviceCorner:F

    .line 573
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 575
    move-result-object v35

    .line 578
    filled-new-array/range {v24 .. v36}, [Ljava/lang/Object;

    .line 579
    move-result-object v1

    .line 582
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 583
    move v6, v15

    .line 586
    goto/16 :goto_2

    .line 587
    :cond_3
    if-eqz v2, :cond_5

    .line 589
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 591
    move-result v2

    .line 594
    const/4 v3, 0x4

    .line 595
    if-ne v2, v3, :cond_5

    .line 596
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 598
    move-result-object v2

    .line 601
    if-eqz v2, :cond_5

    .line 602
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 604
    move-result-object v2

    .line 607
    if-eqz v2, :cond_5

    .line 608
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 610
    move-result-object v2

    .line 613
    if-eqz v2, :cond_5

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 616
    move-result-object v2

    .line 619
    if-eqz v2, :cond_5

    .line 620
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 622
    move-result v2

    .line 625
    if-ne v2, v15, :cond_5

    .line 626
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 628
    add-int/2addr v2, v15

    .line 630
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->animCount:I

    .line 631
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 633
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 635
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 637
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 640
    move-result-object v1

    .line 643
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mOtherSideTargetPos:Landroid/graphics/PointF;

    .line 644
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 646
    float-to-int v3, v3

    .line 648
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 649
    float-to-int v2, v2

    .line 651
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 652
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 655
    move-result-object v2

    .line 658
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 659
    int-to-float v3, v3

    .line 661
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 662
    int-to-float v4, v4

    .line 664
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 665
    move-result v5

    .line 668
    int-to-float v5, v5

    .line 669
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 670
    move-result v7

    .line 673
    int-to-float v7, v7

    .line 674
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 675
    move-result v11

    .line 678
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 679
    move-result v0

    .line 682
    if-eq v11, v0, :cond_4

    .line 683
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 685
    int-to-float v3, v0

    .line 687
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 688
    int-to-float v4, v0

    .line 690
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 691
    move-result v0

    .line 694
    int-to-float v5, v0

    .line 695
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 696
    move-result v0

    .line 699
    int-to-float v7, v0

    .line 700
    :cond_4
    move v11, v4

    .line 701
    move v0, v7

    .line 702
    move v7, v3

    .line 703
    const v1, 0x3dcccccd    # 0.1f

    .line 704
    mul-float v3, v5, v1

    .line 707
    add-float v17, v3, v7

    .line 709
    mul-float/2addr v1, v0

    .line 711
    add-float v18, v1, v11

    .line 712
    invoke-virtual {v9, v2, v7, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 714
    invoke-virtual {v9, v2, v14, v14}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 717
    float-to-int v1, v5

    .line 720
    float-to-int v0, v0

    .line 721
    invoke-virtual {v9, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 722
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 725
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 727
    new-array v1, v15, [F

    .line 730
    const/high16 v3, 0x43160000    # 150.0f

    .line 732
    const/4 v15, 0x0

    .line 734
    aput v3, v1, v15

    .line 735
    const/16 v3, 0xf

    .line 737
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 739
    move-result-object v0

    .line 742
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 743
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 745
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 747
    const-string v3, "leashAlpha"

    .line 750
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 752
    move-result-object v5

    .line 755
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$10;

    .line 756
    move-object/from16 v0, v16

    .line 758
    move-object/from16 v1, p0

    .line 760
    move-object/from16 v3, p2

    .line 762
    move-object/from16 v4, p5

    .line 764
    move-object v15, v5

    .line 766
    move-object/from16 v5, p4

    .line 767
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$10;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 769
    filled-new-array/range {v16 .. v16}, [Lmiuix/animation/listener/TransitionListener;

    .line 772
    move-result-object v0

    .line 775
    invoke-virtual {v15, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 776
    move-result-object v29

    .line 779
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->mMiuiMultiWinAnimInfoOtherSide:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 780
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 782
    move-result-object v0

    .line 785
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 786
    move-result-object v0

    .line 789
    const-string v19, "posX"

    .line 790
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 792
    move-result-object v20

    .line 795
    const-string v21, "posY"

    .line 796
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 798
    move-result-object v22

    .line 801
    const-string v23, "scaleX"

    .line 802
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 804
    move-result-object v24

    .line 807
    const-string v25, "scaleY"

    .line 808
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 810
    move-result-object v26

    .line 813
    const-string v27, "leashAlpha"

    .line 814
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 816
    move-result-object v28

    .line 819
    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    .line 820
    move-result-object v1

    .line 823
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 824
    move-result-object v0

    .line 827
    const-string v19, "posX"

    .line 828
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 830
    move-result-object v20

    .line 833
    const-string v21, "posY"

    .line 834
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 836
    move-result-object v22

    .line 839
    const-string v23, "scaleX"

    .line 840
    const v1, 0x3f4ccccd    # 0.8f

    .line 842
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 845
    move-result-object v24

    .line 848
    const-string v25, "scaleY"

    .line 849
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 851
    move-result-object v26

    .line 854
    const-string v27, "leashAlpha"

    .line 855
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 857
    move-result-object v28

    .line 860
    filled-new-array/range {v19 .. v29}, [Ljava/lang/Object;

    .line 861
    move-result-object v1

    .line 864
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 865
    goto :goto_2

    .line 868
    :cond_5
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 869
    move-result-object v1

    .line 872
    if-eqz v1, :cond_6

    .line 873
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 875
    move-result-object v1

    .line 878
    if-eqz v1, :cond_6

    .line 879
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 881
    move-result-object v1

    .line 884
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 885
    move-result v1

    .line 888
    const/4 v2, 0x5

    .line 889
    if-ne v1, v2, :cond_6

    .line 890
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 892
    move-result-object v1

    .line 895
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 896
    if-eqz v1, :cond_6

    .line 898
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 900
    move-result-object v1

    .line 903
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 904
    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 906
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 908
    move-result-object v0

    .line 911
    invoke-virtual {v9, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 912
    :cond_6
    :goto_2
    const/4 v11, 0x0

    .line 915
    goto/16 :goto_0

    .line 916
    :cond_7
    return v6
    .line 918
.end method
