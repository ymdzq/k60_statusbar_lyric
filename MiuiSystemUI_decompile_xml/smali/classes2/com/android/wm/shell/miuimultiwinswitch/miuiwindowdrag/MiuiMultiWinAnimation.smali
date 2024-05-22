.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# static fields
.field public static final APP_ICON_SIZE_DP:I = 0x45

.field private static final CORVE_RCORNER_RADIUS:I = 0x12

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinAnimation"


# instance fields
.field private isAddedCover:Z

.field private final mAppIconSizePx:I

.field mCancelMoveAnim:Z

.field mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverCornerRadius:F

.field private mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

.field private mFreeformCornerRadius:F

.field private mFreeformFillSplitTransAnimCount:I

.field private final mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private mFreeformRepleceSplitTransAnimCount:I

.field private mFreeformSqueeSplitTransAnimCount:I

.field private mFreeformToFullTransAnimCount:I

.field private mFreeformToSplitTransAnimCount:I

.field private mFreeformToSplitUnsupportedAnimCount:I

.field private mFullScreenCornerRadius:F

.field private mFullScreenDeviceCorner:F

.field private mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field mIsHandlingFreeformUp:Z

.field private final mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

.field private final mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

.field private final mPendingTaskInfo:Landroid/util/SparseArray;

.field private final mPendingTransitionTokens:Landroid/util/ArrayMap;

.field private final mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private mRotation:I

.field private mShapeLayerHeight:I

.field private mShapeLayerWidth:I

.field private final mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field private mSplitCornerRadius:F

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private mTaskBounds:Landroid/graphics/Rect;

.field private final mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$9RUmZ4SDJyc_XuN50EW2jQxhpp8(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p1, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->lambda$finishTransition$0(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformFillSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformFillSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformRepleceSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformSqueeSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformToSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformToSplitUnsupportedAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmMiuiDisplayInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmRotation(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mRotation:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSoScSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncQueue(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/common/SyncTransactionQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskBounds(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 3
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformFillSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformFillSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformRepleceSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformSqueeSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformToSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformToSplitUnsupportedAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mfinishTransition(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p2, p0, p3, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/TransactionPool;Landroid/content/pm/PackageManager;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p10, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {p10}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 10
    new-instance p10, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p10}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 17
    new-instance p10, Landroid/util/SparseArray;

    .line 19
    invoke-direct {p10}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 24
    const/4 p10, 0x0

    .line 26
    iput-boolean p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 27
    iput-boolean p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIsHandlingFreeformUp:Z

    .line 29
    iput-boolean p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCanceled:Z

    .line 31
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 33
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 35
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 37
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 39
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformFillSplitTransAnimCount:I

    .line 41
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 43
    const/high16 v0, 0x41900000    # 18.0f

    .line 45
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 47
    const/high16 v1, 0x41b00000    # 22.0f

    .line 49
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 51
    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFullScreenCornerRadius:F

    .line 54
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFullScreenDeviceCorner:F

    .line 56
    const/high16 v1, 0x42580000    # 54.0f

    .line 58
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCoverCornerRadius:F

    .line 60
    iput-boolean p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 62
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 66
    new-instance p10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 68
    invoke-direct {p10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;-><init>()V

    .line 70
    iput-object p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 73
    const/16 p10, 0x78

    .line 75
    invoke-static {p1, p10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 77
    move-result p10

    .line 80
    iput p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mShapeLayerWidth:I

    .line 81
    invoke-virtual {p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 83
    move-result-object p3

    .line 86
    iget p3, p3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 87
    int-to-float p3, p3

    .line 89
    const/high16 p10, 0x40000000    # 2.0f

    .line 90
    div-float/2addr p3, p10

    .line 92
    float-to-int p3, p3

    .line 93
    iput p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mShapeLayerHeight:I

    .line 94
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 96
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 98
    iput-object p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 100
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    iput-object p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 104
    iput-object p8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 106
    iput-object p9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 108
    iput-object p11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 110
    iput-object p12, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 112
    iput-object p13, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 114
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    .line 116
    move-result p2

    .line 119
    int-to-float p2, p2

    .line 120
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 121
    const/16 p2, 0x12

    .line 123
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 125
    move-result p2

    .line 128
    int-to-float p2, p2

    .line 129
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCoverCornerRadius:F

    .line 130
    const/high16 p2, 0x428a0000    # 69.0f

    .line 132
    invoke-static {p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    .line 134
    move-result p2

    .line 137
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mAppIconSizePx:I

    .line 138
    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    .line 140
    move-result p1

    .line 143
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFullScreenDeviceCorner:F

    .line 144
    return-void
    .line 146
.end method

.method private finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v1, p1, p3, p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$$ExternalSyntheticLambda0;-><init>(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 8
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void
    .line 16
.end method

.method private synthetic lambda$finishTransition$0(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 1

    .line 1
    const/16 v0, 0xd5

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    const/16 v0, 0xd4

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    const/16 v0, 0xd3

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    const/16 v0, 0xd0

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    const/16 v0, 0xd1

    .line 18
    if-eq p1, v0, :cond_0

    .line 20
    const/16 v0, 0xd2

    .line 22
    if-ne p1, v0, :cond_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 26
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 28
    :cond_1
    const/4 p2, 0x0

    .line 31
    invoke-interface {p3, p2, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 32
    const-string p2, "FF_UI/MWS_ACTION_DRAG_WINDOW_RESIZE"

    .line 35
    invoke-static {p2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->onTransitionEnd(I)V

    .line 40
    return-void
    .line 43
.end method

.method private onTransitionEnd(I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->releaseCover()V

    .line 21
    const/16 v0, 0xd5

    .line 24
    const/16 v1, 0xd1

    .line 26
    const/16 v2, 0xd2

    .line 28
    const/16 v3, 0xd0

    .line 30
    if-eq p1, v0, :cond_0

    .line 32
    const/16 v0, 0xd4

    .line 34
    if-eq p1, v0, :cond_0

    .line 36
    const/16 v0, 0xd3

    .line 38
    if-eq p1, v0, :cond_0

    .line 40
    if-eq p1, v3, :cond_0

    .line 42
    if-eq p1, v1, :cond_0

    .line 44
    if-ne p1, v2, :cond_1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 48
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 50
    :cond_1
    if-eq p1, v3, :cond_3

    .line 53
    if-ne p1, v2, :cond_2

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    if-ne p1, v1, :cond_4

    .line 58
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 60
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->continueUpdateSoScState()V

    .line 62
    goto :goto_1

    .line 65
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 66
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->continueUpdateSoScState()V

    .line 68
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->ensureSoScMinimized()V

    .line 73
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 76
    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setMultiWinSwitchAnimationRunning(Z)V

    .line 79
    return-void
    .line 82
.end method

.method private startFreeformReplaceSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    move p1, v2

    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 18
    move-result p1

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    move v1, v2

    .line 25
    move p1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, -0x1

    .line 28
    move v1, p1

    .line 29
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 30
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 32
    move-result-object v4

    .line 35
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 36
    invoke-virtual {v5, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 38
    move-result-object v7

    .line 41
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 44
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 46
    move-result-object v6

    .line 49
    if-nez p1, :cond_2

    .line 50
    move v9, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v9, v2

    .line 54
    :goto_1
    const/4 v10, 0x0

    .line 55
    move-object v8, v4

    .line 56
    invoke-static/range {v5 .. v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitByExistReplace(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZZ)V

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 60
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    move-result-object v1

    .line 65
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 73
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    move-result-object v3

    .line 78
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 79
    invoke-virtual {v1, v0, v3, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 81
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 84
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 94
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 96
    move-result-object v1

    .line 99
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 102
    const/16 p1, 0xd5

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 107
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 110
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 112
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 114
    move-result-object v0

    .line 117
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 118
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 123
    iget p1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 125
    invoke-virtual {p0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    return-void
    .line 130
.end method

.method private startFreeformSqueeOrFillSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    move p1, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 12
    move-result p1

    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    move p1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, -0x1

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    move v0, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v0, v2

    .line 32
    :goto_1
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 33
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    move-result-object v3

    .line 38
    if-ne p1, v0, :cond_3

    .line 39
    const/16 v4, 0xd4

    .line 41
    goto :goto_2

    .line 43
    :cond_3
    const/16 v4, 0xd3

    .line 44
    :goto_2
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 46
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 48
    invoke-virtual {v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    move-result-object v6

    .line 53
    xor-int/2addr v0, v2

    .line 54
    invoke-static {v5, v6, v3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFullSplitFromSingleByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 55
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 58
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 63
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    move-result-object v2

    .line 68
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 74
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 76
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    move-result-object v5

    .line 81
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 82
    invoke-virtual {v2, v0, v5, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 84
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 87
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 89
    const/high16 v1, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 94
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 97
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 99
    move-result-object v1

    .line 102
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 105
    invoke-direct {p0, v4, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 108
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 111
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 113
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 115
    move-result-object v0

    .line 118
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 119
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 124
    iget p1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 126
    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    return-void
    .line 131
.end method

.method private startFreeformToFull(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 13
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 21
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 28
    move-result-object v0

    .line 31
    const/4 v4, 0x5

    .line 32
    invoke-virtual {v0, v4, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 33
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v4

    .line 46
    sub-int/2addr v4, v2

    .line 47
    :goto_0
    if-ltz v4, :cond_2

    .line 48
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 53
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 56
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 62
    move-result v6

    .line 65
    if-ne v6, v2, :cond_1

    .line 66
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 68
    move-result v6

    .line 71
    if-ne v6, v2, :cond_1

    .line 72
    move-object v0, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    move-object v0, v3

    .line 79
    :goto_1
    if-eqz v0, :cond_3

    .line 80
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 82
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 84
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    :cond_3
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 89
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 91
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 94
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 96
    move-result-object v4

    .line 99
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 100
    invoke-virtual {v0, v4, v1}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 102
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 105
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 107
    move-result-object v4

    .line 110
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 111
    invoke-virtual {v0, v4, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 113
    new-instance v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 116
    invoke-direct {v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 118
    const/high16 v5, 0x3f800000    # 1.0f

    .line 121
    invoke-virtual {v4, v5}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 123
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 126
    invoke-virtual {v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 128
    move-result-object v5

    .line 131
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 132
    invoke-virtual {v0, v5, v4}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 134
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 137
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 139
    move-result-object v4

    .line 142
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 143
    invoke-virtual {v0, v4, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 145
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 148
    move-result v3

    .line 151
    if-nez v3, :cond_4

    .line 152
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 154
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 156
    move-result-object v2

    .line 159
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 162
    goto :goto_2

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 166
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 168
    move-result-object v1

    .line 171
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 174
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 177
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 179
    move-result-object v1

    .line 182
    invoke-virtual {v1, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->hideOtherFreeform(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 183
    const/16 v1, 0xcf

    .line 186
    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 188
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 191
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 193
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 195
    move-result-object p0

    .line 198
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 199
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    return-void
    .line 204
.end method

.method private startFreeformToSingleOpen(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 17
    move-result p1

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, -0x1

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    move-result-object p1

    .line 31
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 39
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    move-result-object v1

    .line 44
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 45
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 47
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 50
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 52
    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 60
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    move-result-object v1

    .line 65
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 68
    const/16 p1, 0xd0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 73
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 78
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 80
    move-result-object p0

    .line 83
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 84
    invoke-virtual {p1, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    return-void
    .line 89
.end method

.method private startFreeformToSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 17
    move-result p1

    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, -0x1

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 28
    move-result-object p1

    .line 31
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 32
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 37
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 39
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    move-result-object v1

    .line 44
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 45
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 47
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 50
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 52
    const/high16 v1, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 57
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 60
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    move-result-object v1

    .line 65
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 68
    const/16 p1, 0xd1

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 73
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 76
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 78
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 80
    move-result-object v0

    .line 83
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 89
    iget p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 91
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    return-void
    .line 96
.end method

.method private startFreeformToSplitUnSupported(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 2
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 7
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 9
    move-result-object v1

    .line 12
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 13
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 19
    move-result v1

    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    move p1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 28
    move-result p1

    .line 31
    const/4 v1, 0x2

    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    move p1, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, -0x1

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 38
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 40
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object v4

    .line 45
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    invoke-virtual {v1, v0, v4, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 48
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 51
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 53
    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual {p1, v1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 58
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 61
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 63
    move-result-object v1

    .line 66
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 69
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 72
    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 74
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 77
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 80
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 83
    invoke-virtual {v0, p1, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    .line 85
    const/16 p1, 0xd2

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 90
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 93
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 95
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 97
    move-result-object v0

    .line 100
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 106
    iget p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 108
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 113
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 119
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 123
    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 127
    const p3, 0x7f1303b2    # @string/drag_shadow_split_unsupported_app '%s doesn't support Split screen'

    .line 129
    invoke-direct {p0, p2, p3, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->toastNotSupport(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 132
    return-void
    .line 135
.end method

.method private startSwitch(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToFull(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 8
    goto/16 :goto_3

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, v2, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 21
    move-result v0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v2, "unexpected hot area type: "

    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 38
    move-result p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 52
    goto/16 :goto_3

    .line 55
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_c

    .line 61
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 63
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSoScState()I

    .line 73
    move-result v0

    .line 76
    if-ne v0, v1, :cond_3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformReplaceSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 79
    goto/16 :goto_3

    .line 82
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformSqueeOrFillSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 84
    goto/16 :goto_3

    .line 87
    :cond_4
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 89
    move-result-object v0

    .line 92
    const/4 v3, 0x5

    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 95
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 99
    move-result v3

    .line 102
    if-nez v3, :cond_b

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    move-result v3

    .line 108
    sub-int/2addr v3, v2

    .line 109
    :goto_1
    if-ltz v3, :cond_6

    .line 110
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 115
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 116
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 118
    move-result v5

    .line 121
    if-eqz v5, :cond_5

    .line 122
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 124
    move-result v5

    .line 127
    if-ne v5, v2, :cond_5

    .line 128
    goto :goto_2

    .line 130
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 131
    goto :goto_1

    .line 133
    :cond_6
    const/4 v4, 0x0

    .line 134
    :goto_2
    if-eqz v4, :cond_a

    .line 135
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 137
    move-result v0

    .line 140
    if-ne v0, v1, :cond_7

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToSingleOpen(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 143
    goto :goto_3

    .line 146
    :cond_7
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 147
    move-result v0

    .line 150
    if-ne v0, v2, :cond_9

    .line 151
    iget-boolean v0, v4, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 153
    if-eqz v0, :cond_8

    .line 155
    invoke-direct {p0, p1, p2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToSplit(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 157
    goto :goto_3

    .line 160
    :cond_8
    invoke-direct {p0, p1, p2, v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToSplitUnSupported(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 161
    goto :goto_3

    .line 164
    :cond_9
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "unsupported activitytype"

    .line 167
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 173
    goto :goto_3

    .line 176
    :cond_a
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 177
    const-string v0, "bottomTask is null, maybe the screen is off"

    .line 179
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 184
    goto :goto_3

    .line 187
    :cond_b
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "tasks is empty!"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 196
    goto :goto_3

    .line 199
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 200
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 203
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 205
    move-result-object p1

    .line 208
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 209
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 211
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 215
    move-result-object p2

    .line 218
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 219
    move-result-object p1

    .line 222
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 223
    const v0, 0x7f1303b2    # @string/drag_shadow_split_unsupported_app '%s doesn't support Split screen'

    .line 225
    invoke-direct {p0, p2, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->toastNotSupport(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 228
    :goto_3
    return-void
    .line 231
.end method

.method private startTransition(ILandroid/window/WindowContainerTransaction;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 24
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 26
    move-result-object v1

    .line 29
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 30
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->onMiuiFreeformMoveEnd(IZ)V

    .line 33
    const/16 v0, 0xd5

    .line 36
    const/16 v1, 0xd1

    .line 38
    const/16 v3, 0xd2

    .line 40
    const/16 v4, 0xd0

    .line 42
    if-eq p1, v0, :cond_0

    .line 44
    const/16 v0, 0xd4

    .line 46
    if-eq p1, v0, :cond_0

    .line 48
    const/16 v0, 0xd3

    .line 50
    if-eq p1, v0, :cond_0

    .line 52
    if-eq p1, v4, :cond_0

    .line 54
    if-eq p1, v1, :cond_0

    .line 56
    if-ne p1, v3, :cond_1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 60
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchStart()V

    .line 62
    :cond_1
    if-eq p1, v4, :cond_2

    .line 65
    if-eq p1, v3, :cond_2

    .line 67
    if-ne p1, v1, :cond_3

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->deferUpdateSoScState()V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 76
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setMultiWinSwitchAnimationRunning(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 81
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 83
    move-result-object p2

    .line 86
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p1

    .line 92
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
    .line 96
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


# virtual methods
.method public backToOriginal(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 2
    move-result v0

    .line 5
    new-instance v1, Landroid/graphics/PointF;

    .line 6
    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    .line 11
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 13
    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 15
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->moveFreeformToTargetPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;Landroid/graphics/Rect;Z)V

    .line 19
    return-void
    .line 22
.end method

.method public handleDownEvent(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    cmpl-float v0, v0, v1

    .line 17
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 24
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 26
    int-to-float v1, v1

    .line 28
    sub-float/2addr p1, v1

    .line 29
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 30
    move-result v1

    .line 33
    div-float/2addr p1, v1

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 35
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 37
    int-to-float v1, v1

    .line 39
    sub-float/2addr p2, v1

    .line 40
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 41
    move-result p3

    .line 44
    div-float/2addr p2, p3

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->setDownPointInTask(FF)V

    .line 46
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 50
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 52
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 54
    move-result-object p1

    .line 57
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    .line 58
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mRotation:I

    .line 60
    :cond_1
    :goto_0
    return-void
    .line 62
.end method

.method public handleFreeformNoSwitchUpEvent(FFLcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 12
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 17
    move-result v1

    .line 20
    mul-float/2addr v1, v0

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 24
    move-result v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 29
    move-result v2

    .line 32
    mul-float/2addr v2, v0

    .line 33
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 34
    move-result v0

    .line 37
    const/high16 v3, 0x40000000    # 2.0f

    .line 38
    div-float/2addr v1, v3

    .line 40
    add-float/2addr v1, v0

    .line 41
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 42
    move-result p2

    .line 45
    div-float/2addr v2, v3

    .line 46
    add-float/2addr v2, p2

    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 50
    move-result p2

    .line 53
    int-to-float p2, p2

    .line 54
    invoke-static {p2, p1, v3, v1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 55
    move-result p2

    .line 58
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v0

    .line 64
    int-to-float v0, v0

    .line 65
    invoke-static {v0, p1, v3, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 66
    move-result v0

    .line 69
    new-instance v1, Landroid/graphics/PointF;

    .line 70
    invoke-direct {v1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 72
    new-instance p2, Landroid/graphics/Rect;

    .line 75
    invoke-virtual {p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBasedBounds()Landroid/graphics/Rect;

    .line 77
    move-result-object v0

    .line 80
    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 81
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 84
    float-to-int v0, v0

    .line 86
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 87
    float-to-int v1, v1

    .line 89
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 90
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 93
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 95
    invoke-static {v0, v1, p2, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    .line 100
    invoke-direct {v0, p1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 102
    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->moveFreeformToTargetPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;Landroid/graphics/Rect;Z)V

    .line 106
    return-void
    .line 109
.end method

.method public handleMoveEvent(FFLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 71

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p4

    .line 4
    invoke-virtual/range {p5 .. p5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    move-result-object v2

    .line 9
    new-instance v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 10
    invoke-direct {v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;-><init>()V

    .line 12
    new-instance v4, Landroid/graphics/RectF;

    .line 15
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 17
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 20
    new-instance v4, Landroid/graphics/RectF;

    .line 22
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 24
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 27
    const/16 v4, 0x8

    .line 29
    new-array v4, v4, [F

    .line 31
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 33
    new-instance v4, Landroid/graphics/RectF;

    .line 35
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 37
    iput-object v4, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 40
    iget-boolean v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 42
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    const/high16 v8, 0x3f800000    # 1.0f

    .line 47
    if-nez v4, :cond_0

    .line 49
    iput-boolean v7, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 51
    iput-boolean v6, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 53
    :try_start_0
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 57
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    move-result-object v9

    .line 62
    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v9

    .line 68
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 69
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 74
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 76
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 78
    move-result-object v9

    .line 81
    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    invoke-virtual {v4, v9}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object v4

    .line 87
    :goto_0
    iget v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mAppIconSizePx:I

    .line 88
    invoke-static {v4, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->zoomDrawableIfNeed(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 90
    move-result-object v16

    .line 93
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 94
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 96
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 100
    move-result v12

    .line 103
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 106
    move-result v13

    .line 109
    iget v14, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mShapeLayerWidth:I

    .line 110
    iget v15, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mShapeLayerHeight:I

    .line 112
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 114
    move-result v17

    .line 117
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 118
    move-result v18

    .line 121
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 122
    move-result-object v4

    .line 125
    const/4 v9, 0x0

    .line 126
    invoke-virtual {v4, v9}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 127
    move-result v19

    .line 130
    invoke-virtual/range {v10 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->createCoverLayer(Landroid/content/Context;IIIILandroid/graphics/Bitmap;IZZ)V

    .line 131
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 134
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 136
    move-result-object v4

    .line 139
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 140
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 142
    move-result-object v9

    .line 145
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 146
    move-result v10

    .line 149
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 150
    move-result v11

    .line 153
    invoke-virtual {v4, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 154
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 157
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 159
    move-result-object v9

    .line 162
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 163
    move-result v10

    .line 166
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 167
    move-result v11

    .line 170
    invoke-virtual {v4, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 171
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 174
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 176
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 178
    move-result-object v10

    .line 181
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 182
    move-result v10

    .line 185
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 186
    invoke-virtual {v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 188
    move-result-object v11

    .line 191
    invoke-virtual {v9, v10, v11, v4}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->reparentToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 192
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mRTDAOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 195
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 197
    invoke-virtual {v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 199
    move-result-object v10

    .line 202
    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    .line 203
    move-result v10

    .line 206
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 207
    invoke-virtual {v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 209
    move-result-object v11

    .line 212
    invoke-virtual {v9, v10, v11, v4}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->reparentToDisplayArea(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 213
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 216
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 218
    move-result v11

    .line 221
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 222
    move-result v12

    .line 225
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 226
    move-result v13

    .line 229
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 230
    move-result v14

    .line 233
    const/4 v15, 0x0

    .line 234
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 235
    move-object/from16 v16, v10

    .line 237
    move-object v10, v4

    .line 239
    invoke-virtual/range {v9 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 240
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 243
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 245
    move-result v10

    .line 248
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 249
    move-result v11

    .line 252
    invoke-virtual {v9, v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setShapeSwitchToType(IZ)V

    .line 253
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 256
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 258
    move-result v10

    .line 261
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 262
    move-result v11

    .line 265
    invoke-virtual {v9, v10, v11, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeTypeAnimInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 266
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 269
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 271
    move-result-object v9

    .line 274
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 275
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 277
    move-result v10

    .line 280
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 281
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 283
    move-result v11

    .line 286
    invoke-virtual {v4, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 287
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 290
    iget-object v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 292
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 294
    move-result v10

    .line 297
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 298
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 300
    move-result v11

    .line 303
    invoke-virtual {v9, v4, v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setWindowCrop(Landroid/view/SurfaceControl$Transaction;II)V

    .line 304
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 307
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 309
    move-result-object v9

    .line 312
    iget v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 313
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 315
    move-result v11

    .line 318
    div-float/2addr v10, v11

    .line 319
    iget v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 320
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 322
    move-result v12

    .line 325
    div-float/2addr v11, v12

    .line 326
    invoke-virtual {v4, v9, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 327
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 330
    iget v10, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 332
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 334
    move-result v11

    .line 337
    div-float/2addr v10, v11

    .line 338
    iget v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 339
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 341
    move-result v12

    .line 344
    div-float/2addr v11, v12

    .line 345
    invoke-virtual {v9, v4, v10, v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 346
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 349
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->drawShapeCoverContent()V

    .line 351
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->initShadowInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 354
    invoke-virtual {v2, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->setLeashAlpha(F)V

    .line 357
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->setCoverLayerAlpha(F)V

    .line 360
    iget v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 363
    invoke-virtual {v2, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->setCornerRadius(F)V

    .line 365
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 368
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 370
    move-result-object v9

    .line 373
    invoke-virtual {v4, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 374
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 377
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 379
    move-result-object v9

    .line 382
    invoke-virtual {v4, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 383
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 386
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 388
    move-result-object v9

    .line 391
    const v10, 0x7ffffffe

    .line 392
    invoke-virtual {v4, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 395
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 398
    invoke-virtual {v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 400
    move-result-object v9

    .line 403
    const v10, 0x7fffffff

    .line 404
    invoke-virtual {v4, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 407
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 410
    iget-object v9, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 413
    invoke-virtual {v9, v4}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 415
    goto :goto_1

    .line 418
    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 419
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 421
    move-result v9

    .line 424
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 425
    move-result v10

    .line 428
    invoke-virtual {v4, v9, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setShapeSwitchToType(IZ)V

    .line 429
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 432
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->getHotAreaType()I

    .line 434
    move-result v9

    .line 437
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 438
    move-result v10

    .line 441
    invoke-virtual {v4, v9, v10, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeTypeAnimInfo(IZLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 442
    :goto_1
    iget-object v4, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskLeashPosCalculator:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;

    .line 445
    iget v9, v1, Landroid/graphics/PointF;->x:F

    .line 447
    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 449
    move/from16 v11, p1

    .line 451
    move/from16 v12, p2

    .line 453
    invoke-virtual {v4, v11, v12, v9, v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TaskLeashPosCalculator;->getTargetTaskLeashPos(FFFF)Landroid/graphics/PointF;

    .line 455
    move-result-object v4

    .line 458
    invoke-virtual/range {p3 .. p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;->isIsSupport()Z

    .line 459
    move-result v9

    .line 462
    if-eqz v9, :cond_1

    .line 463
    move v5, v8

    .line 465
    goto :goto_2

    .line 466
    :cond_1
    const/high16 v8, 0x3f400000    # 0.75f

    .line 467
    :goto_2
    new-instance v9, Lmiuix/animation/base/AnimSpecialConfig;

    .line 469
    invoke-direct {v9}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 471
    const/4 v10, 0x2

    .line 474
    new-array v11, v10, [F

    .line 475
    fill-array-data v11, :array_0

    .line 477
    const/4 v12, -0x2

    .line 480
    invoke-virtual {v9, v12, v11}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 481
    move-result-object v9

    .line 484
    check-cast v9, Lmiuix/animation/base/AnimSpecialConfig;

    .line 485
    new-instance v11, Lmiuix/animation/base/AnimConfig;

    .line 487
    invoke-direct {v11}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 489
    const-string v12, "folmeScaleX"

    .line 492
    invoke-virtual {v11, v12, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 494
    move-result-object v11

    .line 497
    const-string v12, "folmeScaleY"

    .line 498
    invoke-virtual {v11, v12, v9}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 500
    move-result-object v9

    .line 503
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;

    .line 504
    move-object/from16 v12, p5

    .line 506
    invoke-direct {v11, v0, v12, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)V

    .line 508
    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    .line 511
    move-result-object v11

    .line 514
    invoke-virtual {v9, v11}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 515
    move-result-object v9

    .line 518
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 519
    invoke-virtual {v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeLayer()Landroid/view/SurfaceControl;

    .line 521
    move-result-object v11

    .line 524
    if-eqz v11, :cond_2

    .line 525
    iget-object v11, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 527
    invoke-virtual {v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getBlurSnapShotLayer()Landroid/view/SurfaceControl;

    .line 529
    move-result-object v11

    .line 532
    if-eqz v11, :cond_2

    .line 533
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 535
    move-result-object v2

    .line 538
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 539
    move-result-object v2

    .line 542
    const-string v12, "folmePosX"

    .line 543
    iget v11, v4, Landroid/graphics/PointF;->x:F

    .line 545
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 547
    move-result-object v13

    .line 550
    const-string v14, "folmePosY"

    .line 551
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 553
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 555
    move-result-object v15

    .line 558
    const-string v16, "folmeScaleX"

    .line 559
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 561
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 563
    move-result-object v17

    .line 566
    const-string v18, "folmeScaleY"

    .line 567
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 569
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 571
    move-result-object v19

    .line 574
    const-string v20, "leashAlpha"

    .line 575
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 577
    move-result-object v21

    .line 580
    const-string v22, "coverLayerAlpha"

    .line 581
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 583
    move-result-object v23

    .line 586
    const-string v24, "cornerRadius"

    .line 587
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCoverCornerRadius:F

    .line 589
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 591
    move-result-object v25

    .line 594
    const-string v26, "bottomBoardLeft"

    .line 595
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 597
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 599
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 601
    move-result-object v27

    .line 604
    const-string v28, "bottomBoardTop"

    .line 605
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 607
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 609
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 611
    move-result-object v29

    .line 614
    const-string v30, "bottomBoardRight"

    .line 615
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 617
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 619
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 621
    move-result-object v31

    .line 624
    const-string v32, "bottomBoardBottom"

    .line 625
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mBottomBoardRect:Landroid/graphics/RectF;

    .line 627
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 629
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 631
    move-result-object v33

    .line 634
    const-string v34, "changeLayerLeft"

    .line 635
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 637
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 639
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 641
    move-result-object v35

    .line 644
    const-string v36, "changeLayerTop"

    .line 645
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 647
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 649
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 651
    move-result-object v37

    .line 654
    const-string v38, "changeLayerRight"

    .line 655
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 657
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 659
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 661
    move-result-object v39

    .line 664
    const-string v40, "changeLayerBottom"

    .line 665
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRect:Landroid/graphics/RectF;

    .line 667
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 669
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 671
    move-result-object v41

    .line 674
    const-string v42, "changeLayerTopLeftXRadius"

    .line 675
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 677
    aget v0, v0, v7

    .line 679
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 681
    move-result-object v43

    .line 684
    const-string v44, "changeLayerTopLeftYRadius"

    .line 685
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 687
    aget v0, v0, v6

    .line 689
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 691
    move-result-object v45

    .line 694
    const-string v46, "changeLayerTopRightXRadius"

    .line 695
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 697
    aget v0, v0, v10

    .line 699
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 701
    move-result-object v47

    .line 704
    const-string v48, "changeLayerTopRightYRadius"

    .line 705
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 707
    const/4 v1, 0x3

    .line 709
    aget v0, v0, v1

    .line 710
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 712
    move-result-object v49

    .line 715
    const-string v50, "changeLayerBottomRightXRadius"

    .line 716
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 718
    const/4 v1, 0x4

    .line 720
    aget v0, v0, v1

    .line 721
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 723
    move-result-object v51

    .line 726
    const-string v52, "changeLayerBottomRightYRadius"

    .line 727
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 729
    const/4 v1, 0x5

    .line 731
    aget v0, v0, v1

    .line 732
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 734
    move-result-object v53

    .line 737
    const-string v54, "changeLayerBottomLeftXRadius"

    .line 738
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 740
    const/4 v1, 0x6

    .line 742
    aget v0, v0, v1

    .line 743
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 745
    move-result-object v55

    .line 748
    const-string v56, "changeLayerBottomLeftYRadius"

    .line 749
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mChangeLayerRadius:[F

    .line 751
    const/4 v1, 0x7

    .line 753
    aget v0, v0, v1

    .line 754
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 756
    move-result-object v57

    .line 759
    const-string v58, "appDesRectLeft"

    .line 760
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 762
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 764
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 766
    move-result-object v59

    .line 769
    const-string v60, "appDesRectTop"

    .line 770
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 772
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 774
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 776
    move-result-object v61

    .line 779
    const-string v62, "appDesRectRight"

    .line 780
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 782
    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 784
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 786
    move-result-object v63

    .line 789
    const-string v64, "appDesRectBottom"

    .line 790
    iget-object v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppDesRect:Landroid/graphics/RectF;

    .line 792
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 794
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 796
    move-result-object v65

    .line 799
    const-string v66, "appRadius"

    .line 800
    iget v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mAppRadius:F

    .line 802
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 804
    move-result-object v67

    .line 807
    const-string/jumbo v68, "textHeight"

    .line 808
    iget v0, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;->mTextHeight:F

    .line 811
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 813
    move-result-object v69

    .line 816
    move-object/from16 v70, v9

    .line 817
    filled-new-array/range {v12 .. v70}, [Ljava/lang/Object;

    .line 819
    move-result-object v0

    .line 822
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 823
    goto :goto_3

    .line 826
    :cond_2
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 827
    move-result-object v2

    .line 830
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 831
    move-result-object v2

    .line 834
    const-string v12, "folmePosX"

    .line 835
    iget v3, v4, Landroid/graphics/PointF;->x:F

    .line 837
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 839
    move-result-object v13

    .line 842
    const-string v14, "folmePosY"

    .line 843
    iget v3, v4, Landroid/graphics/PointF;->y:F

    .line 845
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 847
    move-result-object v15

    .line 850
    const-string v16, "folmeScaleX"

    .line 851
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 853
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 855
    move-result-object v17

    .line 858
    const-string v18, "folmeScaleY"

    .line 859
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 861
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 863
    move-result-object v19

    .line 866
    const-string v20, "leashAlpha"

    .line 867
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 869
    move-result-object v21

    .line 872
    const-string v22, "coverLayerAlpha"

    .line 873
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 875
    move-result-object v23

    .line 878
    const-string v24, "cornerRadius"

    .line 879
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCoverCornerRadius:F

    .line 881
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 883
    move-result-object v25

    .line 886
    move-object/from16 v26, v9

    .line 887
    filled-new-array/range {v12 .. v26}, [Ljava/lang/Object;

    .line 889
    move-result-object v0

    .line 892
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 893
    :goto_3
    return-void

    .line 896
    nop

    .line 897
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e6147ae    # 0.22f
    .end array-data
    .line 898
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public handleUpEvent(FFLcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Landroid/graphics/PointF;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 6

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIsHandlingFreeformUp:Z

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 9
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 11
    move-result-object v2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v3, p3

    .line 17
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;ZLjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 23
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 25
    move-result-object p2

    .line 28
    iget-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 29
    invoke-static {p1, p2, p4}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackQuitFreeformByWindowDrag(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 31
    invoke-direct {p0, p3, p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startSwitch(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotArea;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 34
    return-void
    .line 37
.end method

.method public initTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

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
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 18
    return-void
    .line 20
.end method

.method public bridge synthetic mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public moveFreeformToTargetPos(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/graphics/PointF;Landroid/graphics/Rect;Z)V
    .locals 27

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p2

    .line 4
    move-object/from16 v8, p3

    .line 6
    move/from16 v9, p4

    .line 8
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "moveFreeformToTargetPos taskId="

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 19
    move-result-object v2

    .line 22
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 23
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ", targetScale="

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ", targetBounds="

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, ", animate="

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIsHandlingFreeformUp:Z

    .line 62
    iput-boolean v0, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 66
    move-result-object v10

    .line 69
    new-instance v1, Landroid/graphics/PointF;

    .line 70
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 72
    iget-object v2, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 75
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 77
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 81
    move-result v2

    .line 84
    if-eq v2, v0, :cond_1

    .line 85
    iget-object v0, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mDragTaskInfo:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 87
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 93
    move-result v0

    .line 96
    const/4 v2, 0x5

    .line 97
    if-ne v0, v2, :cond_0

    .line 98
    goto :goto_0

    .line 100
    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 101
    const/high16 v2, 0x3e800000    # 0.25f

    .line 104
    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 106
    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    const v0, 0x3f75c28f    # 0.96f

    .line 110
    const v2, 0x3ed1eb85    # 0.41f

    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 116
    :goto_1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 119
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 121
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 124
    const-string v2, "folmeScaleX"

    .line 126
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 128
    move-result-object v0

    .line 131
    const-string v2, "folmeScaleY"

    .line 132
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 134
    move-result-object v0

    .line 137
    const-string v2, "folmePosX"

    .line 138
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 140
    move-result-object v0

    .line 143
    const-string v2, "folmePosY"

    .line 144
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 146
    move-result-object v11

    .line 149
    new-instance v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$2;

    .line 150
    move-object v0, v12

    .line 152
    move-object/from16 v1, p0

    .line 153
    move-object/from16 v2, p1

    .line 155
    move-object v3, v10

    .line 157
    move-object/from16 v4, p3

    .line 158
    move-object/from16 v5, p2

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/graphics/PointF;)V

    .line 162
    sget-object v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->mBoosterHashMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;

    .line 167
    const-string v1, "FF_UI/MULTI_TASK_TYPE_MWS"

    .line 169
    invoke-direct {v0, v12, v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper$MiuiTransitionListenerWrapper;-><init>(Lmiuix/animation/listener/TransitionListener;Ljava/lang/String;)V

    .line 171
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {v11, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 178
    move-result-object v26

    .line 181
    invoke-static {v1}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 185
    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    if-eqz v9, :cond_2

    .line 188
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 193
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 194
    move-result-object v2

    .line 197
    const-string v12, "folmePosX"

    .line 198
    iget v3, v8, Landroid/graphics/Rect;->left:I

    .line 200
    int-to-float v3, v3

    .line 202
    mul-float/2addr v3, v1

    .line 203
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 204
    move-result-object v13

    .line 207
    const-string v14, "folmePosY"

    .line 208
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 210
    int-to-float v3, v3

    .line 212
    mul-float/2addr v3, v1

    .line 213
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 214
    move-result-object v15

    .line 217
    const-string v16, "folmeScaleX"

    .line 218
    iget v3, v7, Landroid/graphics/PointF;->x:F

    .line 220
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 222
    move-result-object v17

    .line 225
    const-string v18, "folmeScaleY"

    .line 226
    iget v3, v7, Landroid/graphics/PointF;->y:F

    .line 228
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 230
    move-result-object v19

    .line 233
    const-string v20, "leashAlpha"

    .line 234
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    move-result-object v21

    .line 239
    const-string v22, "coverLayerAlpha"

    .line 240
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    move-result-object v23

    .line 245
    const-string v24, "cornerRadius"

    .line 246
    iget v0, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 248
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    move-result-object v25

    .line 253
    filled-new-array/range {v12 .. v26}, [Ljava/lang/Object;

    .line 254
    move-result-object v0

    .line 257
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 258
    goto :goto_2

    .line 261
    :cond_2
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 262
    move-result-object v2

    .line 265
    invoke-static {v2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 266
    move-result-object v2

    .line 269
    const-string v12, "folmePosX"

    .line 270
    iget v3, v8, Landroid/graphics/Rect;->left:I

    .line 272
    int-to-float v3, v3

    .line 274
    mul-float/2addr v3, v1

    .line 275
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 276
    move-result-object v13

    .line 279
    const-string v14, "folmePosY"

    .line 280
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 282
    int-to-float v3, v3

    .line 284
    mul-float/2addr v3, v1

    .line 285
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 286
    move-result-object v15

    .line 289
    const-string v16, "folmeScaleX"

    .line 290
    iget v3, v7, Landroid/graphics/PointF;->x:F

    .line 292
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 294
    move-result-object v17

    .line 297
    const-string v18, "folmeScaleY"

    .line 298
    iget v3, v7, Landroid/graphics/PointF;->y:F

    .line 300
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 302
    move-result-object v19

    .line 305
    const-string v20, "leashAlpha"

    .line 306
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    move-result-object v21

    .line 311
    const-string v22, "coverLayerAlpha"

    .line 312
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 314
    move-result-object v23

    .line 317
    const-string v24, "cornerRadius"

    .line 318
    iget v0, v6, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformCornerRadius:F

    .line 320
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    move-result-object v25

    .line 325
    filled-new-array/range {v12 .. v26}, [Ljava/lang/Object;

    .line 326
    move-result-object v0

    .line 329
    invoke-interface {v2, v0}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 330
    :goto_2
    return-void
    .line 333
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIsHandlingFreeformUp:Z

    .line 3
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p1

    .line 18
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->onTransitionEnd(I)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public releaseCover()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->releaseCoverLayer()V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->isAddedCover:Z

    .line 12
    :cond_0
    return-void
    .line 14
.end method

.method public bridge synthetic setAnimScaleSetting(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setFullscreenTaskListener(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 2
    return-void
    .line 4
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 48
    invoke-static {p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->makeAnimRootUnderFreeforms(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 50
    iput-boolean v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mIsHandlingFreeformUp:Z

    .line 53
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 55
    move-result v0

    .line 58
    const/16 v2, 0xcf

    .line 59
    if-ne v0, v2, :cond_1

    .line 61
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToFullTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 63
    move-result p1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/16 v2, 0xd0

    .line 68
    if-ne v0, v2, :cond_2

    .line 70
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToSingleSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 72
    move-result p1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/16 v2, 0xd1

    .line 77
    if-ne v0, v2, :cond_3

    .line 79
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 81
    move-result p1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/16 v2, 0xd5

    .line 86
    if-ne v0, v2, :cond_4

    .line 88
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformRepleceSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 90
    move-result p1

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/16 v2, 0xd4

    .line 95
    if-ne v0, v2, :cond_5

    .line 97
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformSqueeSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 99
    move-result p1

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    const/16 v2, 0xd3

    .line 104
    if-ne v0, v2, :cond_6

    .line 106
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformFillSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 108
    move-result p1

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    const/16 v2, 0xd2

    .line 113
    if-ne v0, v2, :cond_8

    .line 115
    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->startFreeformToSplitUnSupportTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 117
    move-result p1

    .line 120
    :goto_0
    const-string p2, "FF_UI/MWS_ACTION_DRAG_WINDOW_RESIZE"

    .line 121
    invoke-static {p2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 126
    if-nez p1, :cond_7

    .line 129
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 131
    const-string p2, "No animation started, finish transition now!"

    .line 133
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, v0, p5, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 138
    :cond_7
    const/4 p0, 0x1

    .line 141
    return p0

    .line 142
    :cond_8
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->TAG:Ljava/lang/String;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    const-string p2, "Unknown transition type: "

    .line 147
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v1
    .line 162
.end method

.method public startFreeformFillSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 35

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformFillSplitTransAnimCount:I

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v10

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 27
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 35
    const/4 v4, -0x1

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    iget-object v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 47
    if-eqz v3, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 51
    move-result-object v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 57
    move-result-object v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 63
    move-result-object v5

    .line 66
    if-eqz v5, :cond_0

    .line 67
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 69
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 71
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 73
    iget v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformFillSplitTransAnimCount:I

    .line 76
    const/4 v11, 0x1

    .line 78
    add-int/2addr v0, v11

    .line 79
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformFillSplitTransAnimCount:I

    .line 80
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 82
    move-result-object v12

    .line 85
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 86
    move-result-object v13

    .line 89
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object v14

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 101
    move-result-object v0

    .line 104
    invoke-virtual {v9, v12, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 105
    const v0, 0x7fffffff

    .line 108
    invoke-virtual {v9, v12, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 111
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 114
    move-result v0

    .line 117
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 118
    move-result v1

    .line 121
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 122
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 125
    move-result v0

    .line 128
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 129
    move-result v1

    .line 132
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 133
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 138
    move-result v0

    .line 141
    int-to-float v0, v0

    .line 142
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 143
    move-result v1

    .line 146
    mul-float/2addr v1, v0

    .line 147
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 148
    move-result v0

    .line 151
    int-to-float v0, v0

    .line 152
    div-float v15, v1, v0

    .line 153
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 157
    move-result v0

    .line 160
    int-to-float v0, v0

    .line 161
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 162
    move-result v1

    .line 165
    mul-float/2addr v1, v0

    .line 166
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 167
    move-result v0

    .line 170
    int-to-float v0, v0

    .line 171
    div-float v7, v1, v0

    .line 172
    invoke-virtual {v9, v12, v15, v7}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 177
    move-result v0

    .line 180
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 181
    move-result v1

    .line 184
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 185
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 188
    move-result v0

    .line 191
    div-float/2addr v0, v15

    .line 192
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 193
    move-result v1

    .line 196
    div-float/2addr v1, v7

    .line 197
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 198
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 201
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 203
    move-result v2

    .line 206
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 207
    move-result v3

    .line 210
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 211
    move-result v4

    .line 214
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 215
    move-result v5

    .line 218
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 219
    move-result v6

    .line 222
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 223
    move-object/from16 v16, v1

    .line 225
    move-object/from16 v1, p3

    .line 227
    move/from16 v17, v7

    .line 229
    move-object/from16 v7, v16

    .line 231
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 233
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 236
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 238
    move-result v1

    .line 241
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 242
    move-result v2

    .line 245
    div-float/2addr v1, v2

    .line 246
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 247
    move-result v2

    .line 250
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 251
    move-result v3

    .line 254
    div-float/2addr v2, v3

    .line 255
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 256
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 259
    move-result v0

    .line 262
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 265
    move-result v1

    .line 268
    int-to-float v1, v1

    .line 269
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 270
    move-result v2

    .line 273
    mul-float/2addr v2, v1

    .line 274
    const/high16 v1, 0x40000000    # 2.0f

    .line 275
    div-float/2addr v2, v1

    .line 277
    add-float v16, v2, v0

    .line 278
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 280
    move-result v0

    .line 283
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 286
    move-result v2

    .line 289
    int-to-float v2, v2

    .line 290
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 291
    move-result v3

    .line 294
    mul-float/2addr v3, v2

    .line 295
    div-float/2addr v3, v1

    .line 296
    add-float v18, v3, v0

    .line 297
    iget v0, v14, Landroid/graphics/Rect;->left:I

    .line 299
    int-to-float v0, v0

    .line 301
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 302
    move-result v2

    .line 305
    int-to-float v2, v2

    .line 306
    div-float/2addr v2, v1

    .line 307
    add-float v19, v2, v0

    .line 308
    iget v0, v14, Landroid/graphics/Rect;->top:I

    .line 310
    int-to-float v0, v0

    .line 312
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 313
    move-result v2

    .line 316
    int-to-float v2, v2

    .line 317
    div-float/2addr v2, v1

    .line 318
    add-float v20, v2, v0

    .line 319
    new-instance v21, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 321
    invoke-direct/range {v21 .. v21}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 323
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 326
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 328
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 331
    const-string v2, "folmePosX"

    .line 333
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 335
    move-result-object v0

    .line 338
    const-string v2, "folmePosY"

    .line 339
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 341
    move-result-object v0

    .line 344
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 345
    const-string v2, "folmeScaleX"

    .line 347
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 349
    move-result-object v0

    .line 352
    const-string v2, "folmeScaleY"

    .line 353
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 355
    move-result-object v7

    .line 358
    new-instance v22, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$12;

    .line 359
    move-object/from16 v0, v22

    .line 361
    move-object/from16 v1, p0

    .line 363
    move-object/from16 v2, v21

    .line 365
    move-object v3, v14

    .line 367
    move-object v4, v12

    .line 368
    move-object/from16 v5, p2

    .line 369
    move-object/from16 v6, p5

    .line 371
    move-object v12, v7

    .line 373
    move-object/from16 v7, p4

    .line 374
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$12;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 376
    filled-new-array/range {v22 .. v22}, [Lmiuix/animation/listener/TransitionListener;

    .line 379
    move-result-object v0

    .line 382
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 383
    move-result-object v34

    .line 386
    iput-boolean v11, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 387
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    .line 389
    move-result-object v0

    .line 392
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 393
    move-result-object v0

    .line 396
    const-string v21, "folmePosX"

    .line 397
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 399
    move-result-object v22

    .line 402
    const-string v23, "folmePosY"

    .line 403
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 405
    move-result-object v24

    .line 408
    const-string v25, "folmeScaleX"

    .line 409
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 411
    move-result-object v26

    .line 414
    const-string v27, "folmeScaleY"

    .line 415
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 417
    move-result-object v28

    .line 420
    const-string v29, "coverLayerAlpha"

    .line 421
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 423
    move-result v1

    .line 426
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    move-result-object v30

    .line 430
    const-string v31, "cornerRadius"

    .line 431
    invoke-virtual {v13}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 433
    move-result v1

    .line 436
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 437
    move-result-object v32

    .line 440
    filled-new-array/range {v21 .. v32}, [Ljava/lang/Object;

    .line 441
    move-result-object v1

    .line 444
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 445
    move-result-object v0

    .line 448
    const-string v22, "folmePosX"

    .line 449
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 451
    move-result-object v23

    .line 454
    const-string v24, "folmePosY"

    .line 455
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 457
    move-result-object v25

    .line 460
    const-string v26, "folmeScaleX"

    .line 461
    const/high16 v1, 0x3f800000    # 1.0f

    .line 463
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 465
    move-result-object v27

    .line 468
    const-string v28, "folmeScaleY"

    .line 469
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 471
    move-result-object v29

    .line 474
    const-string v30, "coverLayerAlpha"

    .line 475
    const/4 v1, 0x0

    .line 477
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 478
    move-result-object v31

    .line 481
    const-string v32, "cornerRadius"

    .line 482
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 484
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 486
    move-result-object v33

    .line 489
    filled-new-array/range {v22 .. v34}, [Ljava/lang/Object;

    .line 490
    move-result-object v1

    .line 493
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 494
    move v0, v11

    .line 497
    goto/16 :goto_0

    .line 498
    :cond_2
    if-nez v0, :cond_3

    .line 500
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 502
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 504
    :cond_3
    return v0
.end method

.method public startFreeformRepleceSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 37

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    const/4 v10, 0x0

    .line 6
    iput v10, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v11

    .line 16
    move v7, v10

    .line 17
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 28
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 36
    const/4 v3, -0x1

    .line 38
    if-ne v2, v3, :cond_0

    .line 39
    goto/16 :goto_1

    .line 41
    :cond_0
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 48
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 49
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 51
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 59
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 61
    move-result-object v4

    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x1

    .line 66
    const/high16 v14, 0x3f800000    # 1.0f

    .line 67
    if-eqz v4, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 77
    move-result-object v4

    .line 80
    if-eqz v4, :cond_1

    .line 81
    if-eqz v3, :cond_1

    .line 83
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 85
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 87
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 92
    add-int/2addr v1, v13

    .line 94
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 95
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 97
    move-result-object v15

    .line 100
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 101
    move-result-object v7

    .line 104
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 105
    move-result-object v6

    .line 108
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 109
    move-result v0

    .line 112
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 113
    move-result v1

    .line 116
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 117
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 122
    move-result v0

    .line 125
    int-to-float v0, v0

    .line 126
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 127
    move-result v1

    .line 130
    mul-float/2addr v1, v0

    .line 131
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 132
    move-result v0

    .line 135
    int-to-float v0, v0

    .line 136
    div-float v5, v1, v0

    .line 137
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 141
    move-result v0

    .line 144
    int-to-float v0, v0

    .line 145
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 146
    move-result v1

    .line 149
    mul-float/2addr v1, v0

    .line 150
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 151
    move-result v0

    .line 154
    int-to-float v0, v0

    .line 155
    div-float v4, v1, v0

    .line 156
    invoke-virtual {v9, v7, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 158
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 161
    move-result v0

    .line 164
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 165
    move-result v1

    .line 168
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 169
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 172
    move-result v0

    .line 175
    div-float/2addr v0, v5

    .line 176
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 177
    move-result v1

    .line 180
    div-float/2addr v1, v4

    .line 181
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 182
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 185
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 187
    move-result v2

    .line 190
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 191
    move-result v3

    .line 194
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 195
    move-result v16

    .line 198
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 199
    move-result v17

    .line 202
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 203
    move-result v18

    .line 206
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 207
    move-object/from16 v19, v1

    .line 209
    move-object/from16 v1, p3

    .line 211
    move/from16 v20, v4

    .line 213
    move/from16 v4, v16

    .line 215
    move/from16 v16, v5

    .line 217
    move/from16 v5, v17

    .line 219
    move-object v10, v6

    .line 221
    move/from16 v6, v18

    .line 222
    move-object/from16 v17, v7

    .line 224
    move-object/from16 v7, v19

    .line 226
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 228
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 231
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 233
    move-result v1

    .line 236
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 237
    move-result v2

    .line 240
    div-float/2addr v1, v2

    .line 241
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 242
    move-result v2

    .line 245
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 246
    move-result v3

    .line 249
    div-float/2addr v2, v3

    .line 250
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 251
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 254
    move-result v0

    .line 257
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 260
    move-result v1

    .line 263
    int-to-float v1, v1

    .line 264
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 265
    move-result v2

    .line 268
    mul-float/2addr v2, v1

    .line 269
    const/high16 v1, 0x40000000    # 2.0f

    .line 270
    div-float/2addr v2, v1

    .line 272
    add-float v18, v2, v0

    .line 273
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 275
    move-result v0

    .line 278
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 279
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 281
    move-result v2

    .line 284
    int-to-float v2, v2

    .line 285
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 286
    move-result v3

    .line 289
    mul-float/2addr v3, v2

    .line 290
    div-float/2addr v3, v1

    .line 291
    add-float v19, v3, v0

    .line 292
    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 294
    int-to-float v0, v0

    .line 296
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 297
    move-result v2

    .line 300
    int-to-float v2, v2

    .line 301
    div-float/2addr v2, v1

    .line 302
    add-float v21, v2, v0

    .line 303
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 305
    int-to-float v0, v0

    .line 307
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 308
    move-result v2

    .line 311
    int-to-float v2, v2

    .line 312
    div-float/2addr v2, v1

    .line 313
    add-float v22, v2, v0

    .line 314
    new-instance v23, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 316
    invoke-direct/range {v23 .. v23}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 318
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 321
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 323
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 326
    const-string v2, "folmePosX"

    .line 328
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 330
    move-result-object v0

    .line 333
    const-string v2, "folmePosY"

    .line 334
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 336
    move-result-object v0

    .line 339
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 340
    const-string v2, "folmeScaleX"

    .line 342
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 344
    move-result-object v0

    .line 347
    const-string v2, "folmeScaleY"

    .line 348
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 350
    move-result-object v7

    .line 353
    new-instance v24, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$8;

    .line 354
    move-object/from16 v0, v24

    .line 356
    move-object/from16 v1, p0

    .line 358
    move-object/from16 v2, v23

    .line 360
    move-object v3, v10

    .line 362
    move-object/from16 v4, v17

    .line 363
    move-object/from16 v5, p2

    .line 365
    move-object/from16 v6, p5

    .line 367
    move-object v10, v7

    .line 369
    move-object/from16 v7, p4

    .line 370
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$8;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 372
    filled-new-array/range {v24 .. v24}, [Lmiuix/animation/listener/TransitionListener;

    .line 375
    move-result-object v0

    .line 378
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 379
    move-result-object v36

    .line 382
    iput-boolean v13, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 383
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    .line 385
    move-result-object v0

    .line 388
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 389
    move-result-object v0

    .line 392
    const-string v23, "folmePosX"

    .line 393
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 395
    move-result-object v24

    .line 398
    const-string v25, "folmePosY"

    .line 399
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 401
    move-result-object v26

    .line 404
    const-string v27, "folmeScaleX"

    .line 405
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 407
    move-result-object v28

    .line 410
    const-string v29, "folmeScaleY"

    .line 411
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 413
    move-result-object v30

    .line 416
    const-string v31, "coverLayerAlpha"

    .line 417
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 419
    move-result v1

    .line 422
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 423
    move-result-object v32

    .line 426
    const-string v33, "cornerRadius"

    .line 427
    invoke-virtual {v15}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 429
    move-result v1

    .line 432
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 433
    move-result-object v34

    .line 436
    filled-new-array/range {v23 .. v34}, [Ljava/lang/Object;

    .line 437
    move-result-object v1

    .line 440
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 441
    move-result-object v0

    .line 444
    const-string v24, "folmePosX"

    .line 445
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 447
    move-result-object v25

    .line 450
    const-string v26, "folmePosY"

    .line 451
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 453
    move-result-object v27

    .line 456
    const-string v28, "folmeScaleX"

    .line 457
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v29

    .line 462
    const-string v30, "folmeScaleY"

    .line 463
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 465
    move-result-object v31

    .line 468
    const-string v32, "coverLayerAlpha"

    .line 469
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 471
    move-result-object v33

    .line 474
    const-string v34, "cornerRadius"

    .line 475
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 477
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 479
    move-result-object v35

    .line 482
    filled-new-array/range {v24 .. v36}, [Ljava/lang/Object;

    .line 483
    move-result-object v1

    .line 486
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 487
    move v7, v13

    .line 490
    goto/16 :goto_1

    .line 491
    :cond_1
    if-eqz v2, :cond_2

    .line 493
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 495
    move-result-object v2

    .line 498
    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 501
    move-result-object v2

    .line 504
    if-eqz v2, :cond_2

    .line 505
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 507
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 509
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 511
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 514
    add-int/2addr v1, v13

    .line 516
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformRepleceSplitTransAnimCount:I

    .line 517
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 519
    move-result-object v2

    .line 522
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 523
    move-result-object v10

    .line 526
    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 527
    int-to-float v0, v0

    .line 529
    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 530
    int-to-float v1, v1

    .line 532
    invoke-virtual {v9, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 533
    invoke-virtual {v9, v2, v14, v14}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 536
    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 539
    int-to-float v0, v0

    .line 541
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 542
    move-result v1

    .line 545
    int-to-float v1, v1

    .line 546
    const v3, 0x3dcccccd    # 0.1f

    .line 547
    mul-float/2addr v1, v3

    .line 550
    add-float v15, v1, v0

    .line 551
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 553
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 555
    move-result v1

    .line 558
    div-int/lit8 v1, v1, 0x2

    .line 559
    add-int/2addr v1, v0

    .line 561
    int-to-float v6, v1

    .line 562
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 563
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 565
    new-array v1, v13, [F

    .line 568
    const/high16 v3, 0x43160000    # 150.0f

    .line 570
    const/4 v13, 0x0

    .line 572
    aput v3, v1, v13

    .line 573
    const/16 v3, 0xf

    .line 575
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 577
    move-result-object v0

    .line 580
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 581
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 583
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 585
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 588
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 590
    const-string v3, "leashAlpha"

    .line 593
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 595
    move-result-object v5

    .line 598
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$9;

    .line 599
    move-object/from16 v0, v17

    .line 601
    move-object/from16 v1, p0

    .line 603
    move-object/from16 v3, v16

    .line 605
    move-object/from16 v4, p2

    .line 607
    move-object v13, v5

    .line 609
    move-object/from16 v5, p5

    .line 610
    move/from16 v18, v6

    .line 612
    move-object/from16 v6, p4

    .line 614
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$9;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 616
    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/listener/TransitionListener;

    .line 619
    move-result-object v0

    .line 622
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 623
    move-result-object v29

    .line 626
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 627
    move-result-object v0

    .line 630
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 631
    move-result-object v0

    .line 634
    const-string v19, "PosX"

    .line 635
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 637
    int-to-float v1, v1

    .line 639
    mul-float/2addr v1, v14

    .line 640
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 641
    move-result-object v20

    .line 644
    const-string v21, "PosY"

    .line 645
    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 647
    int-to-float v1, v1

    .line 649
    mul-float/2addr v1, v14

    .line 650
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 651
    move-result-object v22

    .line 654
    const-string v23, "ScaleX"

    .line 655
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 657
    move-result-object v24

    .line 660
    const-string v25, "ScaleY"

    .line 661
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 663
    move-result-object v26

    .line 666
    const-string v27, "leashAlpha"

    .line 667
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 669
    move-result-object v28

    .line 672
    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    .line 673
    move-result-object v1

    .line 676
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 677
    move-result-object v0

    .line 680
    const-string v19, "PosX"

    .line 681
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 683
    move-result-object v20

    .line 686
    const-string v21, "PosY"

    .line 687
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 689
    move-result-object v22

    .line 692
    const-string v23, "ScaleX"

    .line 693
    const v1, 0x3f4ccccd    # 0.8f

    .line 695
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 698
    move-result-object v24

    .line 701
    const-string v25, "ScaleY"

    .line 702
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 704
    move-result-object v26

    .line 707
    const-string v27, "leashAlpha"

    .line 708
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 710
    move-result-object v28

    .line 713
    filled-new-array/range {v19 .. v29}, [Ljava/lang/Object;

    .line 714
    move-result-object v1

    .line 717
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 718
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 721
    goto/16 :goto_0

    .line 722
    :cond_3
    if-nez v7, :cond_4

    .line 724
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 726
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 728
    :cond_4
    return v7
    .line 731
.end method

.method public startFreeformSqueeSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 36

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v10

    .line 16
    move v7, v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 28
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 36
    const/4 v3, -0x1

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 50
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 52
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 58
    const/4 v11, 0x1

    .line 60
    const/high16 v12, 0x3f800000    # 1.0f

    .line 61
    if-eqz v3, :cond_2

    .line 63
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 65
    move-result-object v4

    .line 68
    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 71
    move-result-object v4

    .line 74
    if-eqz v4, :cond_2

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 77
    move-result-object v4

    .line 80
    if-eqz v4, :cond_2

    .line 81
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 83
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 85
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 87
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 90
    add-int/2addr v1, v11

    .line 92
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 93
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 95
    move-result-object v13

    .line 98
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 99
    move-result-object v14

    .line 102
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 103
    move-result-object v15

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 107
    move-result-object v0

    .line 110
    invoke-virtual {v9, v13, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 111
    const v0, 0x7fffffff

    .line 114
    invoke-virtual {v9, v13, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 117
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 120
    move-result v0

    .line 123
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 124
    move-result v1

    .line 127
    invoke-virtual {v9, v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 128
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 133
    move-result v0

    .line 136
    int-to-float v0, v0

    .line 137
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 138
    move-result v1

    .line 141
    mul-float/2addr v1, v0

    .line 142
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 143
    move-result v0

    .line 146
    int-to-float v0, v0

    .line 147
    div-float v7, v1, v0

    .line 148
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 152
    move-result v0

    .line 155
    int-to-float v0, v0

    .line 156
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 157
    move-result v1

    .line 160
    mul-float/2addr v1, v0

    .line 161
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 162
    move-result v0

    .line 165
    int-to-float v0, v0

    .line 166
    div-float v6, v1, v0

    .line 167
    invoke-virtual {v9, v13, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 169
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 172
    move-result v0

    .line 175
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 176
    move-result v1

    .line 179
    invoke-virtual {v9, v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 180
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 183
    move-result v0

    .line 186
    div-float/2addr v0, v7

    .line 187
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 188
    move-result v1

    .line 191
    div-float/2addr v1, v6

    .line 192
    invoke-virtual {v9, v13, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 193
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 196
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 198
    move-result v2

    .line 201
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 202
    move-result v3

    .line 205
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 206
    move-result v4

    .line 209
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 210
    move-result v5

    .line 213
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 214
    move-result v16

    .line 217
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 218
    move-object/from16 v17, v1

    .line 220
    move-object/from16 v1, p3

    .line 222
    move/from16 v18, v6

    .line 224
    move/from16 v6, v16

    .line 226
    move/from16 v16, v7

    .line 228
    move-object/from16 v7, v17

    .line 230
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 232
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 235
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 237
    move-result v1

    .line 240
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 241
    move-result v2

    .line 244
    div-float/2addr v1, v2

    .line 245
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 246
    move-result v2

    .line 249
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 250
    move-result v3

    .line 253
    div-float/2addr v2, v3

    .line 254
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 255
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 258
    move-result v0

    .line 261
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 262
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 264
    move-result v1

    .line 267
    int-to-float v1, v1

    .line 268
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 269
    move-result v2

    .line 272
    mul-float/2addr v2, v1

    .line 273
    const/high16 v1, 0x40000000    # 2.0f

    .line 274
    div-float/2addr v2, v1

    .line 276
    add-float v17, v2, v0

    .line 277
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 279
    move-result v0

    .line 282
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 283
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 285
    move-result v2

    .line 288
    int-to-float v2, v2

    .line 289
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 290
    move-result v3

    .line 293
    mul-float/2addr v3, v2

    .line 294
    div-float/2addr v3, v1

    .line 295
    add-float v19, v3, v0

    .line 296
    iget v0, v15, Landroid/graphics/Rect;->left:I

    .line 298
    int-to-float v0, v0

    .line 300
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 301
    move-result v2

    .line 304
    int-to-float v2, v2

    .line 305
    div-float/2addr v2, v1

    .line 306
    add-float v20, v2, v0

    .line 307
    iget v0, v15, Landroid/graphics/Rect;->top:I

    .line 309
    int-to-float v0, v0

    .line 311
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 312
    move-result v2

    .line 315
    int-to-float v2, v2

    .line 316
    div-float/2addr v2, v1

    .line 317
    add-float v21, v2, v0

    .line 318
    new-instance v22, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 320
    invoke-direct/range {v22 .. v22}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 322
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 325
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 327
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 330
    const-string v2, "folmePosX"

    .line 332
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 334
    move-result-object v0

    .line 337
    const-string v2, "folmePosY"

    .line 338
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 340
    move-result-object v0

    .line 343
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 344
    const-string v2, "folmeScaleX"

    .line 346
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 348
    move-result-object v0

    .line 351
    const-string v2, "folmeScaleY"

    .line 352
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 354
    move-result-object v7

    .line 357
    new-instance v23, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$10;

    .line 358
    move-object/from16 v0, v23

    .line 360
    move-object/from16 v1, p0

    .line 362
    move-object/from16 v2, v22

    .line 364
    move-object v3, v15

    .line 366
    move-object v4, v13

    .line 367
    move-object/from16 v5, p2

    .line 368
    move-object/from16 v6, p5

    .line 370
    move-object v13, v7

    .line 372
    move-object/from16 v7, p4

    .line 373
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$10;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 375
    filled-new-array/range {v23 .. v23}, [Lmiuix/animation/listener/TransitionListener;

    .line 378
    move-result-object v0

    .line 381
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 382
    move-result-object v35

    .line 385
    iput-boolean v11, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 386
    filled-new-array/range {v22 .. v22}, [Ljava/lang/Object;

    .line 388
    move-result-object v0

    .line 391
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 392
    move-result-object v0

    .line 395
    const-string v22, "folmePosX"

    .line 396
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    move-result-object v23

    .line 401
    const-string v24, "folmePosY"

    .line 402
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 404
    move-result-object v25

    .line 407
    const-string v26, "folmeScaleX"

    .line 408
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 410
    move-result-object v27

    .line 413
    const-string v28, "folmeScaleY"

    .line 414
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 416
    move-result-object v29

    .line 419
    const-string v30, "coverLayerAlpha"

    .line 420
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 422
    move-result v1

    .line 425
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 426
    move-result-object v31

    .line 429
    const-string v32, "cornerRadius"

    .line 430
    invoke-virtual {v14}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 432
    move-result v1

    .line 435
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 436
    move-result-object v33

    .line 439
    filled-new-array/range {v22 .. v33}, [Ljava/lang/Object;

    .line 440
    move-result-object v1

    .line 443
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 444
    move-result-object v0

    .line 447
    const-string v23, "folmePosX"

    .line 448
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 450
    move-result-object v24

    .line 453
    const-string v25, "folmePosY"

    .line 454
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 456
    move-result-object v26

    .line 459
    const-string v27, "folmeScaleX"

    .line 460
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 462
    move-result-object v28

    .line 465
    const-string v29, "folmeScaleY"

    .line 466
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 468
    move-result-object v30

    .line 471
    const-string v31, "coverLayerAlpha"

    .line 472
    const/4 v1, 0x0

    .line 474
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 475
    move-result-object v32

    .line 478
    const-string v33, "cornerRadius"

    .line 479
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 481
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 483
    move-result-object v34

    .line 486
    filled-new-array/range {v23 .. v35}, [Ljava/lang/Object;

    .line 487
    move-result-object v1

    .line 490
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 491
    move v7, v11

    .line 494
    goto/16 :goto_0

    .line 495
    :cond_2
    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 499
    move-result-object v2

    .line 502
    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 505
    move-result-object v2

    .line 508
    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 511
    move-result-object v2

    .line 514
    if-eqz v2, :cond_0

    .line 515
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 517
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 519
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 521
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 524
    add-int/2addr v1, v11

    .line 526
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformSqueeSplitTransAnimCount:I

    .line 527
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 529
    move-result-object v2

    .line 532
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 533
    move-result-object v11

    .line 536
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 537
    move-result-object v0

    .line 540
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 541
    int-to-float v1, v1

    .line 543
    iget v3, v11, Landroid/graphics/Rect;->top:I

    .line 544
    int-to-float v3, v3

    .line 546
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 547
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 550
    move-result v1

    .line 553
    int-to-float v1, v1

    .line 554
    mul-float/2addr v1, v12

    .line 555
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 556
    move-result v3

    .line 559
    int-to-float v3, v3

    .line 560
    div-float v13, v1, v3

    .line 561
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 563
    move-result v1

    .line 566
    int-to-float v1, v1

    .line 567
    mul-float/2addr v1, v12

    .line 568
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 569
    move-result v3

    .line 572
    int-to-float v3, v3

    .line 573
    div-float v14, v1, v3

    .line 574
    invoke-virtual {v9, v2, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 576
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 579
    int-to-float v15, v1

    .line 581
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 582
    int-to-float v6, v0

    .line 584
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 585
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 587
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 590
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 592
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 595
    const-string v3, "PosX"

    .line 597
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 599
    move-result-object v0

    .line 602
    const-string v3, "PosY"

    .line 603
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 605
    move-result-object v0

    .line 608
    const-string v3, "ScaleX"

    .line 609
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 611
    move-result-object v0

    .line 614
    const-string v3, "ScaleY"

    .line 615
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 617
    move-result-object v5

    .line 620
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$11;

    .line 621
    move-object/from16 v0, v17

    .line 623
    move-object/from16 v1, p0

    .line 625
    move-object/from16 v3, v16

    .line 627
    move-object/from16 v4, p2

    .line 629
    move-object v12, v5

    .line 631
    move-object/from16 v5, p5

    .line 632
    move/from16 v18, v6

    .line 634
    move-object/from16 v6, p4

    .line 636
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$11;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 638
    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/listener/TransitionListener;

    .line 641
    move-result-object v0

    .line 644
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 645
    move-result-object v27

    .line 648
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 649
    move-result-object v0

    .line 652
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 653
    move-result-object v0

    .line 656
    const-string v19, "PosX"

    .line 657
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 659
    int-to-float v1, v1

    .line 661
    const/high16 v2, 0x3f800000    # 1.0f

    .line 662
    mul-float/2addr v1, v2

    .line 664
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 665
    move-result-object v20

    .line 668
    const-string v21, "PosY"

    .line 669
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 671
    int-to-float v1, v1

    .line 673
    mul-float/2addr v1, v2

    .line 674
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 675
    move-result-object v22

    .line 678
    const-string v23, "ScaleX"

    .line 679
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 681
    move-result-object v24

    .line 684
    const-string v25, "ScaleY"

    .line 685
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 687
    move-result-object v26

    .line 690
    filled-new-array/range {v19 .. v26}, [Ljava/lang/Object;

    .line 691
    move-result-object v1

    .line 694
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 695
    move-result-object v0

    .line 698
    const-string v19, "PosX"

    .line 699
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 701
    move-result-object v20

    .line 704
    const-string v21, "PosY"

    .line 705
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 707
    move-result-object v22

    .line 710
    const-string v23, "ScaleX"

    .line 711
    const/high16 v1, 0x3f800000    # 1.0f

    .line 713
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 715
    move-result-object v24

    .line 718
    const-string v25, "ScaleY"

    .line 719
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 721
    move-result-object v26

    .line 724
    filled-new-array/range {v19 .. v27}, [Ljava/lang/Object;

    .line 725
    move-result-object v1

    .line 728
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 729
    goto/16 :goto_0

    .line 732
    :cond_3
    if-nez v7, :cond_4

    .line 734
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 736
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 738
    :cond_4
    return v7
    .line 741
.end method

.method public startFreeformToFullTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 38

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->handlerFreeToFullLeashStatus(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;)Z

    .line 10
    move-result v10

    .line 13
    const/4 v11, 0x0

    .line 14
    iput v11, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v12

    .line 24
    move v7, v11

    .line 25
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_5

    .line 30
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 36
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 38
    move-result v1

    .line 41
    and-int/lit8 v1, v1, 0x2

    .line 42
    if-eqz v1, :cond_0

    .line 44
    goto/16 :goto_1

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    move-result-object v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 54
    const/4 v3, -0x1

    .line 56
    if-ne v2, v3, :cond_1

    .line 57
    goto/16 :goto_1

    .line 59
    :cond_1
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 66
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 67
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 69
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 71
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 77
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v4

    .line 82
    const/4 v13, 0x0

    .line 83
    const/4 v14, 0x1

    .line 84
    const/high16 v15, 0x3f800000    # 1.0f

    .line 85
    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 89
    move-result-object v4

    .line 92
    if-eqz v4, :cond_3

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 95
    move-result-object v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    if-eqz v2, :cond_3

    .line 101
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 103
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 105
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 110
    add-int/2addr v1, v14

    .line 112
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 113
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 115
    move-result-object v7

    .line 118
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 119
    move-result-object v6

    .line 122
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 123
    move-result-object v16

    .line 126
    const v0, 0x7fffffff

    .line 127
    invoke-virtual {v9, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 130
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 133
    move-result v0

    .line 136
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 137
    move-result v1

    .line 140
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 141
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 146
    move-result v0

    .line 149
    int-to-float v0, v0

    .line 150
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 151
    move-result v1

    .line 154
    mul-float/2addr v1, v0

    .line 155
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 156
    move-result v0

    .line 159
    int-to-float v0, v0

    .line 160
    div-float v5, v1, v0

    .line 161
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 165
    move-result v0

    .line 168
    int-to-float v0, v0

    .line 169
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 170
    move-result v1

    .line 173
    mul-float/2addr v1, v0

    .line 174
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 175
    move-result v0

    .line 178
    int-to-float v0, v0

    .line 179
    div-float v4, v1, v0

    .line 180
    invoke-virtual {v9, v7, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 182
    if-nez v10, :cond_2

    .line 185
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 187
    move-result v0

    .line 190
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 191
    move-result v1

    .line 194
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 195
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 198
    move-result v0

    .line 201
    div-float/2addr v0, v5

    .line 202
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 203
    move-result v1

    .line 206
    div-float/2addr v1, v4

    .line 207
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 208
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 211
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 213
    move-result v1

    .line 216
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 217
    move-result v2

    .line 220
    div-float/2addr v1, v2

    .line 221
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 222
    move-result v2

    .line 225
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 226
    move-result v3

    .line 229
    div-float/2addr v2, v3

    .line 230
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 231
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 234
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 236
    move-result v2

    .line 239
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 240
    move-result v3

    .line 243
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 244
    move-result v17

    .line 247
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 248
    move-result v18

    .line 251
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 252
    move-result v19

    .line 255
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 256
    move-object/from16 v20, v1

    .line 258
    move-object/from16 v1, p3

    .line 260
    move/from16 v21, v4

    .line 262
    move/from16 v4, v17

    .line 264
    move/from16 v17, v5

    .line 266
    move/from16 v5, v18

    .line 268
    move-object v11, v6

    .line 270
    move/from16 v6, v19

    .line 271
    move-object/from16 v18, v7

    .line 273
    move-object/from16 v7, v20

    .line 275
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 277
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 280
    move-result v0

    .line 283
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 286
    move-result v1

    .line 289
    int-to-float v1, v1

    .line 290
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 291
    move-result v2

    .line 294
    mul-float/2addr v2, v1

    .line 295
    const/high16 v1, 0x40000000    # 2.0f

    .line 296
    div-float/2addr v2, v1

    .line 298
    add-float v19, v2, v0

    .line 299
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 301
    move-result v0

    .line 304
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 305
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 307
    move-result v2

    .line 310
    int-to-float v2, v2

    .line 311
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 312
    move-result v3

    .line 315
    mul-float/2addr v3, v2

    .line 316
    div-float/2addr v3, v1

    .line 317
    add-float v20, v3, v0

    .line 318
    iget v0, v11, Landroid/graphics/Rect;->left:I

    .line 320
    int-to-float v0, v0

    .line 322
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 323
    move-result v2

    .line 326
    int-to-float v2, v2

    .line 327
    div-float/2addr v2, v1

    .line 328
    add-float v22, v2, v0

    .line 329
    iget v0, v11, Landroid/graphics/Rect;->top:I

    .line 331
    int-to-float v0, v0

    .line 333
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 334
    move-result v2

    .line 337
    int-to-float v2, v2

    .line 338
    div-float/2addr v2, v1

    .line 339
    add-float v23, v2, v0

    .line 340
    new-instance v24, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 342
    invoke-direct/range {v24 .. v24}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 344
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 347
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 349
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 352
    const-string v2, "folmePosX"

    .line 354
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 356
    move-result-object v0

    .line 359
    const-string v2, "folmePosY"

    .line 360
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 362
    move-result-object v0

    .line 365
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 366
    const-string v2, "folmeScaleX"

    .line 368
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 370
    move-result-object v0

    .line 373
    const-string v2, "folmeScaleY"

    .line 374
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 376
    move-result-object v7

    .line 379
    new-instance v25, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$3;

    .line 380
    move-object/from16 v0, v25

    .line 382
    move-object/from16 v1, p0

    .line 384
    move-object/from16 v2, v18

    .line 386
    move-object/from16 v3, v24

    .line 388
    move-object v4, v11

    .line 390
    move-object/from16 v5, p2

    .line 391
    move-object/from16 v6, p5

    .line 393
    move-object v11, v7

    .line 395
    move-object/from16 v7, p4

    .line 396
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 398
    filled-new-array/range {v25 .. v25}, [Lmiuix/animation/listener/TransitionListener;

    .line 401
    move-result-object v0

    .line 404
    invoke-virtual {v11, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 405
    move-result-object v37

    .line 408
    iput-boolean v14, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 409
    filled-new-array/range {v24 .. v24}, [Ljava/lang/Object;

    .line 411
    move-result-object v0

    .line 414
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 415
    move-result-object v0

    .line 418
    const-string v24, "folmePosX"

    .line 419
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 421
    move-result-object v25

    .line 424
    const-string v26, "folmePosY"

    .line 425
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    move-result-object v27

    .line 430
    const-string v28, "folmeScaleX"

    .line 431
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 433
    move-result-object v29

    .line 436
    const-string v30, "folmeScaleY"

    .line 437
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 439
    move-result-object v31

    .line 442
    const-string v32, "coverLayerAlpha"

    .line 443
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 445
    move-result v1

    .line 448
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 449
    move-result-object v33

    .line 452
    const-string v34, "cornerRadius"

    .line 453
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 455
    move-result v1

    .line 458
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v35

    .line 462
    filled-new-array/range {v24 .. v35}, [Ljava/lang/Object;

    .line 463
    move-result-object v1

    .line 466
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 467
    move-result-object v0

    .line 470
    const-string v25, "folmePosX"

    .line 471
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 473
    move-result-object v26

    .line 476
    const-string v27, "folmePosY"

    .line 477
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 479
    move-result-object v28

    .line 482
    const-string v29, "folmeScaleX"

    .line 483
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 485
    move-result-object v30

    .line 488
    const-string v31, "folmeScaleY"

    .line 489
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 491
    move-result-object v32

    .line 494
    const-string v33, "coverLayerAlpha"

    .line 495
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 497
    move-result-object v34

    .line 500
    const-string v35, "cornerRadius"

    .line 501
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFullScreenDeviceCorner:F

    .line 503
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 505
    move-result-object v36

    .line 508
    filled-new-array/range {v25 .. v37}, [Ljava/lang/Object;

    .line 509
    move-result-object v1

    .line 512
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 513
    move v7, v14

    .line 516
    goto/16 :goto_1

    .line 517
    :cond_3
    if-eqz v3, :cond_4

    .line 519
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 521
    move-result-object v2

    .line 524
    if-eqz v2, :cond_4

    .line 525
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 527
    move-result-object v2

    .line 530
    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 533
    move-result-object v2

    .line 536
    if-eqz v2, :cond_4

    .line 537
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 539
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 541
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 543
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 546
    add-int/2addr v1, v14

    .line 548
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToFullTransAnimCount:I

    .line 549
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 551
    move-result-object v2

    .line 554
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 555
    move-result-object v11

    .line 558
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 559
    move-result-object v0

    .line 562
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 563
    int-to-float v1, v1

    .line 565
    iget v3, v11, Landroid/graphics/Rect;->top:I

    .line 566
    int-to-float v3, v3

    .line 568
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 569
    invoke-virtual {v9, v2, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 572
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 575
    move-result v1

    .line 578
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 579
    move-result v3

    .line 582
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 583
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFullScreenDeviceCorner:F

    .line 586
    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 588
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 591
    move-result v1

    .line 594
    int-to-float v1, v1

    .line 595
    const v3, 0x3dcccccd    # 0.1f

    .line 596
    mul-float v16, v1, v3

    .line 599
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 601
    move-result v0

    .line 604
    int-to-float v0, v0

    .line 605
    mul-float v17, v0, v3

    .line 606
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 608
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 610
    new-array v1, v14, [F

    .line 613
    const/high16 v3, 0x43160000    # 150.0f

    .line 615
    const/4 v14, 0x0

    .line 617
    aput v3, v1, v14

    .line 618
    const/16 v3, 0xf

    .line 620
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 622
    move-result-object v0

    .line 625
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 626
    new-instance v18, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 628
    invoke-direct/range {v18 .. v18}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 630
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 633
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 635
    const-string v3, "leashAlpha"

    .line 638
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 640
    move-result-object v6

    .line 643
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$4;

    .line 644
    move-object/from16 v0, v19

    .line 646
    move-object/from16 v1, p0

    .line 648
    move-object/from16 v3, v18

    .line 650
    move-object/from16 v4, p2

    .line 652
    move-object/from16 v5, p5

    .line 654
    move-object v14, v6

    .line 656
    move-object/from16 v6, p4

    .line 657
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$4;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 659
    filled-new-array/range {v19 .. v19}, [Lmiuix/animation/listener/TransitionListener;

    .line 662
    move-result-object v0

    .line 665
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 666
    move-result-object v29

    .line 669
    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    .line 670
    move-result-object v0

    .line 673
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 674
    move-result-object v0

    .line 677
    const-string v18, "PosX"

    .line 678
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 680
    int-to-float v1, v1

    .line 682
    mul-float/2addr v1, v15

    .line 683
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 684
    move-result-object v19

    .line 687
    const-string v20, "PosY"

    .line 688
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 690
    int-to-float v1, v1

    .line 692
    mul-float/2addr v1, v15

    .line 693
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 694
    move-result-object v21

    .line 697
    const-string v22, "ScaleX"

    .line 698
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 700
    move-result-object v23

    .line 703
    const-string v24, "ScaleY"

    .line 704
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 706
    move-result-object v25

    .line 709
    const-string v26, "leashAlpha"

    .line 710
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 712
    move-result-object v27

    .line 715
    filled-new-array/range {v18 .. v27}, [Ljava/lang/Object;

    .line 716
    move-result-object v1

    .line 719
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 720
    move-result-object v0

    .line 723
    const-string v19, "PosX"

    .line 724
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 726
    move-result-object v20

    .line 729
    const-string v21, "PosY"

    .line 730
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 732
    move-result-object v22

    .line 735
    const-string v23, "ScaleX"

    .line 736
    const v1, 0x3f4ccccd    # 0.8f

    .line 738
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 741
    move-result-object v24

    .line 744
    const-string v25, "ScaleY"

    .line 745
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 747
    move-result-object v26

    .line 750
    const-string v27, "leashAlpha"

    .line 751
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 753
    move-result-object v28

    .line 756
    filled-new-array/range {v19 .. v29}, [Ljava/lang/Object;

    .line 757
    move-result-object v1

    .line 760
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 761
    :cond_4
    :goto_1
    const/4 v11, 0x0

    .line 764
    goto/16 :goto_0

    .line 765
    :cond_5
    return v7
    .line 767
.end method

.method public startFreeformToSingleSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 32

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 24
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 26
    move-result v2

    .line 29
    and-int/lit8 v2, v2, 0x2

    .line 30
    if-eqz v2, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    move-result-object v10

    .line 38
    if-eqz v10, :cond_0

    .line 39
    iget v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 41
    const/4 v3, -0x1

    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 53
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 55
    move-result-object v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 61
    move-result-object v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 67
    move-result-object v3

    .line 70
    if-eqz v3, :cond_0

    .line 71
    if-eqz v2, :cond_0

    .line 73
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 75
    iget v3, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 77
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 82
    move-result-object v11

    .line 85
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 86
    move-result-object v12

    .line 89
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object v13

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 94
    move-result-object v0

    .line 97
    invoke-virtual {v9, v12, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 98
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 101
    move-result v0

    .line 104
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 105
    move-result v1

    .line 108
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 109
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 114
    move-result v0

    .line 117
    int-to-float v0, v0

    .line 118
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 119
    move-result v1

    .line 122
    mul-float/2addr v1, v0

    .line 123
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 124
    move-result v0

    .line 127
    int-to-float v0, v0

    .line 128
    div-float v14, v1, v0

    .line 129
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 133
    move-result v0

    .line 136
    int-to-float v0, v0

    .line 137
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 138
    move-result v1

    .line 141
    mul-float/2addr v1, v0

    .line 142
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 143
    move-result v0

    .line 146
    int-to-float v0, v0

    .line 147
    div-float v15, v1, v0

    .line 148
    invoke-virtual {v9, v12, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 150
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 153
    move-result v0

    .line 156
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 157
    move-result v1

    .line 160
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 161
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 164
    move-result v0

    .line 167
    div-float/2addr v0, v14

    .line 168
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 169
    move-result v1

    .line 172
    div-float/2addr v1, v15

    .line 173
    invoke-virtual {v9, v12, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 177
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 179
    move-result v2

    .line 182
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 183
    move-result v3

    .line 186
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 187
    move-result v4

    .line 190
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 191
    move-result v5

    .line 194
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 195
    move-result v6

    .line 198
    iget-object v7, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 199
    move-object/from16 v1, p3

    .line 201
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 203
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 206
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 208
    move-result v1

    .line 211
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 212
    move-result v2

    .line 215
    div-float/2addr v1, v2

    .line 216
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 217
    move-result v2

    .line 220
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 221
    move-result v3

    .line 224
    div-float/2addr v2, v3

    .line 225
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 226
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mContext:Landroid/content/Context;

    .line 229
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 231
    invoke-static {v0, v1, v10}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterSingleOpenByWindowDrag(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 233
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 236
    move-result v0

    .line 239
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 240
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 242
    move-result v1

    .line 245
    int-to-float v1, v1

    .line 246
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 247
    move-result v2

    .line 250
    mul-float/2addr v2, v1

    .line 251
    const/high16 v1, 0x40000000    # 2.0f

    .line 252
    div-float/2addr v2, v1

    .line 254
    add-float v9, v2, v0

    .line 255
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 257
    move-result v0

    .line 260
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 261
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 263
    move-result v2

    .line 266
    int-to-float v2, v2

    .line 267
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 268
    move-result v3

    .line 271
    mul-float/2addr v3, v2

    .line 272
    div-float/2addr v3, v1

    .line 273
    add-float v10, v3, v0

    .line 274
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 276
    int-to-float v0, v0

    .line 278
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 279
    move-result v2

    .line 282
    int-to-float v2, v2

    .line 283
    div-float/2addr v2, v1

    .line 284
    add-float v16, v2, v0

    .line 285
    iget v0, v13, Landroid/graphics/Rect;->top:I

    .line 287
    int-to-float v0, v0

    .line 289
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 290
    move-result v2

    .line 293
    int-to-float v2, v2

    .line 294
    div-float/2addr v2, v1

    .line 295
    add-float v17, v2, v0

    .line 296
    new-instance v18, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 298
    invoke-direct/range {v18 .. v18}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 300
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 303
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 305
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 308
    const-string v2, "folmePosX"

    .line 310
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 312
    move-result-object v0

    .line 315
    const-string v2, "folmePosY"

    .line 316
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 318
    move-result-object v0

    .line 321
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 322
    const-string v2, "folmeScaleX"

    .line 324
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 326
    move-result-object v0

    .line 329
    const-string v2, "folmeScaleY"

    .line 330
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 332
    move-result-object v7

    .line 335
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$5;

    .line 336
    move-object/from16 v0, v19

    .line 338
    move-object/from16 v1, p0

    .line 340
    move-object/from16 v2, v18

    .line 342
    move-object v3, v13

    .line 344
    move-object v4, v12

    .line 345
    move-object/from16 v5, p2

    .line 346
    move-object/from16 v6, p5

    .line 348
    move-object v12, v7

    .line 350
    move-object/from16 v7, p4

    .line 351
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$5;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 353
    filled-new-array/range {v19 .. v19}, [Lmiuix/animation/listener/TransitionListener;

    .line 356
    move-result-object v0

    .line 359
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 360
    move-result-object v31

    .line 363
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 365
    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    .line 367
    move-result-object v1

    .line 370
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 371
    move-result-object v1

    .line 374
    const-string v18, "folmePosX"

    .line 375
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 377
    move-result-object v19

    .line 380
    const-string v20, "folmePosY"

    .line 381
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    move-result-object v21

    .line 386
    const-string v22, "folmeScaleX"

    .line 387
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 389
    move-result-object v23

    .line 392
    const-string v24, "folmeScaleY"

    .line 393
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 395
    move-result-object v25

    .line 398
    const-string v26, "coverLayerAlpha"

    .line 399
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 401
    move-result v2

    .line 404
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 405
    move-result-object v27

    .line 408
    const-string v28, "cornerRadius"

    .line 409
    invoke-virtual {v11}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 411
    move-result v2

    .line 414
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 415
    move-result-object v29

    .line 418
    filled-new-array/range {v18 .. v29}, [Ljava/lang/Object;

    .line 419
    move-result-object v2

    .line 422
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 423
    move-result-object v1

    .line 426
    const-string v19, "folmePosX"

    .line 427
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 429
    move-result-object v20

    .line 432
    const-string v21, "folmePosY"

    .line 433
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 435
    move-result-object v22

    .line 438
    const-string v23, "folmeScaleX"

    .line 439
    const/high16 v2, 0x3f800000    # 1.0f

    .line 441
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 443
    move-result-object v24

    .line 446
    const-string v25, "folmeScaleY"

    .line 447
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 449
    move-result-object v26

    .line 452
    const-string v27, "coverLayerAlpha"

    .line 453
    const/4 v2, 0x0

    .line 455
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 456
    move-result-object v28

    .line 459
    const-string v29, "cornerRadius"

    .line 460
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 462
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    move-result-object v30

    .line 467
    filled-new-array/range {v19 .. v31}, [Ljava/lang/Object;

    .line 468
    move-result-object v2

    .line 471
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 472
    goto :goto_1

    .line 475
    :cond_3
    const/4 v0, 0x0

    .line 476
    :goto_1
    if-nez v0, :cond_4

    .line 477
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 479
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 481
    :cond_4
    return v0
    .line 484
.end method

.method public startFreeformToSplitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 37

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v11

    .line 18
    move v7, v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    if-eqz v1, :cond_1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 47
    const/4 v3, -0x1

    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 59
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 61
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v4

    .line 74
    const/4 v13, 0x1

    .line 75
    const/high16 v14, 0x3f800000    # 1.0f

    .line 76
    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 80
    move-result-object v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 86
    move-result-object v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    if-eqz v2, :cond_3

    .line 92
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 94
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 96
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 98
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 101
    add-int/2addr v1, v13

    .line 103
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 104
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 106
    move-result-object v15

    .line 109
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 110
    move-result-object v16

    .line 113
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 114
    move-result-object v7

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {v9, v15, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 122
    const v0, 0x7fffffff

    .line 125
    invoke-virtual {v9, v15, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 128
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 131
    move-result v0

    .line 134
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 135
    move-result v1

    .line 138
    invoke-virtual {v9, v15, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 139
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 144
    move-result v0

    .line 147
    int-to-float v0, v0

    .line 148
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 149
    move-result v1

    .line 152
    mul-float/2addr v1, v0

    .line 153
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 154
    move-result v0

    .line 157
    int-to-float v0, v0

    .line 158
    div-float v6, v1, v0

    .line 159
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 163
    move-result v0

    .line 166
    int-to-float v0, v0

    .line 167
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 168
    move-result v1

    .line 171
    mul-float/2addr v1, v0

    .line 172
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 173
    move-result v0

    .line 176
    int-to-float v0, v0

    .line 177
    div-float v5, v1, v0

    .line 178
    invoke-virtual {v9, v15, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 183
    move-result v0

    .line 186
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 187
    move-result v1

    .line 190
    invoke-virtual {v9, v15, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 191
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 194
    move-result v0

    .line 197
    div-float/2addr v0, v6

    .line 198
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 199
    move-result v1

    .line 202
    div-float/2addr v1, v5

    .line 203
    invoke-virtual {v9, v15, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 204
    invoke-virtual {v9, v15}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 207
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 210
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 212
    move-result v2

    .line 215
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 216
    move-result v3

    .line 219
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 220
    move-result v4

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 224
    move-result v17

    .line 227
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 228
    move-result v18

    .line 231
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 232
    move-object/from16 v19, v1

    .line 234
    move-object/from16 v1, p3

    .line 236
    move/from16 v20, v5

    .line 238
    move/from16 v5, v17

    .line 240
    move/from16 v17, v6

    .line 242
    move/from16 v6, v18

    .line 244
    move-object v12, v7

    .line 246
    move-object/from16 v7, v19

    .line 247
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 249
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 252
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 254
    move-result v1

    .line 257
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 258
    move-result v2

    .line 261
    div-float/2addr v1, v2

    .line 262
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 263
    move-result v2

    .line 266
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 267
    move-result v3

    .line 270
    div-float/2addr v2, v3

    .line 271
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 272
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 275
    move-result v0

    .line 278
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 279
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 281
    move-result v1

    .line 284
    int-to-float v1, v1

    .line 285
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 286
    move-result v2

    .line 289
    mul-float/2addr v2, v1

    .line 290
    const/high16 v1, 0x40000000    # 2.0f

    .line 291
    div-float/2addr v2, v1

    .line 293
    add-float v18, v2, v0

    .line 294
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 296
    move-result v0

    .line 299
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 300
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 302
    move-result v2

    .line 305
    int-to-float v2, v2

    .line 306
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 307
    move-result v3

    .line 310
    mul-float/2addr v3, v2

    .line 311
    div-float/2addr v3, v1

    .line 312
    add-float v19, v3, v0

    .line 313
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 315
    int-to-float v0, v0

    .line 317
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 318
    move-result v2

    .line 321
    int-to-float v2, v2

    .line 322
    div-float/2addr v2, v1

    .line 323
    add-float v21, v2, v0

    .line 324
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 326
    int-to-float v0, v0

    .line 328
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 329
    move-result v2

    .line 332
    int-to-float v2, v2

    .line 333
    div-float/2addr v2, v1

    .line 334
    add-float v22, v2, v0

    .line 335
    new-instance v23, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 337
    invoke-direct/range {v23 .. v23}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 339
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 342
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 344
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 347
    const-string v2, "folmePosX"

    .line 349
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 351
    move-result-object v0

    .line 354
    const-string v2, "folmePosY"

    .line 355
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 357
    move-result-object v0

    .line 360
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 361
    const-string v2, "folmeScaleX"

    .line 363
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 365
    move-result-object v0

    .line 368
    const-string v2, "folmeScaleY"

    .line 369
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 371
    move-result-object v7

    .line 374
    new-instance v24, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$6;

    .line 375
    move-object/from16 v0, v24

    .line 377
    move-object/from16 v1, p0

    .line 379
    move-object/from16 v2, v23

    .line 381
    move-object v3, v12

    .line 383
    move-object v4, v15

    .line 384
    move-object/from16 v5, p2

    .line 385
    move-object/from16 v6, p5

    .line 387
    move-object v12, v7

    .line 389
    move-object/from16 v7, p4

    .line 390
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$6;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 392
    filled-new-array/range {v24 .. v24}, [Lmiuix/animation/listener/TransitionListener;

    .line 395
    move-result-object v0

    .line 398
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 399
    move-result-object v36

    .line 402
    iput-boolean v13, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 403
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    .line 405
    move-result-object v0

    .line 408
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 409
    move-result-object v0

    .line 412
    const-string v23, "folmePosX"

    .line 413
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 415
    move-result-object v24

    .line 418
    const-string v25, "folmePosY"

    .line 419
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 421
    move-result-object v26

    .line 424
    const-string v27, "folmeScaleX"

    .line 425
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    move-result-object v28

    .line 430
    const-string v29, "folmeScaleY"

    .line 431
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 433
    move-result-object v30

    .line 436
    const-string v31, "coverLayerAlpha"

    .line 437
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 439
    move-result v1

    .line 442
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 443
    move-result-object v32

    .line 446
    const-string v33, "cornerRadius"

    .line 447
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 449
    move-result v1

    .line 452
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 453
    move-result-object v34

    .line 456
    filled-new-array/range {v23 .. v34}, [Ljava/lang/Object;

    .line 457
    move-result-object v1

    .line 460
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 461
    move-result-object v0

    .line 464
    const-string v24, "folmePosX"

    .line 465
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 467
    move-result-object v25

    .line 470
    const-string v26, "folmePosY"

    .line 471
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 473
    move-result-object v27

    .line 476
    const-string v28, "folmeScaleX"

    .line 477
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 479
    move-result-object v29

    .line 482
    const-string v30, "folmeScaleY"

    .line 483
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 485
    move-result-object v31

    .line 488
    const-string v32, "coverLayerAlpha"

    .line 489
    const/4 v1, 0x0

    .line 491
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 492
    move-result-object v33

    .line 495
    const-string v34, "cornerRadius"

    .line 496
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 498
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 500
    move-result-object v35

    .line 503
    filled-new-array/range {v24 .. v36}, [Ljava/lang/Object;

    .line 504
    move-result-object v1

    .line 507
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 508
    move v7, v13

    .line 511
    goto/16 :goto_0

    .line 512
    :cond_3
    if-eqz v3, :cond_0

    .line 514
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 516
    move-result-object v2

    .line 519
    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 522
    move-result-object v2

    .line 525
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 528
    move-result-object v2

    .line 531
    if-eqz v2, :cond_0

    .line 532
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 534
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 536
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 538
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 541
    add-int/2addr v1, v13

    .line 543
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitTransAnimCount:I

    .line 544
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 546
    move-result-object v2

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 550
    move-result-object v1

    .line 553
    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 554
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 557
    move-result-object v12

    .line 560
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 561
    move-result-object v0

    .line 564
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 565
    int-to-float v1, v1

    .line 567
    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 568
    int-to-float v3, v3

    .line 570
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 571
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 574
    move-result v1

    .line 577
    int-to-float v1, v1

    .line 578
    mul-float/2addr v1, v14

    .line 579
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 580
    move-result v3

    .line 583
    int-to-float v3, v3

    .line 584
    div-float v13, v1, v3

    .line 585
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 587
    move-result v1

    .line 590
    int-to-float v1, v1

    .line 591
    mul-float/2addr v1, v14

    .line 592
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 593
    move-result v3

    .line 596
    int-to-float v3, v3

    .line 597
    div-float v15, v1, v3

    .line 598
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 600
    move-result v1

    .line 603
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 604
    move-result v3

    .line 607
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 608
    invoke-virtual {v9, v2, v13, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 611
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 614
    move-result v1

    .line 617
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 618
    move-result v3

    .line 621
    invoke-virtual {v10, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 622
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 625
    invoke-virtual {v10, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 627
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 630
    int-to-float v6, v1

    .line 632
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 633
    int-to-float v5, v0

    .line 635
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 636
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 638
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 641
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 643
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 646
    const-string v3, "PosX"

    .line 648
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 650
    move-result-object v0

    .line 653
    const-string v3, "PosY"

    .line 654
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 656
    move-result-object v0

    .line 659
    const-string v3, "ScaleX"

    .line 660
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 662
    move-result-object v0

    .line 665
    const-string v3, "ScaleY"

    .line 666
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 668
    move-result-object v4

    .line 671
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$7;

    .line 672
    move-object/from16 v0, v17

    .line 674
    move-object/from16 v1, p0

    .line 676
    move-object/from16 v3, v16

    .line 678
    move-object v14, v4

    .line 680
    move-object/from16 v4, p2

    .line 681
    move/from16 v19, v5

    .line 683
    move-object/from16 v5, p5

    .line 685
    move/from16 v20, v6

    .line 687
    move-object/from16 v6, p4

    .line 689
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$7;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 691
    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/listener/TransitionListener;

    .line 694
    move-result-object v0

    .line 697
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 698
    move-result-object v31

    .line 701
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 702
    move-result-object v0

    .line 705
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 706
    move-result-object v0

    .line 709
    const-string v21, "PosX"

    .line 710
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 712
    int-to-float v1, v1

    .line 714
    const/high16 v2, 0x3f800000    # 1.0f

    .line 715
    mul-float/2addr v1, v2

    .line 717
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 718
    move-result-object v22

    .line 721
    const-string v23, "PosY"

    .line 722
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 724
    int-to-float v1, v1

    .line 726
    mul-float/2addr v1, v2

    .line 727
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 728
    move-result-object v24

    .line 731
    const-string v25, "ScaleX"

    .line 732
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 734
    move-result-object v26

    .line 737
    const-string v27, "ScaleY"

    .line 738
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 740
    move-result-object v28

    .line 743
    const-string v29, "cornerRadius"

    .line 744
    const/4 v1, 0x0

    .line 746
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 747
    move-result-object v30

    .line 750
    filled-new-array/range {v21 .. v30}, [Ljava/lang/Object;

    .line 751
    move-result-object v1

    .line 754
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 755
    move-result-object v0

    .line 758
    const-string v21, "PosX"

    .line 759
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 761
    move-result-object v22

    .line 764
    const-string v23, "PosY"

    .line 765
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 767
    move-result-object v24

    .line 770
    const-string v25, "ScaleX"

    .line 771
    const/high16 v1, 0x3f800000    # 1.0f

    .line 773
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 775
    move-result-object v26

    .line 778
    const-string v27, "ScaleY"

    .line 779
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 781
    move-result-object v28

    .line 784
    const-string v29, "cornerRadius"

    .line 785
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 787
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 789
    move-result-object v30

    .line 792
    filled-new-array/range {v21 .. v31}, [Ljava/lang/Object;

    .line 793
    move-result-object v1

    .line 796
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 797
    goto/16 :goto_0

    .line 800
    :cond_4
    if-nez v7, :cond_5

    .line 802
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 804
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 806
    :cond_5
    return v7
    .line 809
.end method

.method public startFreeformToSplitUnSupportTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 37

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    const/4 v10, 0x0

    .line 6
    iput v10, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v11

    .line 16
    move v7, v10

    .line 17
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 28
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 30
    move-result v1

    .line 33
    and-int/lit8 v1, v1, 0x2

    .line 34
    if-eqz v1, :cond_0

    .line 36
    goto/16 :goto_1

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    move-result-object v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    const/4 v3, -0x1

    .line 48
    if-ne v2, v3, :cond_1

    .line 49
    goto/16 :goto_1

    .line 51
    :cond_1
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 59
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 61
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v4

    .line 74
    const/4 v12, 0x0

    .line 75
    const/high16 v13, 0x40000000    # 2.0f

    .line 76
    const/4 v14, 0x1

    .line 78
    const/high16 v15, 0x3f800000    # 1.0f

    .line 79
    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 83
    move-result-object v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 89
    move-result-object v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    if-eqz v2, :cond_2

    .line 95
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 97
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 99
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 104
    add-int/2addr v1, v14

    .line 106
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 107
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 109
    move-result-object v7

    .line 112
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 113
    move-result-object v16

    .line 116
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 117
    move-result-object v6

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 121
    move-result-object v0

    .line 124
    invoke-virtual {v9, v7, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 125
    const v0, 0x7fffffff

    .line 128
    invoke-virtual {v9, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 131
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 134
    move-result v0

    .line 137
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 138
    move-result v1

    .line 141
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 142
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 147
    move-result v0

    .line 150
    int-to-float v0, v0

    .line 151
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 152
    move-result v1

    .line 155
    mul-float/2addr v1, v0

    .line 156
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 157
    move-result v0

    .line 160
    int-to-float v0, v0

    .line 161
    div-float v5, v1, v0

    .line 162
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 166
    move-result v0

    .line 169
    int-to-float v0, v0

    .line 170
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

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
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 186
    move-result v0

    .line 189
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 190
    move-result v1

    .line 193
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 194
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 197
    move-result v0

    .line 200
    div-float/2addr v0, v5

    .line 201
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 202
    move-result v1

    .line 205
    div-float/2addr v1, v4

    .line 206
    invoke-virtual {v9, v7, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 207
    invoke-virtual {v9, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 210
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 213
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 215
    move-result v2

    .line 218
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 219
    move-result v3

    .line 222
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 223
    move-result v17

    .line 226
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 227
    move-result v18

    .line 230
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 231
    move-result v19

    .line 234
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 235
    move-object/from16 v20, v1

    .line 237
    move-object/from16 v1, p3

    .line 239
    move/from16 v21, v4

    .line 241
    move/from16 v4, v17

    .line 243
    move/from16 v17, v5

    .line 245
    move/from16 v5, v18

    .line 247
    move-object v10, v6

    .line 249
    move/from16 v6, v19

    .line 250
    move-object/from16 v18, v7

    .line 252
    move-object/from16 v7, v20

    .line 254
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 256
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mMiuiCoverLayerController:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 259
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 261
    move-result v1

    .line 264
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 265
    move-result v2

    .line 268
    div-float/2addr v1, v2

    .line 269
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 270
    move-result v2

    .line 273
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 274
    move-result v3

    .line 277
    div-float/2addr v2, v3

    .line 278
    invoke-virtual {v0, v9, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 279
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 282
    move-result v0

    .line 285
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 288
    move-result v1

    .line 291
    int-to-float v1, v1

    .line 292
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 293
    move-result v2

    .line 296
    mul-float/2addr v2, v1

    .line 297
    div-float/2addr v2, v13

    .line 298
    add-float v19, v2, v0

    .line 299
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 301
    move-result v0

    .line 304
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mTaskBounds:Landroid/graphics/Rect;

    .line 305
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 307
    move-result v1

    .line 310
    int-to-float v1, v1

    .line 311
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 312
    move-result v2

    .line 315
    mul-float/2addr v2, v1

    .line 316
    div-float/2addr v2, v13

    .line 317
    add-float v20, v2, v0

    .line 318
    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 320
    int-to-float v0, v0

    .line 322
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 323
    move-result v1

    .line 326
    int-to-float v1, v1

    .line 327
    div-float/2addr v1, v13

    .line 328
    add-float v22, v1, v0

    .line 329
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 331
    int-to-float v0, v0

    .line 333
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 334
    move-result v1

    .line 337
    int-to-float v1, v1

    .line 338
    div-float/2addr v1, v13

    .line 339
    add-float v13, v1, v0

    .line 340
    new-instance v23, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 342
    invoke-direct/range {v23 .. v23}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;-><init>()V

    .line 344
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 347
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 349
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 352
    const-string v2, "folmePosX"

    .line 354
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 356
    move-result-object v0

    .line 359
    const-string v2, "folmePosY"

    .line 360
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 362
    move-result-object v0

    .line 365
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 366
    const-string v2, "folmeScaleX"

    .line 368
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 370
    move-result-object v0

    .line 373
    const-string v2, "folmeScaleY"

    .line 374
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 376
    move-result-object v7

    .line 379
    new-instance v24, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$13;

    .line 380
    move-object/from16 v0, v24

    .line 382
    move-object/from16 v1, p0

    .line 384
    move-object/from16 v2, v23

    .line 386
    move-object v3, v10

    .line 388
    move-object/from16 v4, v18

    .line 389
    move-object/from16 v5, p2

    .line 391
    move-object/from16 v6, p5

    .line 393
    move-object v10, v7

    .line 395
    move-object/from16 v7, p4

    .line 396
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$13;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 398
    filled-new-array/range {v24 .. v24}, [Lmiuix/animation/listener/TransitionListener;

    .line 401
    move-result-object v0

    .line 404
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 405
    move-result-object v36

    .line 408
    iput-boolean v14, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 409
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    .line 411
    move-result-object v0

    .line 414
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 415
    move-result-object v0

    .line 418
    const-string v23, "folmePosX"

    .line 419
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 421
    move-result-object v24

    .line 424
    const-string v25, "folmePosY"

    .line 425
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 427
    move-result-object v26

    .line 430
    const-string v27, "folmeScaleX"

    .line 431
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 433
    move-result-object v28

    .line 436
    const-string v29, "folmeScaleY"

    .line 437
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 439
    move-result-object v30

    .line 442
    const-string v31, "coverLayerAlpha"

    .line 443
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 445
    move-result v1

    .line 448
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 449
    move-result-object v32

    .line 452
    const-string v33, "cornerRadius"

    .line 453
    invoke-virtual/range {v16 .. v16}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 455
    move-result v1

    .line 458
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v34

    .line 462
    filled-new-array/range {v23 .. v34}, [Ljava/lang/Object;

    .line 463
    move-result-object v1

    .line 466
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 467
    move-result-object v0

    .line 470
    const-string v24, "folmePosX"

    .line 471
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 473
    move-result-object v25

    .line 476
    const-string v26, "folmePosY"

    .line 477
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 479
    move-result-object v27

    .line 482
    const-string v28, "folmeScaleX"

    .line 483
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 485
    move-result-object v29

    .line 488
    const-string v30, "folmeScaleY"

    .line 489
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 491
    move-result-object v31

    .line 494
    const-string v32, "coverLayerAlpha"

    .line 495
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 497
    move-result-object v33

    .line 500
    const-string v34, "cornerRadius"

    .line 501
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSplitCornerRadius:F

    .line 503
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 505
    move-result-object v35

    .line 508
    filled-new-array/range {v24 .. v36}, [Ljava/lang/Object;

    .line 509
    move-result-object v1

    .line 512
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 513
    move v7, v14

    .line 516
    goto/16 :goto_1

    .line 517
    :cond_2
    if-eqz v3, :cond_3

    .line 519
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 521
    move-result-object v2

    .line 524
    if-eqz v2, :cond_3

    .line 525
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 527
    move-result-object v2

    .line 530
    if-eqz v2, :cond_3

    .line 531
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 533
    move-result-object v2

    .line 536
    if-eqz v2, :cond_3

    .line 537
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 539
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 541
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 543
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 546
    add-int/2addr v1, v14

    .line 548
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mFreeformToSplitUnsupportedAnimCount:I

    .line 549
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 551
    move-result-object v2

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 555
    move-result-object v1

    .line 558
    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 559
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 562
    move-result-object v10

    .line 565
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 566
    move-result-object v0

    .line 569
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 570
    int-to-float v1, v1

    .line 572
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 573
    int-to-float v3, v3

    .line 575
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 576
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 579
    move-result v1

    .line 582
    int-to-float v1, v1

    .line 583
    mul-float/2addr v1, v15

    .line 584
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 585
    move-result v3

    .line 588
    int-to-float v3, v3

    .line 589
    div-float v6, v1, v3

    .line 590
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 592
    move-result v1

    .line 595
    int-to-float v1, v1

    .line 596
    mul-float/2addr v1, v15

    .line 597
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 598
    move-result v0

    .line 601
    int-to-float v0, v0

    .line 602
    div-float v5, v1, v0

    .line 603
    invoke-virtual {v9, v2, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 605
    iget v0, v10, Landroid/graphics/Rect;->left:I

    .line 608
    int-to-float v0, v0

    .line 610
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 611
    move-result v1

    .line 614
    int-to-float v1, v1

    .line 615
    const v3, 0x3dcccccd    # 0.1f

    .line 616
    mul-float/2addr v1, v3

    .line 619
    add-float v16, v1, v0

    .line 620
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 622
    int-to-float v0, v0

    .line 624
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 625
    move-result v1

    .line 628
    int-to-float v1, v1

    .line 629
    div-float/2addr v1, v13

    .line 630
    add-float v13, v1, v0

    .line 631
    const v0, 0x3f4ccccd    # 0.8f

    .line 633
    mul-float v17, v6, v0

    .line 636
    mul-float v18, v5, v0

    .line 638
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 640
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 642
    new-array v1, v14, [F

    .line 645
    const/high16 v3, 0x43160000    # 150.0f

    .line 647
    const/4 v14, 0x0

    .line 649
    aput v3, v1, v14

    .line 650
    const/16 v3, 0xf

    .line 652
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 654
    move-result-object v0

    .line 657
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 658
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 660
    invoke-direct/range {v19 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 662
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 665
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 667
    const-string v3, "leashAlpha"

    .line 670
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 672
    move-result-object v4

    .line 675
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$14;

    .line 676
    move-object/from16 v0, v20

    .line 678
    move-object/from16 v1, p0

    .line 680
    move-object/from16 v3, v19

    .line 682
    move-object v14, v4

    .line 684
    move-object/from16 v4, p2

    .line 685
    move/from16 v21, v5

    .line 687
    move-object/from16 v5, p5

    .line 689
    move/from16 v22, v6

    .line 691
    move-object/from16 v6, p4

    .line 693
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$14;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 695
    filled-new-array/range {v20 .. v20}, [Lmiuix/animation/listener/TransitionListener;

    .line 698
    move-result-object v0

    .line 701
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 702
    move-result-object v33

    .line 705
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 706
    move-result-object v0

    .line 709
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 710
    move-result-object v0

    .line 713
    const-string v23, "PosX"

    .line 714
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 716
    int-to-float v1, v1

    .line 718
    mul-float/2addr v1, v15

    .line 719
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 720
    move-result-object v24

    .line 723
    const-string v25, "PosY"

    .line 724
    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 726
    int-to-float v1, v1

    .line 728
    mul-float/2addr v1, v15

    .line 729
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 730
    move-result-object v26

    .line 733
    const-string v27, "ScaleX"

    .line 734
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 736
    move-result-object v28

    .line 739
    const-string v29, "ScaleY"

    .line 740
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 742
    move-result-object v30

    .line 745
    const-string v31, "leashAlpha"

    .line 746
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 748
    move-result-object v32

    .line 751
    filled-new-array/range {v23 .. v32}, [Ljava/lang/Object;

    .line 752
    move-result-object v1

    .line 755
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 756
    move-result-object v0

    .line 759
    const-string v23, "PosX"

    .line 760
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 762
    move-result-object v24

    .line 765
    const-string v25, "PosY"

    .line 766
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 768
    move-result-object v26

    .line 771
    const-string v27, "ScaleX"

    .line 772
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 774
    move-result-object v28

    .line 777
    const-string v29, "ScaleY"

    .line 778
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 780
    move-result-object v30

    .line 783
    const-string v31, "leashAlpha"

    .line 784
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 786
    move-result-object v32

    .line 789
    filled-new-array/range {v23 .. v33}, [Ljava/lang/Object;

    .line 790
    move-result-object v1

    .line 793
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 794
    :cond_3
    :goto_1
    const/4 v10, 0x0

    .line 797
    goto/16 :goto_0

    .line 798
    :cond_4
    if-nez v7, :cond_5

    .line 800
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mSoScSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 802
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 804
    :cond_5
    return v7
    .line 807
.end method
