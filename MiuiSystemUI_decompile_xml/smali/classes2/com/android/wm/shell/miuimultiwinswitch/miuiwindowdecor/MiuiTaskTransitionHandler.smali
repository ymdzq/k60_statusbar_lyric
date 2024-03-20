.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TaskTransitionStarter;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiTaskTransitionHandler"

.field private static final Tag:Ljava/lang/String; = "MiuiTaskTransitionHandler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mFreeformCornerRadius:F

.field private final mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

.field private mFreeformRepleceSplitTransAnimCount:I

.field private mFreeformSqueeSplitTransAnimCount:I

.field private final mFreeformStartScale:Landroid/util/SparseArray;

.field private mFreeformToFullTransAnimCount:I

.field private mFreeformToSplitAnimCount:I

.field private mFreeformToSplitUnsupportedAnimCount:I

.field private mFullScreenCornerRadius:F

.field private mFullScreenDeviceCorner:F

.field private mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

.field private mOperateSplitTaskID:I

.field private final mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

.field private final mPendingTaskInfo:Landroid/util/SparseArray;

.field private final mPendingTransitionTokens:Landroid/util/ArrayMap;

.field private mSplitCornerRadius:F

.field private final mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

.field private mSplitToFreeformTransAnimCount:I

.field private mSplitToFullTransAnimCount:I

.field private mSwapSplitTransAnimCount:I

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;


# direct methods
.method public static synthetic $r8$lambda$1zJ4AOzJ3qXz82bwwKPUIDbsr48(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startFullToFreeformAnim$1([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$2CbQt8G8069S0GQuafNSMt6Oz4c(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startCloseSplitAnim$6([ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$C6QN3144hzxEMEkXeJ0jwu6jGes(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startSingleOpenToFullAnim$2([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$DzrxklkHjYvU6UnDHSf95J-dVSc(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startSingleOpenToFreeformAnim$3([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$MRIxqjw8Hct5KQbaiiCedV9pUTE(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startSplitToFreeformAnim$4(Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$PHqOUXfiibumwPORlc8dII_s-zI(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p3, p0, p1, p4, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$finishTransition$0(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$YcjbHJTCgnoIeAXwTvoYhzuXOcM(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->onInit()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$dNgtD9NF3fG6DIWRHe-C0qhkB-0(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startOpenWindowFromFullscreenAnim$7([ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$fuQt2OQJ0aQHTB2Fw6zPxr08XvE(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startOpenWindowFromSingleOpenAnim$8(Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$m13amsbINetE8NOIj7WojfYF3qM(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->lambda$startCloseSplitAnim$5([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformRepleceSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformSqueeSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformToSplitAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmFreeformToSplitUnsupportedAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitToFreeformTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSplitToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmSwapSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 2
    return p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowDecorViewModel(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformRepleceSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformSqueeSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformToSplitAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmFreeformToSplitUnsupportedAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmSplitToFreeformTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmSplitToFullTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fputmSwapSplitTransAnimCount(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 2
    return-void
    .line 4
.end method

.method public static bridge synthetic -$$Nest$mfinishTransition(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p3, p0, p4, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfinishTransition(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p7, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {p7}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 10
    new-instance p7, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p7}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 17
    new-instance p7, Landroid/util/SparseArray;

    .line 19
    invoke-direct {p7}, Landroid/util/SparseArray;-><init>()V

    .line 21
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 24
    new-instance p7, Landroid/util/SparseArray;

    .line 26
    invoke-direct {p7}, Landroid/util/SparseArray;-><init>()V

    .line 28
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 31
    const/4 p7, 0x0

    .line 33
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 34
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 36
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 38
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 40
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 42
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 44
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 46
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 48
    const/4 p7, -0x1

    .line 50
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mOperateSplitTaskID:I

    .line 51
    const/high16 p7, 0x41900000    # 18.0f

    .line 53
    iput p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 55
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenDeviceCorner:F

    .line 58
    const/high16 v1, 0x41b00000    # 22.0f

    .line 60
    iput v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 62
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenCornerRadius:F

    .line 64
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 68
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 70
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 72
    iput-object p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 74
    iput-object p8, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 76
    invoke-static {p1, p7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    .line 78
    move-result p2

    .line 81
    int-to-float p2, p2

    .line 82
    iput p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 83
    iput-object p9, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 85
    iput-object p10, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 87
    iput-object p11, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 89
    invoke-static {p1}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getMiuiWindowCornerRadius(Landroid/content/Context;)F

    .line 91
    move-result p1

    .line 94
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenDeviceCorner:F

    .line 95
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 97
    if-eqz p1, :cond_0

    .line 99
    new-instance p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda5;

    .line 101
    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;)V

    .line 103
    invoke-virtual {p5, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 106
    :cond_0
    return-void
    .line 109
.end method

.method private finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method private finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 3
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 4
    new-instance v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda0;

    move-object v1, v7

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda0;-><init>(ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFreeformRectAfterAutoLayout(ILandroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->isAutoLayoutMode()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->addFreeformParamsForAutoLayout(ILandroid/graphics/Rect;F)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->autolayoutInOrder(I)Z

    .line 25
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 31
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    return-object v1
    .line 36
.end method

.method private synthetic lambda$finishTransition$0(ILandroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    const/16 v0, 0xfc

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    const/16 v0, 0xfe

    .line 6
    if-eq p1, v0, :cond_0

    .line 8
    const/16 v0, 0xfd

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    const/16 v0, 0xff

    .line 14
    if-eq p1, v0, :cond_0

    .line 16
    const/16 v0, 0x109

    .line 18
    if-ne p1, v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 22
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 27
    invoke-virtual {v1, p2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishExitSoSc(Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 29
    :cond_1
    const/16 v0, 0xfb

    .line 32
    if-eq p1, v0, :cond_2

    .line 34
    const/16 v0, 0x103

    .line 36
    if-eq p1, v0, :cond_2

    .line 38
    const/16 v0, 0x104

    .line 40
    if-eq p1, v0, :cond_2

    .line 42
    const/16 v0, 0x105

    .line 44
    if-eq p1, v0, :cond_2

    .line 46
    const/16 v0, 0x108

    .line 48
    if-eq p1, v0, :cond_2

    .line 50
    const/16 v0, 0x106

    .line 52
    if-eq p1, v0, :cond_2

    .line 54
    const/16 v0, 0x107

    .line 56
    if-eq p1, v0, :cond_2

    .line 58
    const/16 v0, 0x10c

    .line 60
    if-eq p1, v0, :cond_2

    .line 62
    const/16 v0, 0x10d

    .line 64
    if-ne p1, v0, :cond_3

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 68
    invoke-virtual {v0, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 70
    :cond_3
    const/4 p2, 0x0

    .line 73
    invoke-interface {p3, p4, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 74
    const/16 p2, 0x100

    .line 77
    if-eq p1, p2, :cond_4

    .line 79
    const/16 p2, 0x101

    .line 81
    if-ne p1, p2, :cond_5

    .line 83
    :cond_4
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 85
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishSwapTasks()V

    .line 87
    const/4 p2, 0x1

    .line 90
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 91
    invoke-static {p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 93
    :cond_5
    const/16 p2, 0x10b

    .line 96
    if-ne p1, p2, :cond_6

    .line 98
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 100
    invoke-virtual {p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->finishRemoveTaskFromSoSc()V

    .line 102
    :cond_6
    const-string p2, "FF_NoUI/MWS_ACTION_WINDOW_CONTROLLER_RESIZE"

    .line 105
    invoke-static {p2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->onTransitionEnd(I)V

    .line 110
    return-void
    .line 113
.end method

.method private synthetic lambda$startCloseSplitAnim$5([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
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
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startCloseSplitAnim$6([ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    add-int/lit8 v1, v1, -0x1

    .line 5
    aput v1, p1, v0

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 11
    move-result p1

    .line 14
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method private synthetic lambda$startFullToFreeformAnim$1([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
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
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startOpenWindowFromFullscreenAnim$7([ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p1, v0

    .line 3
    add-int/lit8 v1, v1, -0x1

    .line 5
    aput v1, p1, v0

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 11
    move-result p1

    .line 14
    invoke-direct {p0, p1, p3, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method private synthetic lambda$startOpenWindowFromSingleOpenAnim$8(Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    .line 2
    move-result p1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 6
    return-void
    .line 9
.end method

.method private synthetic lambda$startSingleOpenToFreeformAnim$3([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
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
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startSingleOpenToFullAnim$2([ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
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
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 22
    :cond_1
    return-void
    .line 25
.end method

.method private synthetic lambda$startSplitToFreeformAnim$4(Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 2
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 6
    if-eqz p5, :cond_0

    .line 8
    invoke-virtual {p1, p5, v1}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    .line 10
    :cond_0
    iget p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 13
    if-nez p5, :cond_1

    .line 15
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 17
    move-result p2

    .line 20
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 21
    :cond_1
    return-void
    .line 24
.end method

.method private onInit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    .line 4
    return-void
    .line 7
.end method

.method private onTransitionEnd(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

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
    const/16 v0, 0x104

    .line 21
    const/16 v1, 0x10b

    .line 23
    const/16 v2, 0x105

    .line 25
    const/16 v3, 0x103

    .line 27
    const/16 v4, 0xfb

    .line 29
    if-eq p1, v4, :cond_0

    .line 31
    if-eq p1, v3, :cond_0

    .line 33
    if-eq p1, v2, :cond_0

    .line 35
    if-eq p1, v1, :cond_0

    .line 37
    if-ne p1, v0, :cond_1

    .line 39
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 41
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->continueUpdateSoScState()V

    .line 43
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 46
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->ensureSoScMinimized()V

    .line 48
    :cond_1
    if-eq p1, v4, :cond_2

    .line 51
    if-eq p1, v3, :cond_2

    .line 53
    if-eq p1, v0, :cond_2

    .line 55
    if-eq p1, v2, :cond_2

    .line 57
    const/16 v0, 0x108

    .line 59
    if-eq p1, v0, :cond_2

    .line 61
    const/16 v0, 0x106

    .line 63
    if-eq p1, v0, :cond_2

    .line 65
    const/16 v0, 0x107

    .line 67
    if-ne p1, v0, :cond_3

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 71
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 73
    :cond_3
    const/16 v0, 0x10a

    .line 76
    if-eq p1, v0, :cond_4

    .line 78
    const/16 v0, 0x2b02

    .line 80
    if-eq p1, v0, :cond_4

    .line 82
    if-eq p1, v1, :cond_4

    .line 84
    const/16 v0, 0x109

    .line 86
    if-eq p1, v0, :cond_4

    .line 88
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 90
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setMultiWinSwitchAnimationRunning(Z)V

    .line 93
    :cond_4
    return-void
    .line 96
.end method

.method private startCloseAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v0, p3

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 6
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_3

    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 25
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 27
    move-result v5

    .line 30
    and-int/lit8 v5, v5, 0x2

    .line 31
    if-eqz v5, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 36
    move-result-object v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 42
    const/4 v7, -0x1

    .line 44
    if-ne v6, v7, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v6

    .line 53
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 54
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 56
    iget v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 58
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 63
    check-cast v7, Ljava/lang/Float;

    .line 64
    if-eqz v7, :cond_0

    .line 66
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 68
    move-result v8

    .line 71
    const/4 v10, 0x0

    .line 72
    cmpl-float v8, v8, v10

    .line 73
    if-eqz v8, :cond_0

    .line 75
    if-eqz v6, :cond_0

    .line 77
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v6

    .line 82
    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 85
    move-result-object v6

    .line 88
    if-eqz v6, :cond_0

    .line 89
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 91
    move-result-object v6

    .line 94
    if-eqz v6, :cond_0

    .line 95
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 97
    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 99
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 104
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 106
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 108
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 111
    move-result v11

    .line 114
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 115
    move-result-object v5

    .line 118
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 119
    move-result-object v2

    .line 122
    const/high16 v12, 0x3f800000    # 1.0f

    .line 123
    invoke-virtual {v0, v2, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 125
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 128
    int-to-float v3, v3

    .line 130
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 131
    int-to-float v6, v6

    .line 133
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 134
    invoke-virtual {v0, v2, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 137
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 140
    move-result v3

    .line 143
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 144
    move-result v6

    .line 147
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 148
    const v3, 0x7fffffff

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 154
    const/high16 v0, 0x3f000000    # 0.5f

    .line 157
    mul-float v13, v11, v0

    .line 159
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 161
    int-to-float v0, v0

    .line 163
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 164
    move-result v3

    .line 167
    int-to-float v3, v3

    .line 168
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 169
    move-result v6

    .line 172
    mul-float/2addr v6, v3

    .line 173
    const/high16 v3, 0x40000000    # 2.0f

    .line 174
    div-float/2addr v6, v3

    .line 176
    add-float/2addr v6, v0

    .line 177
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 178
    int-to-float v0, v0

    .line 180
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 181
    move-result v8

    .line 184
    int-to-float v8, v8

    .line 185
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 186
    move-result v7

    .line 189
    mul-float/2addr v7, v8

    .line 190
    div-float/2addr v7, v3

    .line 191
    add-float/2addr v7, v0

    .line 192
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 193
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 195
    const/4 v14, 0x1

    .line 198
    new-array v3, v14, [F

    .line 199
    const/high16 v8, 0x43160000    # 150.0f

    .line 201
    aput v8, v3, v4

    .line 203
    const/16 v4, 0xf

    .line 205
    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 207
    move-result-object v0

    .line 210
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 211
    new-instance v15, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 213
    invoke-direct {v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 215
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    .line 218
    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 220
    sget-object v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 223
    const-string v8, "ScaleX"

    .line 225
    invoke-virtual {v3, v8, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 227
    move-result-object v3

    .line 230
    const-string v8, "ScaleY"

    .line 231
    invoke-virtual {v3, v8, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 233
    move-result-object v3

    .line 236
    const-string v4, "leashAlpha"

    .line 237
    invoke-virtual {v3, v4, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 239
    move-result-object v9

    .line 242
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$24;

    .line 243
    move-object/from16 v0, v16

    .line 245
    move-object/from16 v1, p0

    .line 247
    move v3, v6

    .line 249
    move-object v4, v5

    .line 250
    move-object v5, v15

    .line 251
    move v6, v7

    .line 252
    move-object/from16 v7, p2

    .line 253
    move-object/from16 v8, p5

    .line 255
    move-object v14, v9

    .line 257
    move-object/from16 v9, p4

    .line 258
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$24;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;FLandroid/graphics/Rect;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;FLandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 260
    filled-new-array/range {v16 .. v16}, [Lmiuix/animation/listener/TransitionListener;

    .line 263
    move-result-object v0

    .line 266
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 267
    move-result-object v7

    .line 270
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 271
    move-result-object v0

    .line 274
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 275
    move-result-object v0

    .line 278
    const-string v1, "scaleX"

    .line 279
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 281
    move-result-object v2

    .line 284
    const-string v3, "scaleY"

    .line 285
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    move-result-object v4

    .line 290
    const-string v5, "leashAlpha"

    .line 291
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v6

    .line 296
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 297
    move-result-object v1

    .line 300
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 301
    move-result-object v0

    .line 304
    const-string v1, "scaleX"

    .line 305
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 307
    move-result-object v2

    .line 310
    const-string v3, "scaleY"

    .line 311
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 313
    move-result-object v4

    .line 316
    const-string v5, "leashAlpha"

    .line 317
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 319
    move-result-object v6

    .line 322
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 323
    move-result-object v1

    .line 326
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 327
    const/4 v4, 0x1

    .line 330
    :cond_3
    return v4
    .line 331
.end method

.method private startCloseSOSCAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p3

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 5
    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v2

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 24
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 26
    move-result v5

    .line 29
    and-int/lit8 v5, v5, 0x2

    .line 30
    if-eqz v5, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 35
    move-result-object v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 41
    const/4 v7, -0x1

    .line 43
    if-ne v6, v7, :cond_2

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    iget-object v7, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 47
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 52
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    if-eqz v6, :cond_0

    .line 55
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 57
    move-result-object v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 63
    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 69
    move-result-object v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 75
    move-result-object v6

    .line 78
    if-eqz v6, :cond_0

    .line 79
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 81
    move-result v6

    .line 84
    const/4 v10, 0x1

    .line 85
    if-ne v6, v10, :cond_0

    .line 86
    iget-object v2, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 88
    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 90
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 92
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 95
    move-result-object v5

    .line 98
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 99
    move-result-object v2

    .line 102
    const/high16 v11, 0x3f800000    # 1.0f

    .line 103
    invoke-virtual {v0, v2, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 105
    iget v3, v5, Landroid/graphics/Rect;->left:I

    .line 108
    int-to-float v3, v3

    .line 110
    iget v6, v5, Landroid/graphics/Rect;->top:I

    .line 111
    int-to-float v6, v6

    .line 113
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 114
    invoke-virtual {v0, v2, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 117
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 120
    move-result v3

    .line 123
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 124
    move-result v6

    .line 127
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 128
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 131
    int-to-float v0, v0

    .line 133
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 134
    move-result v3

    .line 137
    int-to-float v3, v3

    .line 138
    const/high16 v6, 0x40000000    # 2.0f

    .line 139
    div-float/2addr v3, v6

    .line 141
    add-float/2addr v3, v0

    .line 142
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 143
    int-to-float v0, v0

    .line 145
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 146
    move-result v7

    .line 149
    int-to-float v7, v7

    .line 150
    div-float/2addr v7, v6

    .line 151
    add-float v6, v7, v0

    .line 152
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 154
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 156
    new-array v7, v10, [F

    .line 159
    const/high16 v8, 0x43160000    # 150.0f

    .line 161
    aput v8, v7, v4

    .line 163
    const/16 v4, 0xf

    .line 165
    invoke-virtual {v0, v4, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 167
    move-result-object v0

    .line 170
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 171
    new-instance v12, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 173
    invoke-direct {v12}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 175
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 178
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 180
    sget-object v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 183
    const-string v8, "ScaleX"

    .line 185
    invoke-virtual {v4, v8, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 187
    move-result-object v4

    .line 190
    const-string v8, "ScaleY"

    .line 191
    invoke-virtual {v4, v8, v7}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 193
    move-result-object v4

    .line 196
    const-string v7, "leashAlpha"

    .line 197
    invoke-virtual {v4, v7, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 199
    move-result-object v13

    .line 202
    new-instance v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$25;

    .line 203
    move-object v0, v14

    .line 205
    move-object v1, p0

    .line 206
    move-object v4, v5

    .line 207
    move-object v5, v12

    .line 208
    move-object/from16 v7, p2

    .line 209
    move-object/from16 v8, p5

    .line 211
    move-object/from16 v9, p4

    .line 213
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$25;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;FLandroid/graphics/Rect;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;FLandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 215
    filled-new-array {v14}, [Lmiuix/animation/listener/TransitionListener;

    .line 218
    move-result-object v0

    .line 221
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 222
    move-result-object v7

    .line 225
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 229
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 230
    move-result-object v0

    .line 233
    const-string v1, "scaleX"

    .line 234
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    move-result-object v2

    .line 239
    const-string v3, "scaleY"

    .line 240
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    move-result-object v4

    .line 245
    const-string v5, "leashAlpha"

    .line 246
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 248
    move-result-object v6

    .line 251
    move-object p0, v1

    .line 252
    move-object/from16 p1, v2

    .line 253
    move-object/from16 p2, v3

    .line 255
    move-object/from16 p3, v4

    .line 257
    move-object/from16 p4, v5

    .line 259
    move-object/from16 p5, v6

    .line 261
    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    .line 263
    move-result-object v1

    .line 266
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 267
    move-result-object v0

    .line 270
    const-string v1, "scaleX"

    .line 271
    const v2, 0x3f4ccccd    # 0.8f

    .line 273
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 276
    move-result-object v3

    .line 279
    const-string v4, "scaleY"

    .line 280
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 282
    move-result-object v5

    .line 285
    const-string v6, "leashAlpha"

    .line 286
    const/4 v2, 0x0

    .line 288
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 289
    move-result-object v8

    .line 292
    move-object v2, v3

    .line 293
    move-object v3, v4

    .line 294
    move-object v4, v5

    .line 295
    move-object v5, v6

    .line 296
    move-object v6, v8

    .line 297
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 301
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 302
    move v4, v10

    .line 305
    :cond_3
    return v4
    .line 306
.end method

.method private startCloseSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 24

    .line 1
    move-object/from16 v14, p0

    .line 2
    move-object/from16 v15, p3

    .line 4
    const/4 v13, 0x1

    .line 6
    new-array v8, v13, [I

    .line 7
    new-instance v9, Landroid/window/WindowContainerTransaction;

    .line 9
    invoke-direct {v9}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    iget-object v10, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 14
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;

    .line 16
    const/4 v7, 0x1

    .line 18
    move-object v0, v11

    .line 19
    move-object/from16 v1, p0

    .line 20
    move-object v2, v8

    .line 22
    move-object v3, v9

    .line 23
    move-object/from16 v4, p2

    .line 24
    move-object/from16 v5, p5

    .line 26
    move-object/from16 v6, p4

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

    .line 30
    move-object v0, v10

    .line 33
    move-object/from16 v1, p1

    .line 34
    move-object/from16 v2, p2

    .line 36
    move-object/from16 v3, p3

    .line 38
    move-object/from16 v4, p4

    .line 40
    move-object v5, v11

    .line 42
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 43
    move-result-object v0

    .line 46
    const/4 v12, 0x0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    aget v0, v8, v12

    .line 50
    add-int/2addr v0, v13

    .line 52
    aput v0, v8, v12

    .line 53
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 55
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 72
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 73
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 75
    move-result v2

    .line 78
    const/4 v3, 0x2

    .line 79
    if-eq v2, v3, :cond_1

    .line 80
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 82
    move-result v2

    .line 85
    const/4 v3, 0x4

    .line 86
    if-ne v2, v3, :cond_2

    .line 87
    :cond_1
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 89
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 91
    move-result-object v2

    .line 94
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 95
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 105
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 107
    move-result-object v2

    .line 110
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 111
    move-result-object v3

    .line 114
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 118
    if-nez v2, :cond_2

    .line 119
    new-instance v7, Landroid/graphics/RectF;

    .line 121
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 123
    move-result-object v0

    .line 126
    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 130
    move-result v0

    .line 133
    const/high16 v2, 0x3e800000    # 0.25f

    .line 134
    mul-float/2addr v0, v2

    .line 136
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 137
    move-result v3

    .line 140
    mul-float/2addr v3, v2

    .line 141
    new-instance v10, Landroid/graphics/RectF;

    .line 142
    iget v2, v7, Landroid/graphics/RectF;->left:F

    .line 144
    add-float/2addr v2, v0

    .line 146
    iget v4, v7, Landroid/graphics/RectF;->top:F

    .line 147
    add-float/2addr v4, v3

    .line 149
    iget v5, v7, Landroid/graphics/RectF;->right:F

    .line 150
    sub-float/2addr v5, v0

    .line 152
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 153
    sub-float/2addr v0, v3

    .line 155
    invoke-direct {v10, v2, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 159
    move-result-object v11

    .line 162
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    .line 163
    move-result v0

    .line 166
    float-to-int v0, v0

    .line 167
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    .line 168
    move-result v1

    .line 171
    float-to-int v1, v1

    .line 172
    invoke-virtual {v15, v11, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 173
    aget v0, v8, v12

    .line 176
    add-int/2addr v0, v13

    .line 178
    aput v0, v8, v12

    .line 179
    const/high16 v16, 0x3f800000    # 1.0f

    .line 181
    const/high16 v17, 0x3f800000    # 1.0f

    .line 183
    const/high16 v18, 0x3f000000    # 0.5f

    .line 185
    const/high16 v19, 0x3f000000    # 0.5f

    .line 187
    const/high16 v20, 0x3f800000    # 1.0f

    .line 189
    const/16 v21, 0x0

    .line 191
    iget v6, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 193
    new-instance v22, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda4;

    .line 195
    move-object/from16 v0, v22

    .line 197
    move-object/from16 v1, p0

    .line 199
    move-object v2, v8

    .line 201
    move-object/from16 v3, p2

    .line 202
    move-object/from16 v4, p5

    .line 204
    move-object/from16 v5, p4

    .line 206
    move/from16 v23, v6

    .line 208
    move-object v6, v9

    .line 210
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 211
    move-object/from16 v0, p0

    .line 214
    move-object v1, v11

    .line 216
    move-object/from16 v2, p3

    .line 217
    move-object v3, v7

    .line 219
    move-object v4, v10

    .line 220
    move/from16 v5, v16

    .line 221
    move/from16 v6, v17

    .line 223
    move/from16 v7, v18

    .line 225
    move/from16 v8, v19

    .line 227
    move/from16 v9, v20

    .line 229
    move/from16 v10, v21

    .line 231
    move/from16 v11, v23

    .line 233
    move/from16 v12, v23

    .line 235
    move/from16 v16, v13

    .line 237
    move-object/from16 v13, v22

    .line 239
    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFFFLjava/lang/Runnable;)V

    .line 241
    move-object/from16 v0, p2

    .line 244
    move/from16 v13, v16

    .line 246
    const/4 v1, 0x0

    .line 248
    goto :goto_1

    .line 249
    :cond_2
    move/from16 v16, v13

    .line 250
    move/from16 v13, v16

    .line 252
    const/4 v12, 0x0

    .line 254
    goto/16 :goto_0

    .line 255
    :cond_3
    move-object/from16 v0, p2

    .line 257
    const/4 v1, 0x0

    .line 259
    const/4 v13, 0x0

    .line 260
    :goto_1
    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 261
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 265
    move-result-object v0

    .line 268
    invoke-virtual {v15, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 269
    if-eqz v13, :cond_4

    .line 272
    iget-object v0, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 274
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->setToDefaultSplitRatioIfNeed()V

    .line 276
    :cond_4
    return v13
    .line 279
.end method

.method private startFreeformFillSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 27

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v0, p3

    .line 4
    move-object/from16 v7, p4

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 26
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 28
    move-result v3

    .line 31
    and-int/lit8 v3, v3, 0x2

    .line 32
    if-eqz v3, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    const/4 v5, -0x1

    .line 45
    if-ne v4, v5, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    iget-object v6, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 55
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 57
    move-result-object v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 63
    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 69
    move-result-object v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    if-eqz v4, :cond_0

    .line 75
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 77
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 79
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 84
    move-result-object v3

    .line 87
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v1

    .line 91
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 92
    move-result-object v6

    .line 95
    iget v2, v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 98
    move-result-object v4

    .line 101
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 105
    move-result-object v4

    .line 108
    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 109
    const v4, 0x7fffffff

    .line 112
    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 115
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 118
    int-to-float v4, v4

    .line 120
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 121
    int-to-float v5, v5

    .line 123
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 124
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 127
    move-result v4

    .line 130
    int-to-float v4, v4

    .line 131
    mul-float/2addr v4, v2

    .line 132
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 133
    move-result v5

    .line 136
    int-to-float v5, v5

    .line 137
    div-float v9, v4, v5

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 140
    move-result v4

    .line 143
    int-to-float v4, v4

    .line 144
    mul-float/2addr v4, v2

    .line 145
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 146
    move-result v5

    .line 149
    int-to-float v5, v5

    .line 150
    div-float v10, v4, v5

    .line 151
    invoke-virtual {v0, v3, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 153
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 156
    move-result v4

    .line 159
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 160
    move-result v5

    .line 163
    invoke-virtual {v0, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 164
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 167
    move-result v0

    .line 170
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 171
    move-result v4

    .line 174
    invoke-virtual {v7, v3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 175
    iget v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 178
    invoke-virtual {v7, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 180
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 183
    int-to-float v0, v0

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 186
    move-result v4

    .line 189
    int-to-float v4, v4

    .line 190
    const/high16 v5, 0x40000000    # 2.0f

    .line 191
    invoke-static {v4, v2, v5, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 193
    move-result v11

    .line 196
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 197
    int-to-float v0, v0

    .line 199
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 200
    move-result v1

    .line 203
    int-to-float v1, v1

    .line 204
    invoke-static {v1, v2, v5, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 205
    move-result v12

    .line 208
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 209
    int-to-float v0, v0

    .line 211
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 212
    move-result v1

    .line 215
    int-to-float v1, v1

    .line 216
    div-float/2addr v1, v5

    .line 217
    add-float v13, v1, v0

    .line 218
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 220
    int-to-float v0, v0

    .line 222
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 223
    move-result v1

    .line 226
    int-to-float v1, v1

    .line 227
    div-float/2addr v1, v5

    .line 228
    add-float v14, v1, v0

    .line 229
    new-instance v15, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 231
    invoke-direct {v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 233
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 236
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 238
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 241
    const-string v2, "posX"

    .line 243
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 245
    move-result-object v0

    .line 248
    const-string v2, "posY"

    .line 249
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 251
    move-result-object v0

    .line 254
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 255
    const-string v2, "scaleX"

    .line 257
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 259
    move-result-object v0

    .line 262
    const-string v2, "scaleY"

    .line 263
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 265
    move-result-object v5

    .line 268
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$18;

    .line 269
    move-object/from16 v0, v16

    .line 271
    move-object/from16 v1, p0

    .line 273
    move-object v2, v3

    .line 275
    move-object v3, v15

    .line 276
    move-object v4, v6

    .line 277
    move-object v6, v5

    .line 278
    move-object/from16 v5, p2

    .line 279
    move/from16 p1, v14

    .line 281
    move-object v14, v6

    .line 283
    move-object/from16 v6, p5

    .line 284
    move-object/from16 v7, p4

    .line 286
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$18;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 288
    filled-new-array/range {v16 .. v16}, [Lmiuix/animation/listener/TransitionListener;

    .line 291
    move-result-object v0

    .line 294
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 295
    move-result-object v26

    .line 298
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 299
    const/4 v1, 0x1

    .line 301
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized(Z)V

    .line 302
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 305
    move-result-object v0

    .line 308
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 309
    move-result-object v0

    .line 312
    const-string v14, "posX"

    .line 313
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    move-result-object v15

    .line 318
    const-string v16, "posY"

    .line 319
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    move-result-object v17

    .line 324
    const-string v18, "scaleX"

    .line 325
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    move-result-object v19

    .line 330
    const-string v20, "scaleY"

    .line 331
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v21

    .line 336
    const-string v22, "cornerRadius"

    .line 337
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 339
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 341
    move-result-object v23

    .line 344
    filled-new-array/range {v14 .. v23}, [Ljava/lang/Object;

    .line 345
    move-result-object v2

    .line 348
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 349
    move-result-object v0

    .line 352
    const-string v16, "posX"

    .line 353
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 355
    move-result-object v17

    .line 358
    const-string v18, "posY"

    .line 359
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 361
    move-result-object v19

    .line 364
    const-string v20, "scaleX"

    .line 365
    const/high16 v2, 0x3f800000    # 1.0f

    .line 367
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 369
    move-result-object v21

    .line 372
    const-string v22, "scaleY"

    .line 373
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    move-result-object v23

    .line 378
    const-string v24, "cornerRadius"

    .line 379
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 381
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    move-result-object v25

    .line 386
    filled-new-array/range {v16 .. v26}, [Ljava/lang/Object;

    .line 387
    move-result-object v2

    .line 390
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 391
    goto :goto_1

    .line 394
    :cond_3
    const/4 v1, 0x0

    .line 395
    :goto_1
    if-nez v1, :cond_4

    .line 396
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 398
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 400
    :cond_4
    return v1
    .line 403
.end method

.method private startFreeformReplaceSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 32

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

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
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 58
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 61
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 68
    check-cast v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v4

    .line 74
    const/4 v12, 0x1

    .line 75
    const/high16 v13, 0x3f800000    # 1.0f

    .line 76
    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 80
    move-result-object v4

    .line 83
    if-eqz v4, :cond_3

    .line 84
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 86
    move-result-object v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 92
    move-result-object v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    if-eqz v3, :cond_3

    .line 98
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 100
    add-int/2addr v2, v12

    .line 102
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 103
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 105
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 107
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 109
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 116
    move-result-object v1

    .line 119
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 120
    move-result-object v4

    .line 123
    iget v0, v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 124
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 126
    int-to-float v3, v3

    .line 128
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 129
    int-to-float v5, v5

    .line 131
    invoke-virtual {v9, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 135
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    mul-float/2addr v3, v0

    .line 140
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 141
    move-result v5

    .line 144
    int-to-float v5, v5

    .line 145
    div-float v14, v3, v5

    .line 146
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 148
    move-result v3

    .line 151
    int-to-float v3, v3

    .line 152
    mul-float/2addr v3, v0

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 154
    move-result v5

    .line 157
    int-to-float v5, v5

    .line 158
    div-float v15, v3, v5

    .line 159
    invoke-virtual {v9, v2, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 161
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 164
    move-result v3

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 168
    move-result v5

    .line 171
    invoke-virtual {v9, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 172
    iget v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 175
    invoke-virtual {v9, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 177
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 180
    move-result v3

    .line 183
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 184
    move-result v5

    .line 187
    invoke-virtual {v10, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 188
    iget v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 191
    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 193
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 196
    int-to-float v3, v3

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 199
    move-result v5

    .line 202
    int-to-float v5, v5

    .line 203
    const/high16 v6, 0x40000000    # 2.0f

    .line 204
    invoke-static {v5, v0, v6, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 206
    move-result v16

    .line 209
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 210
    int-to-float v3, v3

    .line 212
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 213
    move-result v1

    .line 216
    int-to-float v1, v1

    .line 217
    invoke-static {v1, v0, v6, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 218
    move-result v17

    .line 221
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 222
    int-to-float v0, v0

    .line 224
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 225
    move-result v1

    .line 228
    int-to-float v1, v1

    .line 229
    div-float/2addr v1, v6

    .line 230
    add-float v18, v1, v0

    .line 231
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 233
    int-to-float v0, v0

    .line 235
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 236
    move-result v1

    .line 239
    int-to-float v1, v1

    .line 240
    div-float/2addr v1, v6

    .line 241
    add-float v19, v1, v0

    .line 242
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 244
    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 246
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 249
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 251
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 254
    const-string v3, "posX"

    .line 256
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 258
    move-result-object v0

    .line 261
    const-string v3, "posY"

    .line 262
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 264
    move-result-object v0

    .line 267
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 268
    const-string v3, "scaleX"

    .line 270
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 272
    move-result-object v0

    .line 275
    const-string v3, "scaleY"

    .line 276
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 278
    move-result-object v7

    .line 281
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$16;

    .line 282
    move-object/from16 v0, v21

    .line 284
    move-object/from16 v1, p0

    .line 286
    move-object/from16 v3, v20

    .line 288
    move-object/from16 v5, p2

    .line 290
    move-object/from16 v6, p5

    .line 292
    move-object v12, v7

    .line 294
    move-object/from16 v7, p4

    .line 295
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$16;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 297
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 300
    move-result-object v0

    .line 303
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 304
    move-result-object v31

    .line 307
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    .line 308
    move-result-object v0

    .line 311
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 312
    move-result-object v0

    .line 315
    const-string v20, "posX"

    .line 316
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 318
    move-result-object v21

    .line 321
    const-string v22, "posY"

    .line 322
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 324
    move-result-object v23

    .line 327
    const-string v24, "scaleX"

    .line 328
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 330
    move-result-object v25

    .line 333
    const-string v26, "scaleY"

    .line 334
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    move-result-object v27

    .line 339
    const-string v28, "cornerRadius"

    .line 340
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 342
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    move-result-object v29

    .line 347
    filled-new-array/range {v20 .. v29}, [Ljava/lang/Object;

    .line 348
    move-result-object v1

    .line 351
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 352
    move-result-object v0

    .line 355
    const-string v21, "posX"

    .line 356
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 358
    move-result-object v22

    .line 361
    const-string v23, "posY"

    .line 362
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 364
    move-result-object v24

    .line 367
    const-string v25, "scaleX"

    .line 368
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 370
    move-result-object v26

    .line 373
    const-string v27, "scaleY"

    .line 374
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 376
    move-result-object v28

    .line 379
    const-string v29, "cornerRadius"

    .line 380
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 382
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    move-result-object v30

    .line 387
    filled-new-array/range {v21 .. v31}, [Ljava/lang/Object;

    .line 388
    move-result-object v1

    .line 391
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 392
    const/4 v7, 0x1

    .line 395
    goto/16 :goto_0

    .line 396
    :cond_3
    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 400
    move-result-object v2

    .line 403
    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 406
    move-result-object v2

    .line 409
    if-eqz v2, :cond_0

    .line 410
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 412
    const/4 v3, 0x1

    .line 414
    add-int/2addr v2, v3

    .line 415
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformRepleceSplitTransAnimCount:I

    .line 416
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 418
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 420
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 422
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 425
    move-result-object v2

    .line 428
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 429
    move-result-object v12

    .line 432
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 433
    move-result-object v1

    .line 436
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 437
    int-to-float v3, v3

    .line 439
    iget v4, v12, Landroid/graphics/Rect;->top:I

    .line 440
    int-to-float v4, v4

    .line 442
    invoke-virtual {v9, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 443
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 446
    move-result-object v0

    .line 449
    invoke-virtual {v9, v0, v13, v13}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 450
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 453
    int-to-float v0, v0

    .line 455
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 456
    move-result v1

    .line 459
    int-to-float v1, v1

    .line 460
    const v3, 0x3dcccccd    # 0.1f

    .line 461
    mul-float/2addr v1, v3

    .line 464
    add-float v14, v1, v0

    .line 465
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 467
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 469
    move-result v1

    .line 472
    div-int/lit8 v1, v1, 0x2

    .line 473
    add-int/2addr v1, v0

    .line 475
    int-to-float v15, v1

    .line 476
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 477
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 479
    const/4 v1, 0x1

    .line 482
    new-array v1, v1, [F

    .line 483
    const/high16 v3, 0x43160000    # 150.0f

    .line 485
    const/4 v4, 0x0

    .line 487
    aput v3, v1, v4

    .line 488
    const/16 v3, 0xf

    .line 490
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 492
    move-result-object v0

    .line 495
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 496
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 498
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 500
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 503
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 505
    const-string v3, "leashAlpha"

    .line 508
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 510
    move-result-object v6

    .line 513
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$17;

    .line 514
    move-object/from16 v0, v17

    .line 516
    move-object/from16 v1, p0

    .line 518
    move-object/from16 v3, v16

    .line 520
    move-object/from16 v4, p2

    .line 522
    move-object/from16 v5, p5

    .line 524
    move-object v13, v6

    .line 526
    move-object/from16 v6, p4

    .line 527
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$17;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 529
    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/listener/TransitionListener;

    .line 532
    move-result-object v0

    .line 535
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 536
    move-result-object v27

    .line 539
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 540
    move-result-object v0

    .line 543
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 544
    move-result-object v0

    .line 547
    const-string v16, "PosX"

    .line 548
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 550
    int-to-float v1, v1

    .line 552
    const/high16 v2, 0x3f800000    # 1.0f

    .line 553
    mul-float/2addr v1, v2

    .line 555
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 556
    move-result-object v17

    .line 559
    const-string v18, "PosY"

    .line 560
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 562
    int-to-float v1, v1

    .line 564
    mul-float/2addr v1, v2

    .line 565
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 566
    move-result-object v19

    .line 569
    const-string v20, "ScaleX"

    .line 570
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 572
    move-result-object v21

    .line 575
    const-string v22, "ScaleY"

    .line 576
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 578
    move-result-object v23

    .line 581
    const-string v24, "leashAlpha"

    .line 582
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 584
    move-result-object v25

    .line 587
    filled-new-array/range {v16 .. v25}, [Ljava/lang/Object;

    .line 588
    move-result-object v1

    .line 591
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 592
    move-result-object v0

    .line 595
    const-string v17, "PosX"

    .line 596
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 598
    move-result-object v18

    .line 601
    const-string v19, "PosY"

    .line 602
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 604
    move-result-object v20

    .line 607
    const-string v21, "ScaleX"

    .line 608
    const v1, 0x3f4ccccd    # 0.8f

    .line 610
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 613
    move-result-object v22

    .line 616
    const-string v23, "ScaleY"

    .line 617
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 619
    move-result-object v24

    .line 622
    const-string v25, "leashAlpha"

    .line 623
    const/4 v1, 0x0

    .line 625
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 626
    move-result-object v26

    .line 629
    filled-new-array/range {v17 .. v27}, [Ljava/lang/Object;

    .line 630
    move-result-object v1

    .line 633
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 634
    goto/16 :goto_0

    .line 637
    :cond_4
    if-nez v7, :cond_5

    .line 639
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 641
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 643
    :cond_5
    return v7
    .line 646
.end method

.method private startFreeformSqueeSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 31

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

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
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_5

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
    const/4 v2, 0x2

    .line 36
    and-int/2addr v1, v2

    .line 37
    if-eqz v1, :cond_0

    .line 38
    goto/16 :goto_1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    const/4 v4, -0x1

    .line 50
    if-ne v3, v4, :cond_1

    .line 51
    goto/16 :goto_1

    .line 53
    :cond_1
    iget-object v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 61
    iget-object v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 63
    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 65
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 70
    check-cast v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 71
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v6

    .line 76
    if-eqz v6, :cond_2

    .line 77
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v6

    .line 82
    if-eqz v6, :cond_2

    .line 83
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 85
    move-result-object v6

    .line 88
    if-eqz v6, :cond_2

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 91
    move-result-object v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    if-eqz v5, :cond_2

    .line 97
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 101
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 103
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 105
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 107
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 109
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 112
    move-result-object v2

    .line 115
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 116
    move-result-object v1

    .line 119
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 120
    move-result-object v4

    .line 123
    iget v0, v5, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 126
    move-result-object v3

    .line 129
    invoke-virtual {v9, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 130
    const v3, 0x7fffffff

    .line 133
    invoke-virtual {v9, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 136
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 139
    int-to-float v3, v3

    .line 141
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 142
    int-to-float v5, v5

    .line 144
    invoke-virtual {v9, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 145
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 148
    move-result v3

    .line 151
    int-to-float v3, v3

    .line 152
    mul-float/2addr v3, v0

    .line 153
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 154
    move-result v5

    .line 157
    int-to-float v5, v5

    .line 158
    div-float v13, v3, v5

    .line 159
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 161
    move-result v3

    .line 164
    int-to-float v3, v3

    .line 165
    mul-float/2addr v3, v0

    .line 166
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 167
    move-result v5

    .line 170
    int-to-float v5, v5

    .line 171
    div-float v14, v3, v5

    .line 172
    invoke-virtual {v9, v2, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 177
    move-result v3

    .line 180
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 181
    move-result v5

    .line 184
    invoke-virtual {v9, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 185
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 188
    move-result v3

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 192
    move-result v5

    .line 195
    invoke-virtual {v10, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 196
    iget v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 199
    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 201
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 204
    int-to-float v3, v3

    .line 206
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 207
    move-result v5

    .line 210
    int-to-float v5, v5

    .line 211
    const/high16 v6, 0x40000000    # 2.0f

    .line 212
    invoke-static {v5, v0, v6, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 214
    move-result v15

    .line 217
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 218
    int-to-float v3, v3

    .line 220
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 221
    move-result v1

    .line 224
    int-to-float v1, v1

    .line 225
    invoke-static {v1, v0, v6, v3}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 226
    move-result v16

    .line 229
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 230
    int-to-float v0, v0

    .line 232
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 233
    move-result v1

    .line 236
    int-to-float v1, v1

    .line 237
    div-float/2addr v1, v6

    .line 238
    add-float v17, v1, v0

    .line 239
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 241
    int-to-float v0, v0

    .line 243
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 244
    move-result v1

    .line 247
    int-to-float v1, v1

    .line 248
    div-float/2addr v1, v6

    .line 249
    add-float v18, v1, v0

    .line 250
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 252
    invoke-direct/range {v19 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 254
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 257
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 259
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 262
    const-string v3, "posX"

    .line 264
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 266
    move-result-object v0

    .line 269
    const-string v3, "posY"

    .line 270
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 272
    move-result-object v0

    .line 275
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 276
    const-string v3, "scaleX"

    .line 278
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 280
    move-result-object v0

    .line 283
    const-string v3, "scaleY"

    .line 284
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 286
    move-result-object v7

    .line 289
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$19;

    .line 290
    move-object/from16 v0, v20

    .line 292
    move-object/from16 v1, p0

    .line 294
    move-object/from16 v3, v19

    .line 296
    move-object/from16 v5, p2

    .line 298
    move-object/from16 v6, p5

    .line 300
    move-object v12, v7

    .line 302
    move-object/from16 v7, p4

    .line 303
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$19;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 305
    filled-new-array/range {v20 .. v20}, [Lmiuix/animation/listener/TransitionListener;

    .line 308
    move-result-object v0

    .line 311
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 312
    move-result-object v30

    .line 315
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 319
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 320
    move-result-object v0

    .line 323
    const-string v19, "posX"

    .line 324
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    move-result-object v20

    .line 329
    const-string v21, "posY"

    .line 330
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 332
    move-result-object v22

    .line 335
    const-string v23, "scaleX"

    .line 336
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 338
    move-result-object v24

    .line 341
    const-string v25, "scaleY"

    .line 342
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 344
    move-result-object v26

    .line 347
    const-string v27, "cornerRadius"

    .line 348
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 350
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 352
    move-result-object v28

    .line 355
    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    .line 356
    move-result-object v1

    .line 359
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 360
    move-result-object v0

    .line 363
    const-string v20, "posX"

    .line 364
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 366
    move-result-object v21

    .line 369
    const-string v22, "posY"

    .line 370
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 372
    move-result-object v23

    .line 375
    const-string v24, "scaleX"

    .line 376
    const/high16 v1, 0x3f800000    # 1.0f

    .line 378
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 380
    move-result-object v25

    .line 383
    const-string v26, "scaleY"

    .line 384
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 386
    move-result-object v27

    .line 389
    const-string v28, "cornerRadius"

    .line 390
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 392
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 394
    move-result-object v29

    .line 397
    filled-new-array/range {v20 .. v30}, [Ljava/lang/Object;

    .line 398
    move-result-object v1

    .line 401
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 402
    const/4 v7, 0x1

    .line 405
    goto/16 :goto_0

    .line 406
    :cond_2
    if-eqz v3, :cond_3

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 410
    move-result-object v3

    .line 413
    if-eqz v3, :cond_3

    .line 414
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 416
    move-result-object v3

    .line 419
    if-eqz v3, :cond_3

    .line 420
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 422
    move-result-object v3

    .line 425
    if-eqz v3, :cond_3

    .line 426
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 428
    move-result-object v3

    .line 431
    if-eqz v3, :cond_3

    .line 432
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 434
    add-int/lit8 v2, v2, 0x1

    .line 436
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformSqueeSplitTransAnimCount:I

    .line 438
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 440
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 442
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 444
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 447
    move-result-object v2

    .line 450
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 451
    move-result-object v12

    .line 454
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 455
    move-result-object v0

    .line 458
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 459
    int-to-float v1, v1

    .line 461
    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 462
    int-to-float v3, v3

    .line 464
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 465
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 468
    move-result v1

    .line 471
    int-to-float v1, v1

    .line 472
    const/high16 v3, 0x3f800000    # 1.0f

    .line 473
    mul-float/2addr v1, v3

    .line 475
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 476
    move-result v4

    .line 479
    int-to-float v4, v4

    .line 480
    div-float/2addr v1, v4

    .line 481
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 482
    move-result v4

    .line 485
    int-to-float v4, v4

    .line 486
    mul-float/2addr v4, v3

    .line 487
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 488
    move-result v3

    .line 491
    int-to-float v3, v3

    .line 492
    div-float/2addr v4, v3

    .line 493
    invoke-virtual {v9, v2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 494
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 497
    int-to-float v13, v1

    .line 499
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 500
    int-to-float v14, v0

    .line 502
    new-instance v15, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 503
    invoke-direct {v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 505
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 508
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 510
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 513
    const-string v3, "PosX"

    .line 515
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 517
    move-result-object v0

    .line 520
    const-string v3, "PosY"

    .line 521
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 523
    move-result-object v0

    .line 526
    const-string v3, "ScaleX"

    .line 527
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 529
    move-result-object v0

    .line 532
    const-string v3, "ScaleY"

    .line 533
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 535
    move-result-object v6

    .line 538
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$20;

    .line 539
    move-object/from16 v0, v16

    .line 541
    move-object/from16 v1, p0

    .line 543
    move-object v3, v15

    .line 545
    move-object/from16 v4, p2

    .line 546
    move-object/from16 v5, p5

    .line 548
    move-object v10, v6

    .line 550
    move-object/from16 v6, p4

    .line 551
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$20;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 553
    filled-new-array/range {v16 .. v16}, [Lmiuix/animation/listener/TransitionListener;

    .line 556
    move-result-object v0

    .line 559
    invoke-virtual {v10, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 560
    move-result-object v24

    .line 563
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 564
    move-result-object v0

    .line 567
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 568
    move-result-object v0

    .line 571
    const-string v15, "PosX"

    .line 572
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 574
    int-to-float v1, v1

    .line 576
    const/high16 v2, 0x3f800000    # 1.0f

    .line 577
    mul-float/2addr v1, v2

    .line 579
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 580
    move-result-object v16

    .line 583
    const-string v17, "PosY"

    .line 584
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 586
    int-to-float v1, v1

    .line 588
    mul-float/2addr v1, v2

    .line 589
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 590
    move-result-object v18

    .line 593
    const-string v19, "ScaleX"

    .line 594
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 596
    move-result-object v20

    .line 599
    const-string v21, "ScaleY"

    .line 600
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 602
    move-result-object v22

    .line 605
    filled-new-array/range {v15 .. v22}, [Ljava/lang/Object;

    .line 606
    move-result-object v1

    .line 609
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 610
    move-result-object v0

    .line 613
    const-string v16, "PosX"

    .line 614
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 616
    move-result-object v17

    .line 619
    const-string v18, "PosY"

    .line 620
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 622
    move-result-object v19

    .line 625
    const-string v20, "ScaleX"

    .line 626
    const/high16 v1, 0x3f800000    # 1.0f

    .line 628
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 630
    move-result-object v21

    .line 633
    const-string v22, "ScaleY"

    .line 634
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 636
    move-result-object v23

    .line 639
    filled-new-array/range {v16 .. v24}, [Ljava/lang/Object;

    .line 640
    move-result-object v1

    .line 643
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 644
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 647
    const/4 v1, 0x1

    .line 649
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized(Z)V

    .line 650
    goto :goto_1

    .line 653
    :cond_3
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 654
    move-result v1

    .line 657
    if-ne v1, v2, :cond_4

    .line 658
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 660
    move-result-object v1

    .line 663
    if-eqz v1, :cond_4

    .line 664
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 666
    move-result-object v0

    .line 669
    invoke-virtual {v9, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 670
    :cond_4
    :goto_1
    move-object/from16 v10, p4

    .line 673
    goto/16 :goto_0

    .line 675
    :cond_5
    if-nez v7, :cond_6

    .line 677
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 679
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 681
    :cond_6
    return v7
    .line 684
.end method

.method private startFreeformToFullAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 32

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 9
    move-result-object v1

    .line 12
    invoke-static {v1, v9}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->handlerFreeToFullLeashStatus(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;)Z

    .line 13
    move-result v10

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v11

    .line 24
    move v12, v0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_6

    .line 30
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    if-eqz v1, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 47
    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    const/4 v3, -0x1

    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 64
    check-cast v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 65
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 67
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 69
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 74
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 75
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 77
    move-result-object v4

    .line 80
    const/4 v13, 0x1

    .line 81
    const/high16 v5, 0x40000000    # 2.0f

    .line 82
    const/high16 v14, 0x3f800000    # 1.0f

    .line 84
    if-eqz v4, :cond_4

    .line 86
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 94
    move-result-object v4

    .line 97
    if-eqz v4, :cond_4

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 100
    move-result-object v4

    .line 103
    if-eqz v4, :cond_4

    .line 104
    if-eqz v2, :cond_4

    .line 106
    iget v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 108
    add-int/2addr v3, v13

    .line 110
    iput v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 111
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 113
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 115
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 117
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 120
    move-result-object v3

    .line 123
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 124
    move-result-object v1

    .line 127
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 128
    move-result-object v4

    .line 131
    iget v0, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 132
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 134
    int-to-float v2, v2

    .line 136
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 137
    int-to-float v6, v6

    .line 139
    invoke-virtual {v9, v3, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 143
    move-result v2

    .line 146
    int-to-float v2, v2

    .line 147
    mul-float/2addr v2, v0

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 149
    move-result v6

    .line 152
    int-to-float v6, v6

    .line 153
    div-float v12, v2, v6

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 156
    move-result v2

    .line 159
    int-to-float v2, v2

    .line 160
    mul-float/2addr v2, v0

    .line 161
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 162
    move-result v6

    .line 165
    int-to-float v6, v6

    .line 166
    div-float v15, v2, v6

    .line 167
    invoke-virtual {v9, v3, v12, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 169
    if-nez v10, :cond_3

    .line 172
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 174
    move-result v2

    .line 177
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 178
    move-result v6

    .line 181
    invoke-virtual {v9, v3, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 182
    :cond_3
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 185
    div-float v6, v2, v12

    .line 187
    div-float/2addr v2, v15

    .line 189
    invoke-virtual {v9, v3, v6, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 190
    const v2, 0x7fffffff

    .line 193
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 196
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 199
    int-to-float v2, v2

    .line 201
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 202
    move-result v6

    .line 205
    int-to-float v6, v6

    .line 206
    invoke-static {v6, v0, v5, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 207
    move-result v16

    .line 210
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 211
    int-to-float v2, v2

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 214
    move-result v1

    .line 217
    int-to-float v1, v1

    .line 218
    invoke-static {v1, v0, v5, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 219
    move-result v17

    .line 222
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 223
    int-to-float v0, v0

    .line 225
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 226
    move-result v1

    .line 229
    int-to-float v1, v1

    .line 230
    div-float/2addr v1, v5

    .line 231
    add-float v18, v1, v0

    .line 232
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 234
    int-to-float v0, v0

    .line 236
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 237
    move-result v1

    .line 240
    int-to-float v1, v1

    .line 241
    div-float/2addr v1, v5

    .line 242
    add-float v19, v1, v0

    .line 243
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 245
    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 247
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 250
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 252
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 255
    const-string v2, "posX"

    .line 257
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 259
    move-result-object v0

    .line 262
    const-string v2, "posY"

    .line 263
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 265
    move-result-object v0

    .line 268
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 269
    const-string v2, "scaleX"

    .line 271
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 273
    move-result-object v0

    .line 276
    const-string v2, "scaleY"

    .line 277
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 279
    move-result-object v7

    .line 282
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$1;

    .line 283
    move-object/from16 v0, v21

    .line 285
    move-object/from16 v1, p0

    .line 287
    move-object v2, v3

    .line 289
    move-object/from16 v3, v20

    .line 290
    move-object/from16 v5, p2

    .line 292
    move-object/from16 v6, p5

    .line 294
    move-object v13, v7

    .line 296
    move-object/from16 v7, p4

    .line 297
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 299
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 302
    move-result-object v0

    .line 305
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 306
    move-result-object v31

    .line 309
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    .line 310
    move-result-object v0

    .line 313
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 314
    move-result-object v0

    .line 317
    const-string v20, "posX"

    .line 318
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 320
    move-result-object v21

    .line 323
    const-string v22, "posY"

    .line 324
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 326
    move-result-object v23

    .line 329
    const-string v24, "scaleX"

    .line 330
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 332
    move-result-object v25

    .line 335
    const-string v26, "scaleY"

    .line 336
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 338
    move-result-object v27

    .line 341
    const-string v28, "cornerRadius"

    .line 342
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 344
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 346
    move-result-object v29

    .line 349
    filled-new-array/range {v20 .. v29}, [Ljava/lang/Object;

    .line 350
    move-result-object v1

    .line 353
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 354
    move-result-object v0

    .line 357
    const-string v21, "posX"

    .line 358
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 360
    move-result-object v22

    .line 363
    const-string v23, "posY"

    .line 364
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 366
    move-result-object v24

    .line 369
    const-string v25, "scaleX"

    .line 370
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 372
    move-result-object v26

    .line 375
    const-string v27, "scaleY"

    .line 376
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 378
    move-result-object v28

    .line 381
    const-string v29, "cornerRadius"

    .line 382
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenDeviceCorner:F

    .line 384
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 386
    move-result-object v30

    .line 389
    filled-new-array/range {v21 .. v31}, [Ljava/lang/Object;

    .line 390
    move-result-object v1

    .line 393
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 394
    const/4 v12, 0x1

    .line 397
    goto/16 :goto_0

    .line 398
    :cond_4
    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 402
    move-result-object v2

    .line 405
    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 408
    move-result-object v2

    .line 411
    if-eqz v2, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 414
    move-result-object v2

    .line 417
    if-eqz v2, :cond_0

    .line 418
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 420
    const/4 v3, 0x1

    .line 422
    add-int/2addr v2, v3

    .line 423
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToFullTransAnimCount:I

    .line 424
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 426
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 428
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 430
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 433
    move-result-object v2

    .line 436
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 437
    move-result-object v1

    .line 440
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 441
    move-result-object v4

    .line 444
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 445
    int-to-float v0, v0

    .line 447
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 448
    int-to-float v3, v3

    .line 450
    invoke-virtual {v9, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 451
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 454
    move-result v0

    .line 457
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 458
    move-result v3

    .line 461
    invoke-virtual {v9, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 462
    invoke-virtual {v9, v2, v14, v14}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 465
    iget v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenDeviceCorner:F

    .line 468
    invoke-virtual {v9, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 470
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 473
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 475
    move-result v3

    .line 478
    div-int/lit8 v3, v3, 0x2

    .line 479
    add-int/2addr v3, v0

    .line 481
    int-to-float v13, v3

    .line 482
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 485
    move-result v1

    .line 488
    div-int/lit8 v1, v1, 0x2

    .line 489
    add-int/2addr v1, v0

    .line 491
    int-to-float v15, v1

    .line 492
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 493
    int-to-float v0, v0

    .line 495
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 496
    move-result v1

    .line 499
    int-to-float v1, v1

    .line 500
    div-float/2addr v1, v5

    .line 501
    add-float v16, v1, v0

    .line 502
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 504
    int-to-float v0, v0

    .line 506
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 507
    move-result v1

    .line 510
    int-to-float v1, v1

    .line 511
    div-float/2addr v1, v5

    .line 512
    add-float v17, v1, v0

    .line 513
    sget-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_TABLET:Z

    .line 515
    if-eqz v0, :cond_5

    .line 517
    const v0, 0x3f666666    # 0.9f

    .line 519
    goto :goto_1

    .line 522
    :cond_5
    const v0, 0x3f4ccccd    # 0.8f

    .line 523
    :goto_1
    move/from16 v18, v0

    .line 526
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 528
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 530
    const/4 v1, 0x1

    .line 533
    new-array v1, v1, [F

    .line 534
    const/high16 v3, 0x43160000    # 150.0f

    .line 536
    const/4 v5, 0x0

    .line 538
    aput v3, v1, v5

    .line 539
    const/16 v3, 0xf

    .line 541
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 543
    move-result-object v0

    .line 546
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 547
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 549
    invoke-direct/range {v19 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 551
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 554
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 556
    const-string v3, "leashAlpha"

    .line 559
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 561
    move-result-object v7

    .line 564
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$2;

    .line 565
    move-object/from16 v0, v20

    .line 567
    move-object/from16 v1, p0

    .line 569
    move-object/from16 v3, v19

    .line 571
    move-object/from16 v5, p2

    .line 573
    move-object/from16 v6, p5

    .line 575
    move-object v14, v7

    .line 577
    move-object/from16 v7, p4

    .line 578
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 580
    filled-new-array/range {v20 .. v20}, [Lmiuix/animation/listener/TransitionListener;

    .line 583
    move-result-object v0

    .line 586
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 587
    move-result-object v30

    .line 590
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 591
    move-result-object v0

    .line 594
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 595
    move-result-object v0

    .line 598
    const-string v19, "PosX"

    .line 599
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 601
    move-result-object v20

    .line 604
    const-string v21, "PosY"

    .line 605
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 607
    move-result-object v22

    .line 610
    const-string v23, "ScaleX"

    .line 611
    const/high16 v1, 0x3f800000    # 1.0f

    .line 613
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 615
    move-result-object v24

    .line 618
    const-string v25, "ScaleY"

    .line 619
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 621
    move-result-object v26

    .line 624
    const-string v27, "leashAlpha"

    .line 625
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 627
    move-result-object v28

    .line 630
    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    .line 631
    move-result-object v1

    .line 634
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 635
    move-result-object v0

    .line 638
    const-string v20, "PosX"

    .line 639
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 641
    move-result-object v21

    .line 644
    const-string v22, "PosY"

    .line 645
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 647
    move-result-object v23

    .line 650
    const-string v24, "ScaleX"

    .line 651
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 653
    move-result-object v25

    .line 656
    const-string v26, "ScaleY"

    .line 657
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 659
    move-result-object v27

    .line 662
    const-string v28, "leashAlpha"

    .line 663
    const/4 v1, 0x0

    .line 665
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 666
    move-result-object v29

    .line 669
    filled-new-array/range {v20 .. v30}, [Ljava/lang/Object;

    .line 670
    move-result-object v1

    .line 673
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 674
    goto/16 :goto_0

    .line 677
    :cond_6
    return v12
    .line 679
.end method

.method private startFreeformToSingleAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 27

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v0, p3

    .line 4
    move-object/from16 v7, p4

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 26
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 28
    move-result v3

    .line 31
    and-int/lit8 v3, v3, 0x2

    .line 32
    if-eqz v3, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    const/4 v5, -0x1

    .line 45
    if-ne v4, v5, :cond_2

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    iget-object v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 55
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 57
    move-result-object v5

    .line 60
    if-eqz v5, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 63
    move-result-object v5

    .line 66
    if-eqz v5, :cond_0

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 69
    move-result-object v5

    .line 72
    if-eqz v5, :cond_0

    .line 73
    if-eqz v4, :cond_0

    .line 75
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 77
    iget v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 79
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 84
    move-result-object v5

    .line 87
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v1

    .line 91
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 92
    move-result-object v6

    .line 95
    iget v2, v4, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 98
    move-result-object v4

    .line 101
    invoke-virtual {v0, v5, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 105
    int-to-float v4, v4

    .line 107
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 108
    int-to-float v9, v9

    .line 110
    invoke-virtual {v0, v5, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 114
    move-result v4

    .line 117
    int-to-float v4, v4

    .line 118
    mul-float/2addr v4, v2

    .line 119
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 120
    move-result v9

    .line 123
    int-to-float v9, v9

    .line 124
    div-float v9, v4, v9

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 127
    move-result v4

    .line 130
    int-to-float v4, v4

    .line 131
    mul-float/2addr v4, v2

    .line 132
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 133
    move-result v10

    .line 136
    int-to-float v10, v10

    .line 137
    div-float v10, v4, v10

    .line 138
    invoke-virtual {v0, v5, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 140
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 143
    move-result v4

    .line 146
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 147
    move-result v11

    .line 150
    invoke-virtual {v0, v5, v4, v11}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 151
    iget v4, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 154
    div-float v11, v4, v9

    .line 156
    div-float/2addr v4, v10

    .line 158
    invoke-virtual {v0, v5, v11, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 162
    move-result-object v4

    .line 165
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 166
    move-result v4

    .line 169
    mul-int/lit8 v4, v4, 0x2

    .line 170
    add-int/lit8 v4, v4, 0x2

    .line 172
    invoke-virtual {v0, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 174
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 177
    move-result v0

    .line 180
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 181
    move-result v4

    .line 184
    invoke-virtual {v7, v5, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 185
    iget v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 188
    invoke-virtual {v7, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 190
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 193
    iget-object v4, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 195
    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterSingleOpenByControl(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 197
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 200
    int-to-float v0, v0

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 203
    move-result v3

    .line 206
    int-to-float v3, v3

    .line 207
    const/high16 v4, 0x40000000    # 2.0f

    .line 208
    invoke-static {v3, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 210
    move-result v11

    .line 213
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 214
    int-to-float v0, v0

    .line 216
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 217
    move-result v1

    .line 220
    int-to-float v1, v1

    .line 221
    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 222
    move-result v12

    .line 225
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 226
    int-to-float v0, v0

    .line 228
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 229
    move-result v1

    .line 232
    int-to-float v1, v1

    .line 233
    div-float/2addr v1, v4

    .line 234
    add-float v13, v1, v0

    .line 235
    iget v0, v6, Landroid/graphics/Rect;->top:I

    .line 237
    int-to-float v0, v0

    .line 239
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 240
    move-result v1

    .line 243
    int-to-float v1, v1

    .line 244
    div-float/2addr v1, v4

    .line 245
    add-float v14, v1, v0

    .line 246
    new-instance v15, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 248
    invoke-direct {v15}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 250
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 253
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 255
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 258
    const-string v2, "posX"

    .line 260
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 262
    move-result-object v0

    .line 265
    const-string v2, "posY"

    .line 266
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 268
    move-result-object v0

    .line 271
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 272
    const-string v2, "scaleX"

    .line 274
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 276
    move-result-object v0

    .line 279
    const-string v2, "scaleY"

    .line 280
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 282
    move-result-object v4

    .line 285
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$11;

    .line 286
    move-object/from16 v0, v16

    .line 288
    move-object/from16 v1, p0

    .line 290
    move-object v2, v5

    .line 292
    move-object v3, v15

    .line 293
    move-object v5, v4

    .line 294
    move-object v4, v6

    .line 295
    move-object v6, v5

    .line 296
    move-object/from16 v5, p2

    .line 297
    move/from16 p1, v14

    .line 299
    move-object v14, v6

    .line 301
    move-object/from16 v6, p5

    .line 302
    move-object/from16 v7, p4

    .line 304
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$11;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 306
    filled-new-array/range {v16 .. v16}, [Lmiuix/animation/listener/TransitionListener;

    .line 309
    move-result-object v0

    .line 312
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 313
    move-result-object v26

    .line 316
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 317
    move-result-object v0

    .line 320
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 321
    move-result-object v0

    .line 324
    const-string v14, "posX"

    .line 325
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    move-result-object v15

    .line 330
    const-string v16, "posY"

    .line 331
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v17

    .line 336
    const-string v18, "scaleX"

    .line 337
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    move-result-object v19

    .line 342
    const-string v20, "scaleY"

    .line 343
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 345
    move-result-object v21

    .line 348
    const-string v22, "cornerRadius"

    .line 349
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 351
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 353
    move-result-object v23

    .line 356
    filled-new-array/range {v14 .. v23}, [Ljava/lang/Object;

    .line 357
    move-result-object v1

    .line 360
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 361
    move-result-object v0

    .line 364
    const-string v16, "posX"

    .line 365
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 367
    move-result-object v17

    .line 370
    const-string v18, "posY"

    .line 371
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 373
    move-result-object v19

    .line 376
    const-string v20, "scaleX"

    .line 377
    const/high16 v1, 0x3f800000    # 1.0f

    .line 379
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 381
    move-result-object v21

    .line 384
    const-string v22, "scaleY"

    .line 385
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 387
    move-result-object v23

    .line 390
    const-string v24, "cornerRadius"

    .line 391
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 393
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 395
    move-result-object v25

    .line 398
    filled-new-array/range {v16 .. v26}, [Ljava/lang/Object;

    .line 399
    move-result-object v1

    .line 402
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 403
    const/4 v0, 0x1

    .line 406
    goto :goto_1

    .line 407
    :cond_3
    const/4 v0, 0x0

    .line 408
    :goto_1
    if-nez v0, :cond_4

    .line 409
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 411
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 413
    :cond_4
    return v0
    .line 416
.end method

.method private startFreeformToSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 31

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

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
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_5

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
    if-eqz v1, :cond_0

    .line 38
    goto/16 :goto_1

    .line 40
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    const/4 v3, -0x1

    .line 50
    if-ne v2, v3, :cond_1

    .line 51
    goto/16 :goto_1

    .line 53
    :cond_1
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 61
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 63
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 65
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 70
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 71
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v4

    .line 76
    const-string v5, "scaleY"

    .line 77
    const-string v6, "scaleX"

    .line 79
    const-string v12, "posY"

    .line 81
    const-string v13, "posX"

    .line 83
    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 87
    move-result-object v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 93
    move-result-object v4

    .line 96
    if-eqz v4, :cond_2

    .line 97
    if-eqz v2, :cond_2

    .line 99
    iget v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 103
    iput v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 105
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 107
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 109
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 111
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 114
    move-result-object v3

    .line 117
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 118
    move-result-object v1

    .line 121
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 122
    move-result-object v4

    .line 125
    iget v0, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 128
    move-result-object v2

    .line 131
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 132
    const v2, 0x7ffffffe

    .line 135
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 138
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 141
    int-to-float v2, v2

    .line 143
    iget v7, v1, Landroid/graphics/Rect;->top:I

    .line 144
    int-to-float v7, v7

    .line 146
    invoke-virtual {v9, v3, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 147
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 150
    move-result v2

    .line 153
    int-to-float v2, v2

    .line 154
    mul-float/2addr v2, v0

    .line 155
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 156
    move-result v7

    .line 159
    int-to-float v7, v7

    .line 160
    div-float v14, v2, v7

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 163
    move-result v2

    .line 166
    int-to-float v2, v2

    .line 167
    mul-float/2addr v2, v0

    .line 168
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 169
    move-result v7

    .line 172
    int-to-float v7, v7

    .line 173
    div-float v15, v2, v7

    .line 174
    invoke-virtual {v9, v3, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 176
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 179
    move-result v2

    .line 182
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 183
    move-result v7

    .line 186
    invoke-virtual {v9, v3, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 187
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 190
    div-float v7, v2, v14

    .line 192
    div-float/2addr v2, v15

    .line 194
    invoke-virtual {v9, v3, v7, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 195
    invoke-virtual {v9, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 198
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 201
    move-result v2

    .line 204
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 205
    move-result v7

    .line 208
    invoke-virtual {v10, v3, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 209
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 212
    invoke-virtual {v10, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 214
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 217
    int-to-float v2, v2

    .line 219
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 220
    move-result v7

    .line 223
    int-to-float v7, v7

    .line 224
    const/high16 v10, 0x40000000    # 2.0f

    .line 225
    invoke-static {v7, v0, v10, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 227
    move-result v16

    .line 230
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 231
    int-to-float v2, v2

    .line 233
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 234
    move-result v1

    .line 237
    int-to-float v1, v1

    .line 238
    invoke-static {v1, v0, v10, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 239
    move-result v17

    .line 242
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 243
    int-to-float v0, v0

    .line 245
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 246
    move-result v1

    .line 249
    int-to-float v1, v1

    .line 250
    div-float/2addr v1, v10

    .line 251
    add-float v18, v1, v0

    .line 252
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 254
    int-to-float v0, v0

    .line 256
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 257
    move-result v1

    .line 260
    int-to-float v1, v1

    .line 261
    div-float/2addr v1, v10

    .line 262
    add-float v10, v1, v0

    .line 263
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 265
    invoke-direct/range {v19 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 267
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 270
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 272
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 275
    invoke-virtual {v0, v13, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 277
    move-result-object v0

    .line 280
    invoke-virtual {v0, v12, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 281
    move-result-object v0

    .line 284
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 285
    invoke-virtual {v0, v6, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 287
    move-result-object v0

    .line 290
    invoke-virtual {v0, v5, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 291
    move-result-object v12

    .line 294
    new-instance v13, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$12;

    .line 295
    move-object v0, v13

    .line 297
    move-object/from16 v1, p0

    .line 298
    move-object v2, v3

    .line 300
    move-object/from16 v3, v19

    .line 301
    move-object/from16 v5, p2

    .line 303
    move-object/from16 v6, p5

    .line 305
    move-object/from16 v7, p4

    .line 307
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$12;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 309
    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    .line 312
    move-result-object v0

    .line 315
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 316
    move-result-object v30

    .line 319
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 320
    move-result-object v0

    .line 323
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 324
    move-result-object v0

    .line 327
    const-string v19, "posX"

    .line 328
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 330
    move-result-object v20

    .line 333
    const-string v21, "posY"

    .line 334
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    move-result-object v22

    .line 339
    const-string v23, "scaleX"

    .line 340
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 342
    move-result-object v24

    .line 345
    const-string v25, "scaleY"

    .line 346
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 348
    move-result-object v26

    .line 351
    const-string v27, "cornerRadius"

    .line 352
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 354
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 356
    move-result-object v28

    .line 359
    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    .line 360
    move-result-object v1

    .line 363
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 364
    move-result-object v0

    .line 367
    const-string v20, "posX"

    .line 368
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 370
    move-result-object v21

    .line 373
    const-string v22, "posY"

    .line 374
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 376
    move-result-object v23

    .line 379
    const-string v24, "scaleX"

    .line 380
    const/high16 v1, 0x3f800000    # 1.0f

    .line 382
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    move-result-object v25

    .line 387
    const-string v26, "scaleY"

    .line 388
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 390
    move-result-object v27

    .line 393
    const-string v28, "cornerRadius"

    .line 394
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 396
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    move-result-object v29

    .line 401
    filled-new-array/range {v20 .. v30}, [Ljava/lang/Object;

    .line 402
    move-result-object v1

    .line 405
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 406
    const/4 v7, 0x1

    .line 409
    goto/16 :goto_1

    .line 410
    :cond_2
    if-eqz v3, :cond_3

    .line 412
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 414
    move-result-object v2

    .line 417
    if-eqz v2, :cond_3

    .line 418
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 420
    move-result-object v2

    .line 423
    if-eqz v2, :cond_3

    .line 424
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 426
    move-result-object v2

    .line 429
    if-eqz v2, :cond_3

    .line 430
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 432
    add-int/lit8 v2, v2, 0x1

    .line 434
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitAnimCount:I

    .line 436
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 438
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 440
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 442
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 445
    move-result-object v2

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 449
    move-result-object v1

    .line 452
    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 453
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 456
    move-result-object v10

    .line 459
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 460
    move-result-object v0

    .line 463
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 464
    int-to-float v1, v1

    .line 466
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 467
    int-to-float v3, v3

    .line 469
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 470
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 473
    move-result v1

    .line 476
    int-to-float v1, v1

    .line 477
    const/high16 v3, 0x3f800000    # 1.0f

    .line 478
    mul-float/2addr v1, v3

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 481
    move-result v4

    .line 484
    int-to-float v4, v4

    .line 485
    div-float v14, v1, v4

    .line 486
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 488
    move-result v1

    .line 491
    int-to-float v1, v1

    .line 492
    mul-float/2addr v1, v3

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 494
    move-result v3

    .line 497
    int-to-float v3, v3

    .line 498
    div-float v15, v1, v3

    .line 499
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 501
    move-result v1

    .line 504
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 505
    move-result v3

    .line 508
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 509
    invoke-virtual {v9, v2, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 512
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 515
    int-to-float v4, v1

    .line 517
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 518
    int-to-float v3, v0

    .line 520
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 521
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 523
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 526
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 528
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 531
    invoke-virtual {v0, v13, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 533
    move-result-object v0

    .line 536
    invoke-virtual {v0, v12, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 537
    move-result-object v0

    .line 540
    invoke-virtual {v0, v6, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 541
    move-result-object v0

    .line 544
    invoke-virtual {v0, v5, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 545
    move-result-object v12

    .line 548
    new-instance v13, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$13;

    .line 549
    move-object v0, v13

    .line 551
    move-object/from16 v1, p0

    .line 552
    move/from16 v17, v3

    .line 554
    move-object/from16 v3, v16

    .line 556
    move/from16 v18, v4

    .line 558
    move-object/from16 v4, p2

    .line 560
    move-object/from16 v5, p5

    .line 562
    move-object/from16 v6, p4

    .line 564
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$13;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 566
    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    .line 569
    move-result-object v0

    .line 572
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 573
    move-result-object v29

    .line 576
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 577
    move-result-object v0

    .line 580
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 581
    move-result-object v0

    .line 584
    const-string v19, "posX"

    .line 585
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 587
    int-to-float v1, v1

    .line 589
    const/high16 v2, 0x3f800000    # 1.0f

    .line 590
    mul-float/2addr v1, v2

    .line 592
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 593
    move-result-object v20

    .line 596
    const-string v21, "posY"

    .line 597
    iget v1, v10, Landroid/graphics/Rect;->top:I

    .line 599
    int-to-float v1, v1

    .line 601
    mul-float/2addr v1, v2

    .line 602
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 603
    move-result-object v22

    .line 606
    const-string v23, "scaleX"

    .line 607
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 609
    move-result-object v24

    .line 612
    const-string v25, "scaleY"

    .line 613
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 615
    move-result-object v26

    .line 618
    const-string v27, "cornerRadius"

    .line 619
    const/4 v1, 0x0

    .line 621
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 622
    move-result-object v28

    .line 625
    filled-new-array/range {v19 .. v28}, [Ljava/lang/Object;

    .line 626
    move-result-object v1

    .line 629
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 630
    move-result-object v0

    .line 633
    const-string v19, "posX"

    .line 634
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 636
    move-result-object v20

    .line 639
    const-string v21, "posY"

    .line 640
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 642
    move-result-object v22

    .line 645
    const-string v23, "scaleX"

    .line 646
    const/high16 v1, 0x3f800000    # 1.0f

    .line 648
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 650
    move-result-object v24

    .line 653
    const-string v25, "scaleY"

    .line 654
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 656
    move-result-object v26

    .line 659
    const-string v27, "cornerRadius"

    .line 660
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 662
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 664
    move-result-object v28

    .line 667
    filled-new-array/range {v19 .. v29}, [Ljava/lang/Object;

    .line 668
    move-result-object v1

    .line 671
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 672
    goto :goto_1

    .line 675
    :cond_3
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 676
    move-result-object v1

    .line 679
    if-eqz v1, :cond_4

    .line 680
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 682
    move-result-object v1

    .line 685
    if-eqz v1, :cond_4

    .line 686
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 688
    move-result-object v1

    .line 691
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 692
    move-result v1

    .line 695
    const/4 v2, 0x5

    .line 696
    if-ne v1, v2, :cond_4

    .line 697
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 699
    move-result-object v1

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 703
    move-result-object v2

    .line 706
    invoke-virtual {v9, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 707
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 710
    move-result-object v1

    .line 713
    const v2, 0x7fffffff

    .line 714
    invoke-virtual {v9, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 717
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 720
    move-result-object v1

    .line 723
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 724
    if-eqz v1, :cond_4

    .line 726
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 728
    move-result-object v1

    .line 731
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 732
    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 734
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 736
    move-result-object v0

    .line 739
    invoke-virtual {v9, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 740
    :cond_4
    :goto_1
    move-object/from16 v10, p4

    .line 743
    goto/16 :goto_0

    .line 745
    :cond_5
    if-nez v7, :cond_6

    .line 747
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 749
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 751
    :cond_6
    return v7
    .line 754
.end method

.method private startFreeformToSplitUnsupportedAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 32

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

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
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 58
    check-cast v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 59
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

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
    const/4 v12, 0x1

    .line 75
    const/high16 v5, 0x40000000    # 2.0f

    .line 76
    const/high16 v13, 0x3f800000    # 1.0f

    .line 78
    if-eqz v4, :cond_3

    .line 80
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 82
    move-result-object v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 88
    move-result-object v4

    .line 91
    if-eqz v4, :cond_3

    .line 92
    if-eqz v2, :cond_3

    .line 94
    iget v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 96
    add-int/2addr v3, v12

    .line 98
    iput v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 99
    iget-object v3, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 101
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 103
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 105
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 108
    move-result-object v3

    .line 111
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 112
    move-result-object v1

    .line 115
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 116
    move-result-object v4

    .line 119
    iget v0, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 122
    move-result-object v2

    .line 125
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 126
    const v2, 0x7fffffff

    .line 129
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 132
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 135
    int-to-float v2, v2

    .line 137
    iget v6, v1, Landroid/graphics/Rect;->top:I

    .line 138
    int-to-float v6, v6

    .line 140
    invoke-virtual {v9, v3, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 144
    move-result v2

    .line 147
    int-to-float v2, v2

    .line 148
    mul-float/2addr v2, v0

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 150
    move-result v6

    .line 153
    int-to-float v6, v6

    .line 154
    div-float v14, v2, v6

    .line 155
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 157
    move-result v2

    .line 160
    int-to-float v2, v2

    .line 161
    mul-float/2addr v2, v0

    .line 162
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 163
    move-result v6

    .line 166
    int-to-float v6, v6

    .line 167
    div-float v15, v2, v6

    .line 168
    invoke-virtual {v9, v3, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 170
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 173
    move-result v2

    .line 176
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 177
    move-result v6

    .line 180
    invoke-virtual {v9, v3, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 184
    move-result-object v2

    .line 187
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 188
    move-result v2

    .line 191
    mul-int/lit8 v2, v2, 0x2

    .line 192
    add-int/lit8 v2, v2, 0x2

    .line 194
    invoke-virtual {v9, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 196
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 199
    move-result v2

    .line 202
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 203
    move-result v6

    .line 206
    invoke-virtual {v10, v3, v2, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 207
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 210
    invoke-virtual {v10, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 212
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 215
    int-to-float v2, v2

    .line 217
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 218
    move-result v6

    .line 221
    int-to-float v6, v6

    .line 222
    invoke-static {v6, v0, v5, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 223
    move-result v16

    .line 226
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 227
    int-to-float v2, v2

    .line 229
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 230
    move-result v1

    .line 233
    int-to-float v1, v1

    .line 234
    invoke-static {v1, v0, v5, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 235
    move-result v17

    .line 238
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 239
    int-to-float v0, v0

    .line 241
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 242
    move-result v1

    .line 245
    int-to-float v1, v1

    .line 246
    div-float/2addr v1, v5

    .line 247
    add-float v18, v1, v0

    .line 248
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 250
    int-to-float v0, v0

    .line 252
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 253
    move-result v1

    .line 256
    int-to-float v1, v1

    .line 257
    div-float/2addr v1, v5

    .line 258
    add-float v19, v1, v0

    .line 259
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 261
    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 263
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 266
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 268
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 271
    const-string v2, "posX"

    .line 273
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 275
    move-result-object v0

    .line 278
    const-string v2, "posY"

    .line 279
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 281
    move-result-object v0

    .line 284
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeEaseDelay:Lmiuix/animation/base/AnimSpecialConfig;

    .line 285
    const-string v2, "scaleX"

    .line 287
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 289
    move-result-object v0

    .line 292
    const-string v2, "scaleY"

    .line 293
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 295
    move-result-object v7

    .line 298
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$14;

    .line 299
    move-object/from16 v0, v21

    .line 301
    move-object/from16 v1, p0

    .line 303
    move-object v2, v3

    .line 305
    move-object/from16 v3, v20

    .line 306
    move-object/from16 v5, p2

    .line 308
    move-object/from16 v6, p5

    .line 310
    move-object v12, v7

    .line 312
    move-object/from16 v7, p4

    .line 313
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$14;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 315
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 318
    move-result-object v0

    .line 321
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 322
    move-result-object v31

    .line 325
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    .line 326
    move-result-object v0

    .line 329
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 330
    move-result-object v0

    .line 333
    const-string v20, "posX"

    .line 334
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 336
    move-result-object v21

    .line 339
    const-string v22, "posY"

    .line 340
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 342
    move-result-object v23

    .line 345
    const-string v24, "scaleX"

    .line 346
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 348
    move-result-object v25

    .line 351
    const-string v26, "scaleY"

    .line 352
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 354
    move-result-object v27

    .line 357
    const-string v28, "cornerRadius"

    .line 358
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 360
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 362
    move-result-object v29

    .line 365
    filled-new-array/range {v20 .. v29}, [Ljava/lang/Object;

    .line 366
    move-result-object v1

    .line 369
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 370
    move-result-object v0

    .line 373
    const-string v21, "posX"

    .line 374
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 376
    move-result-object v22

    .line 379
    const-string v23, "posY"

    .line 380
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 382
    move-result-object v24

    .line 385
    const-string v25, "scaleX"

    .line 386
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 388
    move-result-object v26

    .line 391
    const-string v27, "scaleY"

    .line 392
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 394
    move-result-object v28

    .line 397
    const-string v29, "cornerRadius"

    .line 398
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 400
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 402
    move-result-object v30

    .line 405
    filled-new-array/range {v21 .. v31}, [Ljava/lang/Object;

    .line 406
    move-result-object v1

    .line 409
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 410
    const/4 v7, 0x1

    .line 413
    goto/16 :goto_0

    .line 414
    :cond_3
    if-eqz v3, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 418
    move-result-object v2

    .line 421
    if-eqz v2, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 424
    move-result-object v2

    .line 427
    if-eqz v2, :cond_0

    .line 428
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 430
    move-result-object v2

    .line 433
    if-eqz v2, :cond_0

    .line 434
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 436
    const/4 v3, 0x1

    .line 438
    add-int/2addr v2, v3

    .line 439
    iput v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformToSplitUnsupportedAnimCount:I

    .line 440
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 442
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 444
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 446
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 449
    move-result-object v2

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 453
    move-result-object v1

    .line 456
    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 457
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 460
    move-result-object v12

    .line 463
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 464
    move-result-object v0

    .line 467
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 468
    int-to-float v1, v1

    .line 470
    iget v3, v12, Landroid/graphics/Rect;->top:I

    .line 471
    int-to-float v3, v3

    .line 473
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 474
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 477
    move-result v1

    .line 480
    int-to-float v1, v1

    .line 481
    mul-float/2addr v1, v13

    .line 482
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 483
    move-result v3

    .line 486
    int-to-float v3, v3

    .line 487
    div-float v14, v1, v3

    .line 488
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 490
    move-result v1

    .line 493
    int-to-float v1, v1

    .line 494
    mul-float/2addr v1, v13

    .line 495
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 496
    move-result v0

    .line 499
    int-to-float v0, v0

    .line 500
    div-float v15, v1, v0

    .line 501
    invoke-virtual {v9, v2, v14, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 503
    iget v0, v12, Landroid/graphics/Rect;->left:I

    .line 506
    int-to-float v0, v0

    .line 508
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    .line 509
    move-result v1

    .line 512
    int-to-float v1, v1

    .line 513
    const v3, 0x3dcccccd    # 0.1f

    .line 514
    mul-float/2addr v1, v3

    .line 517
    add-float v16, v1, v0

    .line 518
    iget v0, v12, Landroid/graphics/Rect;->top:I

    .line 520
    int-to-float v0, v0

    .line 522
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    .line 523
    move-result v1

    .line 526
    int-to-float v1, v1

    .line 527
    div-float/2addr v1, v5

    .line 528
    add-float v17, v1, v0

    .line 529
    const v0, 0x3f4ccccd    # 0.8f

    .line 531
    mul-float v18, v14, v0

    .line 534
    mul-float v19, v15, v0

    .line 536
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 538
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 540
    const/4 v1, 0x1

    .line 543
    new-array v1, v1, [F

    .line 544
    const/high16 v3, 0x43160000    # 150.0f

    .line 546
    const/4 v4, 0x0

    .line 548
    aput v3, v1, v4

    .line 549
    const/16 v3, 0xf

    .line 551
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 553
    move-result-object v0

    .line 556
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 557
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 559
    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 561
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 564
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 566
    const-string v3, "leashAlpha"

    .line 569
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 571
    move-result-object v6

    .line 574
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$15;

    .line 575
    move-object/from16 v0, v21

    .line 577
    move-object/from16 v1, p0

    .line 579
    move-object/from16 v3, v20

    .line 581
    move-object/from16 v4, p2

    .line 583
    move-object/from16 v5, p5

    .line 585
    move-object v13, v6

    .line 587
    move-object/from16 v6, p4

    .line 588
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$15;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 590
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 593
    move-result-object v0

    .line 596
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 597
    move-result-object v31

    .line 600
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    .line 601
    move-result-object v0

    .line 604
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 605
    move-result-object v0

    .line 608
    const-string v20, "PosX"

    .line 609
    iget v1, v12, Landroid/graphics/Rect;->left:I

    .line 611
    int-to-float v1, v1

    .line 613
    const/high16 v2, 0x3f800000    # 1.0f

    .line 614
    mul-float/2addr v1, v2

    .line 616
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 617
    move-result-object v21

    .line 620
    const-string v22, "PosY"

    .line 621
    iget v1, v12, Landroid/graphics/Rect;->top:I

    .line 623
    int-to-float v1, v1

    .line 625
    mul-float/2addr v1, v2

    .line 626
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 627
    move-result-object v23

    .line 630
    const-string v24, "ScaleX"

    .line 631
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 633
    move-result-object v25

    .line 636
    const-string v26, "ScaleY"

    .line 637
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 639
    move-result-object v27

    .line 642
    const-string v28, "leashAlpha"

    .line 643
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 645
    move-result-object v29

    .line 648
    filled-new-array/range {v20 .. v29}, [Ljava/lang/Object;

    .line 649
    move-result-object v1

    .line 652
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 653
    move-result-object v0

    .line 656
    const-string v21, "PosX"

    .line 657
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 659
    move-result-object v22

    .line 662
    const-string v23, "PosY"

    .line 663
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 665
    move-result-object v24

    .line 668
    const-string v25, "ScaleX"

    .line 669
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 671
    move-result-object v26

    .line 674
    const-string v27, "ScaleY"

    .line 675
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 677
    move-result-object v28

    .line 680
    const-string v29, "leashAlpha"

    .line 681
    const/4 v1, 0x0

    .line 683
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 684
    move-result-object v30

    .line 687
    filled-new-array/range {v21 .. v31}, [Ljava/lang/Object;

    .line 688
    move-result-object v1

    .line 691
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 692
    goto/16 :goto_0

    .line 695
    :cond_4
    if-nez v7, :cond_5

    .line 697
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 699
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 701
    :cond_5
    return v7
    .line 704
.end method

.method private startFullToFreeformAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 23

    .line 1
    move-object/from16 v12, p0

    .line 2
    move-object/from16 v8, p3

    .line 4
    move-object/from16 v10, p4

    .line 6
    const/4 v13, 0x1

    .line 8
    new-array v9, v13, [I

    .line 9
    new-instance v11, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v11}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v14, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v15, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;

    .line 18
    const/4 v7, 0x3

    .line 20
    move-object v0, v15

    .line 21
    move-object/from16 v1, p0

    .line 22
    move-object v2, v9

    .line 24
    move-object v3, v11

    .line 25
    move-object/from16 v4, p2

    .line 26
    move-object/from16 v5, p5

    .line 28
    move-object/from16 v6, p4

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

    .line 32
    move-object v0, v14

    .line 35
    move-object/from16 v1, p1

    .line 36
    move-object/from16 v2, p2

    .line 38
    move-object/from16 v3, p3

    .line 40
    move-object/from16 v4, p4

    .line 42
    move-object v5, v15

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 45
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    aget v2, v9, v1

    .line 52
    add-int/2addr v2, v13

    .line 54
    aput v2, v9, v1

    .line 55
    :cond_0
    move v2, v1

    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 58
    move-result-object v3

    .line 61
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 62
    move-result v3

    .line 65
    const/4 v4, 0x2

    .line 66
    if-ge v2, v3, :cond_3

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 69
    move-result-object v3

    .line 72
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 77
    invoke-virtual {v3, v4}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 79
    move-result v5

    .line 82
    if-eqz v5, :cond_1

    .line 83
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 86
    move-result v5

    .line 89
    const/4 v6, 0x6

    .line 90
    if-ne v5, v6, :cond_2

    .line 91
    const/4 v5, 0x4

    .line 93
    invoke-virtual {v3, v5}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 94
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    move v2, v13

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_0

    .line 104
    :cond_3
    move v2, v1

    .line 105
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 106
    move-result-object v3

    .line 109
    invoke-static {v3, v8, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->handlerFullToFreeLeashStatus(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 113
    move-result-object v2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v2

    .line 120
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v3

    .line 124
    if-eqz v3, :cond_a

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v3

    .line 130
    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 131
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 133
    move-result v5

    .line 136
    and-int/2addr v5, v4

    .line 137
    if-eqz v5, :cond_5

    .line 138
    goto :goto_3

    .line 140
    :cond_5
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 141
    move-result-object v6

    .line 144
    if-eqz v6, :cond_4

    .line 145
    iget v5, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 147
    const/4 v7, -0x1

    .line 149
    if-ne v5, v7, :cond_6

    .line 150
    goto :goto_3

    .line 152
    :cond_6
    iget-object v7, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 153
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v5

    .line 158
    move-object v7, v5

    .line 159
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 160
    iget-object v5, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 162
    iget v14, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 164
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 166
    move-result-object v5

    .line 169
    check-cast v5, Ljava/lang/Float;

    .line 170
    if-eqz v5, :cond_9

    .line 172
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 174
    move-result v14

    .line 177
    const/4 v15, 0x0

    .line 178
    cmpl-float v14, v14, v15

    .line 179
    if-eqz v14, :cond_9

    .line 181
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 183
    move-result-object v14

    .line 186
    if-eqz v14, :cond_9

    .line 187
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 189
    move-result-object v14

    .line 192
    if-eqz v14, :cond_9

    .line 193
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 195
    move-result-object v14

    .line 198
    if-eqz v14, :cond_9

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 201
    move-result-object v14

    .line 204
    if-eqz v14, :cond_9

    .line 205
    if-eqz v7, :cond_9

    .line 207
    aget v2, v9, v1

    .line 209
    add-int/2addr v2, v13

    .line 211
    aput v2, v9, v1

    .line 212
    iget-object v1, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 214
    iget v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 216
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 218
    iget-object v1, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 221
    iget v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 223
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 225
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 228
    move-result-object v14

    .line 231
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 232
    move-result-object v15

    .line 235
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 236
    move-result-object v4

    .line 239
    iget v1, v15, Landroid/graphics/Rect;->left:I

    .line 240
    int-to-float v1, v1

    .line 242
    iget v2, v15, Landroid/graphics/Rect;->top:I

    .line 243
    int-to-float v2, v2

    .line 245
    invoke-virtual {v8, v14, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 246
    if-eqz v0, :cond_7

    .line 249
    const v1, 0x7fffffff

    .line 251
    invoke-virtual {v8, v14, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 254
    iget-object v3, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 257
    iget-object v5, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 259
    iget-object v2, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 261
    move-object v1, v6

    .line 263
    move-object/from16 v16, v2

    .line 264
    move-object v2, v4

    .line 266
    move-object v13, v4

    .line 267
    move-object v4, v5

    .line 268
    move-object/from16 v5, v16

    .line 269
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->adjustFreeformBoundsAfterRotation(Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)F

    .line 271
    move-result v0

    .line 274
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 275
    move-result-object v5

    .line 278
    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 279
    invoke-virtual {v11, v0, v13}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 281
    goto :goto_4

    .line 284
    :cond_7
    move-object v13, v4

    .line 285
    :goto_4
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 286
    move-result v0

    .line 289
    int-to-float v0, v0

    .line 290
    const/high16 v16, 0x3f800000    # 1.0f

    .line 291
    mul-float v0, v0, v16

    .line 293
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 295
    move-result v1

    .line 298
    int-to-float v1, v1

    .line 299
    div-float v7, v0, v1

    .line 300
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 302
    move-result v0

    .line 305
    int-to-float v0, v0

    .line 306
    mul-float v0, v0, v16

    .line 307
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 309
    move-result v1

    .line 312
    int-to-float v1, v1

    .line 313
    div-float v4, v0, v1

    .line 314
    invoke-virtual {v8, v14, v7, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 316
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 319
    move-result v0

    .line 322
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 323
    move-result v1

    .line 326
    invoke-virtual {v8, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 327
    iget v0, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenCornerRadius:F

    .line 330
    invoke-virtual {v8, v14, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 332
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 335
    move-result v0

    .line 338
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 339
    move-result v1

    .line 342
    invoke-virtual {v10, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 343
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 346
    int-to-float v0, v0

    .line 348
    iget v1, v13, Landroid/graphics/Rect;->top:I

    .line 349
    int-to-float v1, v1

    .line 351
    invoke-virtual {v10, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 352
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    .line 355
    move-result v0

    .line 358
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 359
    move-result v1

    .line 362
    invoke-virtual {v10, v14, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 363
    iget v0, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 366
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 368
    move-result v1

    .line 371
    div-float/2addr v0, v1

    .line 372
    invoke-virtual {v10, v14, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 373
    iget-object v0, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 376
    iget-object v1, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 378
    invoke-static {v0, v6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 380
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 383
    move-result v0

    .line 386
    if-eqz v0, :cond_8

    .line 387
    iget-object v0, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 389
    iget-object v1, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 391
    invoke-static {v0, v6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->dtkTrackFullScreenToFreeform(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 393
    :cond_8
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 396
    int-to-float v8, v0

    .line 398
    iget v0, v13, Landroid/graphics/Rect;->top:I

    .line 399
    int-to-float v3, v0

    .line 401
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 402
    move-result v17

    .line 405
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 406
    move-result v18

    .line 409
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 410
    invoke-direct/range {v19 .. v19}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 412
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 415
    move-result v5

    .line 418
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 419
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 421
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 424
    const-string v2, "posX"

    .line 426
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 428
    move-result-object v0

    .line 431
    const-string v2, "posY"

    .line 432
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 434
    move-result-object v0

    .line 437
    const-string v2, "scaleX"

    .line 438
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 440
    move-result-object v0

    .line 443
    const-string v2, "scaleY"

    .line 444
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 446
    move-result-object v2

    .line 449
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;

    .line 450
    move-object/from16 v0, v20

    .line 452
    move-object/from16 v1, p0

    .line 454
    move-object v12, v2

    .line 456
    move-object v2, v14

    .line 457
    move v14, v3

    .line 458
    move-object/from16 v3, v19

    .line 459
    move/from16 v21, v4

    .line 461
    move-object v4, v13

    .line 463
    move v13, v7

    .line 464
    move-object v7, v9

    .line 465
    move/from16 v22, v8

    .line 466
    move-object/from16 v8, p2

    .line 468
    move-object/from16 v9, p5

    .line 470
    move-object/from16 v10, p4

    .line 472
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;FLandroid/app/ActivityManager$RunningTaskInfo;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 474
    filled-new-array/range {v20 .. v20}, [Lmiuix/animation/listener/TransitionListener;

    .line 477
    move-result-object v0

    .line 480
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 481
    move-result-object v11

    .line 484
    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    .line 485
    move-result-object v0

    .line 488
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 489
    move-result-object v0

    .line 492
    const-string v1, "posX"

    .line 493
    iget v2, v15, Landroid/graphics/Rect;->left:I

    .line 495
    int-to-float v2, v2

    .line 497
    mul-float v2, v2, v16

    .line 498
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 500
    move-result-object v2

    .line 503
    const-string v3, "posY"

    .line 504
    iget v4, v15, Landroid/graphics/Rect;->top:I

    .line 506
    int-to-float v4, v4

    .line 508
    mul-float v4, v4, v16

    .line 509
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 511
    move-result-object v4

    .line 514
    const-string v5, "scaleX"

    .line 515
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 517
    move-result-object v6

    .line 520
    const-string v7, "scaleY"

    .line 521
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 523
    move-result-object v8

    .line 526
    const-string v9, "cornerRadius"

    .line 527
    move-object/from16 v12, p0

    .line 529
    iget v10, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenCornerRadius:F

    .line 531
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 533
    move-result-object v10

    .line 536
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    .line 537
    move-result-object v1

    .line 540
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 541
    move-result-object v0

    .line 544
    const-string v1, "posX"

    .line 545
    mul-float v8, v22, v16

    .line 547
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 549
    move-result-object v2

    .line 552
    const-string v3, "posY"

    .line 553
    mul-float v4, v14, v16

    .line 555
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 557
    move-result-object v4

    .line 560
    const-string v5, "scaleX"

    .line 561
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 563
    move-result-object v6

    .line 566
    const-string v7, "scaleY"

    .line 567
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 569
    move-result-object v8

    .line 572
    const-string v9, "cornerRadius"

    .line 573
    iget v10, v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 575
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 577
    move-result-object v10

    .line 580
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 581
    move-result-object v1

    .line 584
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 585
    const/4 v13, 0x1

    .line 588
    goto :goto_5

    .line 589
    :cond_9
    const/4 v13, 0x1

    .line 590
    goto/16 :goto_3

    .line 591
    :cond_a
    move v13, v1

    .line 593
    :goto_5
    return v13
    .line 594
.end method

.method private startFullToSingleAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 28

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v0, p3

    .line 4
    move-object/from16 v7, p4

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_4

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 26
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 28
    move-result v3

    .line 31
    and-int/lit8 v3, v3, 0x2

    .line 32
    if-eqz v3, :cond_1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    move-result-object v3

    .line 40
    invoke-direct {v8, v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->updateEmbeddingTaskFragmentWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 41
    move-result v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    if-eqz v3, :cond_0

    .line 48
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 50
    const/4 v5, -0x1

    .line 52
    if-ne v4, v5, :cond_3

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    iget-object v5, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 61
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 66
    move-result-object v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v4

    .line 75
    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 78
    move-result-object v4

    .line 81
    if-eqz v4, :cond_0

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 84
    move-result-object v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 90
    move-result-object v4

    .line 93
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 94
    move-result-object v1

    .line 97
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 98
    move-result-object v5

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 102
    move-result-object v6

    .line 105
    invoke-virtual {v0, v4, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 106
    const v6, 0x7fffffff

    .line 109
    invoke-virtual {v0, v4, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 112
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 115
    int-to-float v6, v6

    .line 117
    iget v9, v1, Landroid/graphics/Rect;->top:I

    .line 118
    int-to-float v9, v9

    .line 120
    invoke-virtual {v0, v4, v6, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 121
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 124
    move-result v6

    .line 127
    int-to-float v6, v6

    .line 128
    const/high16 v9, 0x3f800000    # 1.0f

    .line 129
    mul-float/2addr v6, v9

    .line 131
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 132
    move-result v10

    .line 135
    int-to-float v10, v10

    .line 136
    div-float v10, v6, v10

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 139
    move-result v6

    .line 142
    int-to-float v6, v6

    .line 143
    mul-float/2addr v6, v9

    .line 144
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 145
    move-result v11

    .line 148
    int-to-float v11, v11

    .line 149
    div-float v11, v6, v11

    .line 150
    invoke-virtual {v0, v4, v10, v11}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 152
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 155
    move-result-object v6

    .line 158
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 159
    move-result v12

    .line 162
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 163
    move-result v13

    .line 166
    invoke-virtual {v0, v6, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 167
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 170
    move-result-object v0

    .line 173
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 174
    move-result v6

    .line 177
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 178
    move-result v12

    .line 181
    invoke-virtual {v7, v0, v6, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 182
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 185
    move-result-object v0

    .line 188
    iget v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 189
    invoke-virtual {v7, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 191
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 194
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 196
    invoke-static {v0, v2, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterSingleOpenByControl(Landroid/content/Context;Lcom/android/wm/shell/sosc/SoScSplitScreenController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 198
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 201
    int-to-float v0, v0

    .line 203
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 204
    move-result v2

    .line 207
    int-to-float v2, v2

    .line 208
    const/high16 v3, 0x40000000    # 2.0f

    .line 209
    div-float/2addr v2, v3

    .line 211
    add-float v12, v2, v0

    .line 212
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 214
    int-to-float v0, v0

    .line 216
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 217
    move-result v1

    .line 220
    int-to-float v1, v1

    .line 221
    div-float/2addr v1, v3

    .line 222
    add-float v13, v1, v0

    .line 223
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 225
    int-to-float v0, v0

    .line 227
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 228
    move-result v1

    .line 231
    int-to-float v1, v1

    .line 232
    div-float/2addr v1, v3

    .line 233
    add-float v14, v1, v0

    .line 234
    iget v0, v5, Landroid/graphics/Rect;->top:I

    .line 236
    int-to-float v0, v0

    .line 238
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 239
    move-result v1

    .line 242
    int-to-float v1, v1

    .line 243
    div-float/2addr v1, v3

    .line 244
    add-float v15, v1, v0

    .line 245
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 247
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 249
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 252
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 254
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 257
    const-string v2, "posX"

    .line 259
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 261
    move-result-object v0

    .line 264
    const-string v2, "posY"

    .line 265
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 267
    move-result-object v0

    .line 270
    const-string v2, "scaleX"

    .line 271
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 273
    move-result-object v0

    .line 276
    const-string v2, "scaleY"

    .line 277
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 279
    move-result-object v6

    .line 282
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$10;

    .line 283
    move-object/from16 v0, v17

    .line 285
    move-object/from16 v1, p0

    .line 287
    move-object v2, v4

    .line 289
    move-object/from16 v3, v16

    .line 290
    move-object v4, v5

    .line 292
    move-object/from16 v5, p2

    .line 293
    move-object v9, v6

    .line 295
    move-object/from16 v6, p5

    .line 296
    move-object/from16 v7, p4

    .line 298
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$10;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 300
    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/listener/TransitionListener;

    .line 303
    move-result-object v0

    .line 306
    invoke-virtual {v9, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 307
    move-result-object v27

    .line 310
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 311
    move-result-object v0

    .line 314
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 315
    move-result-object v0

    .line 318
    const-string v16, "posX"

    .line 319
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 321
    move-result-object v17

    .line 324
    const-string v18, "posY"

    .line 325
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    move-result-object v19

    .line 330
    const-string v20, "scaleX"

    .line 331
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v21

    .line 336
    const-string v22, "scaleY"

    .line 337
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    move-result-object v23

    .line 342
    const-string v24, "cornerRadius"

    .line 343
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenCornerRadius:F

    .line 345
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 347
    move-result-object v25

    .line 350
    filled-new-array/range {v16 .. v25}, [Ljava/lang/Object;

    .line 351
    move-result-object v1

    .line 354
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 355
    move-result-object v0

    .line 358
    const-string v17, "posX"

    .line 359
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 361
    move-result-object v18

    .line 364
    const-string v19, "posY"

    .line 365
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 367
    move-result-object v20

    .line 370
    const-string v21, "scaleX"

    .line 371
    const/high16 v1, 0x3f800000    # 1.0f

    .line 373
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    move-result-object v22

    .line 378
    const-string v23, "scaleY"

    .line 379
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 381
    move-result-object v24

    .line 384
    const-string v25, "cornerRadius"

    .line 385
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 387
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 389
    move-result-object v26

    .line 392
    filled-new-array/range {v17 .. v27}, [Ljava/lang/Object;

    .line 393
    move-result-object v1

    .line 396
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 397
    const/4 v0, 0x1

    .line 400
    goto :goto_1

    .line 401
    :cond_4
    const/4 v0, 0x0

    .line 402
    :goto_1
    if-nez v0, :cond_5

    .line 403
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 405
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchEnd()V

    .line 407
    :cond_5
    return v0
    .line 410
.end method

.method private startOpenWindowFromFullscreenAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 22

    .line 1
    move-object/from16 v14, p0

    .line 2
    move-object/from16 v15, p3

    .line 4
    move-object/from16 v13, p4

    .line 6
    const/4 v12, 0x1

    .line 8
    new-array v11, v12, [I

    .line 9
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda6;

    .line 11
    move-object/from16 v0, v16

    .line 13
    move-object/from16 v1, p0

    .line 15
    move-object v2, v11

    .line 17
    move-object/from16 v3, p2

    .line 18
    move-object/from16 v4, p5

    .line 20
    move-object/from16 v5, p4

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 27
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v17

    .line 34
    const/4 v0, 0x0

    .line 35
    move-object v10, v0

    .line 36
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz v0, :cond_6

    .line 42
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 48
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 50
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopRoot()Landroid/window/WindowContainerToken;

    .line 52
    move-result-object v2

    .line 55
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 56
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 63
    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {v15, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 72
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v15, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    move-object/from16 v20, v10

    .line 82
    move-object/from16 v18, v11

    .line 84
    move/from16 v21, v12

    .line 86
    goto/16 :goto_3

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 90
    move-result v2

    .line 93
    if-eq v2, v12, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 96
    move-result v2

    .line 99
    const/4 v4, 0x3

    .line 100
    if-ne v2, v4, :cond_3

    .line 101
    :cond_1
    if-eq v0, v10, :cond_3

    .line 103
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 105
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 107
    move-result-object v2

    .line 110
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 111
    move-result-object v4

    .line 114
    invoke-virtual {v2, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v2

    .line 118
    if-nez v2, :cond_2

    .line 119
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 121
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 123
    move-result-object v2

    .line 126
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 127
    move-result-object v4

    .line 130
    invoke-virtual {v2, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    :cond_2
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 137
    move-result-object v2

    .line 140
    invoke-virtual {v15, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 141
    new-instance v4, Landroid/graphics/RectF;

    .line 144
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 146
    move-result-object v2

    .line 149
    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 150
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 153
    move-result v2

    .line 156
    const/high16 v3, 0x40800000    # 4.0f

    .line 157
    div-float/2addr v2, v3

    .line 159
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 160
    move-result v5

    .line 163
    div-float/2addr v5, v3

    .line 164
    new-instance v3, Landroid/graphics/RectF;

    .line 165
    iget v6, v4, Landroid/graphics/RectF;->left:F

    .line 167
    add-float/2addr v6, v2

    .line 169
    iget v7, v4, Landroid/graphics/RectF;->top:F

    .line 170
    add-float/2addr v7, v5

    .line 172
    iget v8, v4, Landroid/graphics/RectF;->right:F

    .line 173
    sub-float/2addr v8, v2

    .line 175
    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 176
    sub-float/2addr v2, v5

    .line 178
    invoke-direct {v3, v6, v7, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 179
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 182
    move-result-object v2

    .line 185
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 186
    move-result v5

    .line 189
    float-to-int v5, v5

    .line 190
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 191
    move-result v6

    .line 194
    float-to-int v6, v6

    .line 195
    invoke-virtual {v15, v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 196
    aget v2, v11, v1

    .line 199
    add-int/2addr v2, v12

    .line 201
    aput v2, v11, v1

    .line 202
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 204
    move-result-object v1

    .line 207
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 208
    move-result v0

    .line 211
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 212
    move-result v2

    .line 215
    div-float v5, v0, v2

    .line 216
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 218
    move-result v0

    .line 221
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 222
    move-result v2

    .line 225
    div-float v6, v0, v2

    .line 226
    const/high16 v7, 0x3f800000    # 1.0f

    .line 228
    const/high16 v8, 0x3f800000    # 1.0f

    .line 230
    const/4 v9, 0x0

    .line 232
    const/high16 v18, 0x3f800000    # 1.0f

    .line 233
    iget v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 235
    move-object/from16 v0, p0

    .line 237
    move/from16 v19, v2

    .line 239
    move-object/from16 v2, p3

    .line 241
    move-object/from16 v20, v10

    .line 243
    move/from16 v10, v18

    .line 245
    move-object/from16 v18, v11

    .line 247
    move/from16 v11, v19

    .line 249
    move/from16 v21, v12

    .line 251
    move/from16 v12, v19

    .line 253
    move-object v14, v13

    .line 255
    move-object/from16 v13, v16

    .line 256
    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFFFLjava/lang/Runnable;)V

    .line 258
    goto/16 :goto_2

    .line 261
    :cond_3
    move-object/from16 v20, v10

    .line 263
    move-object/from16 v18, v11

    .line 265
    move/from16 v21, v12

    .line 267
    move-object v14, v13

    .line 269
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 270
    move-result v2

    .line 273
    const/4 v4, 0x6

    .line 274
    if-ne v2, v4, :cond_5

    .line 275
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 277
    move-result-object v2

    .line 280
    if-eqz v2, :cond_4

    .line 281
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 283
    move-result-object v2

    .line 286
    move-object/from16 v13, p2

    .line 287
    invoke-virtual {v13, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 289
    move-result-object v10

    .line 292
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 293
    move-result-object v2

    .line 296
    invoke-virtual {v15, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 297
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 300
    move-result-object v2

    .line 303
    invoke-virtual {v15, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 304
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 307
    move-result-object v2

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 311
    move-result-object v3

    .line 314
    invoke-virtual {v15, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 315
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 318
    move-result-object v2

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 322
    move-result-object v3

    .line 325
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 326
    move-result v3

    .line 329
    mul-int/lit8 v3, v3, 0x2

    .line 330
    add-int/lit8 v3, v3, 0x2

    .line 332
    invoke-virtual {v15, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 334
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 337
    move-result-object v2

    .line 340
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 341
    move-result-object v3

    .line 344
    invoke-virtual {v14, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 345
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 348
    move-result-object v2

    .line 351
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 352
    move-result-object v3

    .line 355
    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 356
    int-to-float v3, v3

    .line 358
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 359
    move-result-object v4

    .line 362
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 363
    int-to-float v4, v4

    .line 365
    invoke-virtual {v14, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 366
    move-object/from16 v20, v10

    .line 369
    goto :goto_1

    .line 371
    :cond_4
    move-object/from16 v13, p2

    .line 372
    :goto_1
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 374
    move-result-object v2

    .line 377
    invoke-virtual {v15, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 378
    new-instance v3, Landroid/graphics/RectF;

    .line 381
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 383
    move-result-object v2

    .line 386
    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 387
    new-instance v4, Landroid/graphics/RectF;

    .line 390
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 392
    move-result-object v2

    .line 395
    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 396
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 399
    move-result-object v2

    .line 402
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 403
    move-result v5

    .line 406
    float-to-int v5, v5

    .line 407
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 408
    move-result v6

    .line 411
    float-to-int v6, v6

    .line 412
    invoke-virtual {v15, v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 413
    aget v2, v18, v1

    .line 416
    add-int/lit8 v2, v2, 0x1

    .line 418
    aput v2, v18, v1

    .line 420
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 422
    move-result-object v1

    .line 425
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 426
    move-result v0

    .line 429
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 430
    move-result v2

    .line 433
    div-float v5, v0, v2

    .line 434
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 436
    move-result v0

    .line 439
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 440
    move-result v2

    .line 443
    div-float v6, v0, v2

    .line 444
    const/high16 v7, 0x3f800000    # 1.0f

    .line 446
    const/high16 v8, 0x3f800000    # 1.0f

    .line 448
    const/high16 v9, 0x3f800000    # 1.0f

    .line 450
    const/high16 v10, 0x3f800000    # 1.0f

    .line 452
    move-object/from16 v14, p0

    .line 454
    iget v11, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFullScreenCornerRadius:F

    .line 456
    iget v12, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 458
    move-object/from16 v0, p0

    .line 460
    move-object/from16 v2, p3

    .line 462
    move-object/from16 v13, v16

    .line 464
    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFFFLjava/lang/Runnable;)V

    .line 466
    goto :goto_3

    .line 469
    :cond_5
    :goto_2
    move-object/from16 v14, p0

    .line 470
    :goto_3
    move-object/from16 v10, v20

    .line 472
    move-object/from16 v13, p4

    .line 474
    move-object/from16 v11, v18

    .line 476
    move/from16 v12, v21

    .line 478
    goto/16 :goto_0

    .line 480
    :cond_6
    move-object/from16 v18, v11

    .line 482
    move/from16 v21, v12

    .line 484
    aget v0, v18, v1

    .line 486
    if-lez v0, :cond_7

    .line 488
    move/from16 v12, v21

    .line 490
    goto :goto_4

    .line 492
    :cond_7
    move v12, v1

    .line 493
    :goto_4
    return v12
    .line 494
.end method

.method private startOpenWindowFromSingleOpenAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 20

    .line 1
    move-object/from16 v14, p0

    .line 2
    move-object/from16 v15, p2

    .line 4
    move-object/from16 v13, p3

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v16

    .line 15
    const/4 v12, 0x0

    .line 16
    move v0, v12

    .line 17
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_6

    .line 22
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 28
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 30
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTopRoot()Landroid/window/WindowContainerToken;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 36
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 46
    move-result-object v2

    .line 49
    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual {v13, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 52
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 55
    move-result-object v1

    .line 58
    invoke-virtual {v13, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    goto :goto_1

    .line 62
    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 63
    move-result v2

    .line 66
    const/4 v11, 0x1

    .line 67
    if-eq v2, v11, :cond_1

    .line 68
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 70
    move-result v2

    .line 73
    const/4 v3, 0x3

    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    :cond_1
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 77
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 83
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v2

    .line 90
    if-nez v2, :cond_5

    .line 91
    iget-object v2, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 93
    invoke-virtual {v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 95
    move-result-object v2

    .line 98
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 99
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    goto :goto_2

    .line 109
    :cond_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 110
    move-result v2

    .line 113
    const/4 v3, 0x2

    .line 114
    if-eq v2, v3, :cond_3

    .line 115
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 117
    move-result v2

    .line 120
    const/4 v4, 0x4

    .line 121
    if-ne v2, v4, :cond_4

    .line 122
    :cond_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 124
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 128
    move-result v2

    .line 131
    if-ne v2, v3, :cond_4

    .line 132
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 134
    move-result-object v1

    .line 137
    invoke-virtual {v13, v1, v12}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 138
    :cond_4
    :goto_1
    move-object v14, v13

    .line 141
    goto/16 :goto_3

    .line 142
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 144
    move-result-object v0

    .line 147
    invoke-virtual {v13, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 148
    new-instance v4, Landroid/graphics/RectF;

    .line 151
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 153
    move-result-object v0

    .line 156
    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 160
    move-result v0

    .line 163
    const/high16 v2, 0x40800000    # 4.0f

    .line 164
    div-float/2addr v0, v2

    .line 166
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 167
    move-result v3

    .line 170
    div-float/2addr v3, v2

    .line 171
    new-instance v5, Landroid/graphics/RectF;

    .line 172
    iget v2, v4, Landroid/graphics/RectF;->left:F

    .line 174
    add-float/2addr v2, v0

    .line 176
    iget v6, v4, Landroid/graphics/RectF;->top:F

    .line 177
    add-float/2addr v6, v3

    .line 179
    iget v7, v4, Landroid/graphics/RectF;->right:F

    .line 180
    sub-float/2addr v7, v0

    .line 182
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    .line 183
    sub-float/2addr v0, v3

    .line 185
    invoke-direct {v5, v2, v6, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 186
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 189
    move-result-object v0

    .line 192
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 193
    move-result v2

    .line 196
    float-to-int v2, v2

    .line 197
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 198
    move-result v3

    .line 201
    float-to-int v3, v3

    .line 202
    invoke-virtual {v13, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 203
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 206
    move-result-object v1

    .line 209
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 210
    move-result v0

    .line 213
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 214
    move-result v2

    .line 217
    div-float v6, v0, v2

    .line 218
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 220
    move-result v0

    .line 223
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 224
    move-result v2

    .line 227
    div-float v7, v0, v2

    .line 228
    const/high16 v8, 0x3f800000    # 1.0f

    .line 230
    const/high16 v9, 0x3f800000    # 1.0f

    .line 232
    const/high16 v17, 0x3f800000    # 1.0f

    .line 234
    iget v3, v14, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 236
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;

    .line 238
    move-object/from16 v0, p4

    .line 240
    move-object/from16 v10, p5

    .line 242
    invoke-direct {v2, v14, v15, v10, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 244
    move-object/from16 v0, p0

    .line 247
    move-object/from16 v18, v2

    .line 249
    move-object/from16 v2, p3

    .line 251
    move/from16 v19, v3

    .line 253
    move-object v3, v5

    .line 255
    move v5, v6

    .line 256
    move v6, v7

    .line 257
    move v7, v8

    .line 258
    move v8, v9

    .line 259
    const/4 v9, 0x0

    .line 260
    move/from16 v10, v17

    .line 261
    move/from16 v17, v11

    .line 263
    move/from16 v11, v19

    .line 265
    move/from16 v12, v19

    .line 267
    move-object v14, v13

    .line 269
    move-object/from16 v13, v18

    .line 270
    invoke-direct/range {v0 .. v13}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFFFLjava/lang/Runnable;)V

    .line 272
    move/from16 v0, v17

    .line 275
    :goto_3
    move-object v13, v14

    .line 277
    const/4 v12, 0x0

    .line 278
    move-object/from16 v14, p0

    .line 279
    goto/16 :goto_0

    .line 281
    :cond_6
    move v1, v12

    .line 283
    move-object v14, v13

    .line 284
    invoke-virtual {v15, v1}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 285
    move-result-object v2

    .line 288
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 289
    move-result-object v2

    .line 292
    invoke-virtual {v14, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 293
    return v0
    .line 296
.end method

.method private startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFFFLjava/lang/Runnable;)V
    .locals 20

    .line 1
    move-object/from16 v3, p1

    .line 2
    move-object/from16 v0, p2

    .line 4
    move-object/from16 v6, p3

    .line 6
    move-object/from16 v7, p4

    .line 8
    iget v1, v6, Landroid/graphics/RectF;->left:F

    .line 10
    iget v2, v6, Landroid/graphics/RectF;->top:F

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 14
    move/from16 v8, p5

    .line 17
    move/from16 v9, p6

    .line 19
    invoke-virtual {v0, v3, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 21
    move/from16 v10, p9

    .line 24
    invoke-virtual {v0, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 26
    new-instance v11, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 29
    invoke-direct {v11}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 31
    move-object/from16 v1, p0

    .line 34
    iget-object v0, v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 36
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 38
    move-result-object v2

    .line 41
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 42
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 44
    const/4 v4, 0x1

    .line 47
    new-array v4, v4, [F

    .line 48
    const/4 v5, 0x0

    .line 50
    const/high16 v12, 0x43160000    # 150.0f

    .line 51
    aput v12, v4, v5

    .line 53
    const/16 v5, 0x10

    .line 55
    invoke-virtual {v0, v5, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 61
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 63
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 65
    sget-object v5, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 68
    const-string v12, "scaleX"

    .line 70
    invoke-virtual {v4, v12, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 72
    move-result-object v4

    .line 75
    const-string v12, "scaleY"

    .line 76
    invoke-virtual {v4, v12, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 78
    move-result-object v4

    .line 81
    const-string v12, "posX"

    .line 82
    invoke-virtual {v4, v12, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 84
    move-result-object v4

    .line 87
    const-string v12, "posY"

    .line 88
    invoke-virtual {v4, v12, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 90
    move-result-object v4

    .line 93
    const-string v5, "leashAlpha"

    .line 94
    invoke-virtual {v4, v5, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 96
    move-result-object v12

    .line 99
    new-instance v13, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$26;

    .line 100
    move-object v0, v13

    .line 102
    move-object v4, v11

    .line 103
    move-object/from16 v5, p13

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$26;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Ljava/lang/Runnable;)V

    .line 106
    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    .line 109
    move-result-object v0

    .line 112
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 113
    move-result-object v0

    .line 116
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 120
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 121
    move-result-object v1

    .line 124
    const-string v2, "posX"

    .line 125
    iget v3, v6, Landroid/graphics/RectF;->left:F

    .line 127
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v3

    .line 132
    const-string v4, "posY"

    .line 133
    iget v5, v6, Landroid/graphics/RectF;->top:F

    .line 135
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 137
    move-result-object v11

    .line 140
    const-string v12, "scaleX"

    .line 141
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    move-result-object v13

    .line 146
    const-string v14, "scaleY"

    .line 147
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v15

    .line 152
    const-string v16, "leashAlpha"

    .line 153
    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 155
    move-result-object v17

    .line 158
    const-string v18, "cornerRadius"

    .line 159
    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v19

    .line 164
    move-object v8, v2

    .line 165
    move-object v9, v3

    .line 166
    move-object v10, v4

    .line 167
    filled-new-array/range {v8 .. v19}, [Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 171
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 172
    move-result-object v1

    .line 175
    const-string v2, "posX"

    .line 176
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 178
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    move-result-object v3

    .line 183
    const-string v4, "posY"

    .line 184
    iget v5, v7, Landroid/graphics/RectF;->top:F

    .line 186
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 188
    move-result-object v5

    .line 191
    const-string v6, "scaleX"

    .line 192
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 194
    move-result-object v7

    .line 197
    const-string v8, "scaleY"

    .line 198
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    move-result-object v9

    .line 203
    const-string v10, "leashAlpha"

    .line 204
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v11

    .line 209
    const-string v12, "cornerRadius"

    .line 210
    invoke-static/range {p12 .. p12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 212
    move-result-object v13

    .line 215
    move-object/from16 p0, v2

    .line 216
    move-object/from16 p1, v3

    .line 218
    move-object/from16 p2, v4

    .line 220
    move-object/from16 p3, v5

    .line 222
    move-object/from16 p4, v6

    .line 224
    move-object/from16 p5, v7

    .line 226
    move-object/from16 p6, v8

    .line 228
    move-object/from16 p7, v9

    .line 230
    move-object/from16 p8, v10

    .line 232
    move-object/from16 p9, v11

    .line 234
    move-object/from16 p10, v12

    .line 236
    move-object/from16 p11, v13

    .line 238
    move-object/from16 p12, v0

    .line 240
    filled-new-array/range {p0 .. p12}, [Ljava/lang/Object;

    .line 242
    move-result-object v0

    .line 245
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 246
    return-void
    .line 249
.end method

.method private startSingleOpenToFreeformAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 39

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
    iget-object v8, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;

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
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

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
    if-eqz v1, :cond_6

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
    if-eqz v6, :cond_5

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
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

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
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 123
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 125
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v2

    .line 130
    check-cast v2, Ljava/lang/Float;

    .line 131
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 133
    move-result-object v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 139
    move-result-object v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 145
    move-result-object v3

    .line 148
    if-eqz v3, :cond_5

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 151
    move-result-object v3

    .line 154
    if-eqz v3, :cond_5

    .line 155
    if-eqz v7, :cond_5

    .line 157
    if-eqz v2, :cond_5

    .line 159
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 161
    move-result v3

    .line 164
    const/4 v4, 0x0

    .line 165
    cmpl-float v3, v3, v4

    .line 166
    if-eqz v3, :cond_5

    .line 168
    aget v0, v15, v17

    .line 170
    add-int/2addr v0, v14

    .line 172
    aput v0, v15, v17

    .line 173
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 175
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 177
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 182
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 184
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 186
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 189
    move-result-object v8

    .line 192
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 193
    move-result-object v9

    .line 196
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 197
    move-result-object v5

    .line 200
    if-eqz v16, :cond_4

    .line 201
    const v0, 0x7fffffff

    .line 203
    invoke-virtual {v12, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 206
    iget-object v3, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 209
    iget-object v4, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 211
    iget-object v2, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 213
    move-object/from16 v0, v16

    .line 215
    move-object v1, v6

    .line 217
    move-object/from16 v19, v2

    .line 218
    move-object v2, v5

    .line 220
    move-object v14, v5

    .line 221
    move-object/from16 v5, v19

    .line 222
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->adjustFreeformBoundsAfterRotation(Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)F

    .line 224
    move-result v0

    .line 227
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 228
    move-result-object v2

    .line 231
    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 232
    invoke-virtual {v10, v0, v14}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 234
    goto :goto_1

    .line 237
    :cond_4
    move-object v14, v5

    .line 238
    :goto_1
    move-object v7, v2

    .line 239
    iget v0, v9, Landroid/graphics/Rect;->left:I

    .line 240
    int-to-float v0, v0

    .line 242
    iget v1, v9, Landroid/graphics/Rect;->top:I

    .line 243
    int-to-float v1, v1

    .line 245
    invoke-virtual {v12, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 246
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 249
    move-result v0

    .line 252
    int-to-float v0, v0

    .line 253
    const/high16 v19, 0x3f800000    # 1.0f

    .line 254
    mul-float v0, v0, v19

    .line 256
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 258
    move-result v1

    .line 261
    int-to-float v1, v1

    .line 262
    div-float v5, v0, v1

    .line 263
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    .line 265
    move-result v0

    .line 268
    int-to-float v0, v0

    .line 269
    mul-float v0, v0, v19

    .line 270
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 272
    move-result v1

    .line 275
    int-to-float v1, v1

    .line 276
    div-float v4, v0, v1

    .line 277
    invoke-virtual {v12, v8, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 279
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 282
    move-result v0

    .line 285
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 286
    move-result v1

    .line 289
    invoke-virtual {v12, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 290
    iget-object v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 293
    iget-object v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 295
    invoke-static {v0, v6, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 297
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 300
    move-result v2

    .line 303
    const/4 v3, 0x0

    .line 304
    const/4 v6, 0x0

    .line 305
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 306
    move-result v20

    .line 309
    move-object/from16 v0, p4

    .line 310
    move-object v1, v8

    .line 312
    move/from16 v21, v4

    .line 313
    move v4, v6

    .line 315
    move/from16 v22, v5

    .line 316
    move/from16 v5, v20

    .line 318
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 320
    iget v0, v14, Landroid/graphics/Rect;->left:I

    .line 323
    int-to-float v0, v0

    .line 325
    iget v1, v14, Landroid/graphics/Rect;->top:I

    .line 326
    int-to-float v1, v1

    .line 328
    invoke-virtual {v13, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 329
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 332
    move-result v0

    .line 335
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 336
    move-result v1

    .line 339
    invoke-virtual {v13, v8, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 340
    iget v0, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 343
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 345
    move-result v1

    .line 348
    div-float/2addr v0, v1

    .line 349
    invoke-virtual {v13, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 350
    iget v0, v14, Landroid/graphics/Rect;->left:I

    .line 353
    int-to-float v6, v0

    .line 355
    iget v0, v14, Landroid/graphics/Rect;->top:I

    .line 356
    int-to-float v5, v0

    .line 358
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 359
    move-result v20

    .line 362
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 363
    move-result v23

    .line 366
    new-instance v24, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 367
    invoke-direct/range {v24 .. v24}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 369
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 372
    move-result v7

    .line 375
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 376
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 378
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 381
    const-string v2, "posX"

    .line 383
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 385
    move-result-object v0

    .line 388
    const-string v2, "posY"

    .line 389
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 391
    move-result-object v0

    .line 394
    const-string v2, "scaleX"

    .line 395
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 397
    move-result-object v0

    .line 400
    const-string v2, "scaleY"

    .line 401
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 403
    move-result-object v4

    .line 406
    new-instance v25, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$7;

    .line 407
    move-object/from16 v0, v25

    .line 409
    move-object/from16 v1, p0

    .line 411
    move-object v2, v8

    .line 413
    move-object/from16 v3, v24

    .line 414
    move-object v8, v4

    .line 416
    move-object v4, v14

    .line 417
    move v14, v5

    .line 418
    move v5, v7

    .line 419
    move/from16 v26, v6

    .line 420
    move-object v6, v15

    .line 422
    move-object/from16 v7, p2

    .line 423
    move-object v12, v8

    .line 425
    move-object/from16 v8, p5

    .line 426
    move-object v13, v9

    .line 428
    move-object/from16 v9, p4

    .line 429
    move-object/from16 v27, v10

    .line 431
    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$7;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;F[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 433
    filled-new-array/range {v25 .. v25}, [Lmiuix/animation/listener/TransitionListener;

    .line 436
    move-result-object v0

    .line 439
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 440
    move-result-object v38

    .line 443
    filled-new-array/range {v24 .. v24}, [Ljava/lang/Object;

    .line 444
    move-result-object v0

    .line 447
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 448
    move-result-object v0

    .line 451
    const-string v1, "posX"

    .line 452
    iget v2, v13, Landroid/graphics/Rect;->left:I

    .line 454
    int-to-float v2, v2

    .line 456
    mul-float v2, v2, v19

    .line 457
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v2

    .line 462
    const-string v3, "posY"

    .line 463
    iget v4, v13, Landroid/graphics/Rect;->top:I

    .line 465
    int-to-float v4, v4

    .line 467
    mul-float v4, v4, v19

    .line 468
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 470
    move-result-object v4

    .line 473
    const-string v5, "scaleX"

    .line 474
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    move-result-object v6

    .line 479
    const-string v7, "scaleY"

    .line 480
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 482
    move-result-object v8

    .line 485
    const-string v9, "cornerRadius"

    .line 486
    iget v10, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 488
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 490
    move-result-object v10

    .line 493
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    .line 494
    move-result-object v1

    .line 497
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 498
    move-result-object v0

    .line 501
    const-string v28, "posX"

    .line 502
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 504
    move-result-object v29

    .line 507
    const-string v30, "posY"

    .line 508
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 510
    move-result-object v31

    .line 513
    const-string v32, "ScaleX"

    .line 514
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    move-result-object v33

    .line 519
    const-string v34, "ScaleY"

    .line 520
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 522
    move-result-object v35

    .line 525
    const-string v36, "cornerRadius"

    .line 526
    iget v1, v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 528
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 530
    move-result-object v37

    .line 533
    filled-new-array/range {v28 .. v38}, [Ljava/lang/Object;

    .line 534
    move-result-object v1

    .line 537
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 538
    const/4 v0, 0x1

    .line 541
    goto :goto_3

    .line 542
    :cond_5
    :goto_2
    move-object/from16 v27, v10

    .line 543
    :goto_3
    move-object/from16 v12, p3

    .line 545
    move-object/from16 v13, p4

    .line 547
    move-object/from16 v10, v27

    .line 549
    const/4 v14, 0x1

    .line 551
    goto/16 :goto_0

    .line 552
    :cond_6
    return v0
    .line 554
.end method

.method private startSingleOpenToFullAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 27

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p3

    .line 4
    const/4 v12, 0x1

    .line 6
    new-array v13, v12, [I

    .line 7
    new-instance v14, Landroid/window/WindowContainerTransaction;

    .line 9
    invoke-direct {v14}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 11
    iget-object v8, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 14
    new-instance v9, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;

    .line 16
    const/4 v7, 0x2

    .line 18
    move-object v0, v9

    .line 19
    move-object/from16 v1, p0

    .line 20
    move-object v2, v13

    .line 22
    move-object v3, v14

    .line 23
    move-object/from16 v4, p2

    .line 24
    move-object/from16 v5, p5

    .line 26
    move-object/from16 v6, p4

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;[ILandroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;I)V

    .line 30
    move-object v0, v8

    .line 33
    move-object/from16 v1, p1

    .line 34
    move-object/from16 v2, p2

    .line 36
    move-object/from16 v3, p3

    .line 38
    move-object/from16 v4, p4

    .line 40
    move-object v5, v9

    .line 42
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dispatchRotationAnimation(Lcom/android/wm/shell/transition/Transitions;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)Landroid/window/TransitionInfo$Change;

    .line 43
    move-result-object v15

    .line 46
    const/16 v16, 0x0

    .line 47
    if-eqz v15, :cond_0

    .line 49
    aget v0, v13, v16

    .line 51
    add-int/2addr v0, v12

    .line 53
    aput v0, v13, v16

    .line 54
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 56
    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v17

    .line 63
    move/from16 v0, v16

    .line 64
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v1

    .line 69
    if-eqz v1, :cond_8

    .line 70
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 75
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 76
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 78
    move-result v2

    .line 81
    and-int/lit8 v2, v2, 0x2

    .line 82
    if-eqz v2, :cond_1

    .line 84
    goto/16 :goto_1

    .line 86
    :cond_1
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 88
    move-result-object v2

    .line 91
    invoke-direct {v10, v11, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->updateEmbeddingTaskFragmentWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 92
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    goto/16 :goto_1

    .line 98
    :cond_2
    if-eqz v2, :cond_7

    .line 100
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 102
    const/4 v4, -0x1

    .line 104
    if-ne v3, v4, :cond_3

    .line 105
    goto/16 :goto_1

    .line 107
    :cond_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 109
    move-result v3

    .line 112
    const/4 v4, 0x6

    .line 113
    if-eq v3, v4, :cond_4

    .line 114
    goto/16 :goto_1

    .line 116
    :cond_4
    iget-object v3, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 118
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 120
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v3

    .line 125
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 126
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 128
    move-result-object v4

    .line 131
    if-eqz v4, :cond_6

    .line 132
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 134
    move-result-object v4

    .line 137
    if-eqz v4, :cond_6

    .line 138
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 140
    move-result-object v4

    .line 143
    if-eqz v4, :cond_6

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 146
    move-result-object v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    if-eqz v3, :cond_6

    .line 152
    aget v0, v13, v16

    .line 154
    add-int/2addr v0, v12

    .line 156
    aput v0, v13, v16

    .line 157
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 159
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 161
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 163
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 166
    move-result-object v2

    .line 169
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 170
    move-result-object v0

    .line 173
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 174
    move-result-object v4

    .line 177
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 178
    int-to-float v5, v5

    .line 180
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 181
    int-to-float v6, v6

    .line 183
    invoke-virtual {v11, v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 184
    if-eqz v15, :cond_5

    .line 187
    const v5, 0x7fffffff

    .line 189
    invoke-virtual {v11, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 192
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 195
    invoke-virtual {v14, v3, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 197
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 200
    move-result v3

    .line 203
    int-to-float v3, v3

    .line 204
    const/high16 v18, 0x3f800000    # 1.0f

    .line 205
    mul-float v3, v3, v18

    .line 207
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 209
    move-result v5

    .line 212
    int-to-float v5, v5

    .line 213
    div-float v9, v3, v5

    .line 214
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 216
    move-result v3

    .line 219
    int-to-float v3, v3

    .line 220
    mul-float v3, v3, v18

    .line 221
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 223
    move-result v5

    .line 226
    int-to-float v5, v5

    .line 227
    div-float v8, v3, v5

    .line 228
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 230
    move-result-object v1

    .line 233
    invoke-virtual {v11, v1, v9, v8}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 234
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 237
    move-result v1

    .line 240
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 241
    move-result v3

    .line 244
    invoke-virtual {v11, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 245
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 248
    int-to-float v1, v1

    .line 250
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 251
    move-result v3

    .line 254
    int-to-float v3, v3

    .line 255
    const/high16 v5, 0x40000000    # 2.0f

    .line 256
    div-float/2addr v3, v5

    .line 258
    add-float v19, v3, v1

    .line 259
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 261
    int-to-float v1, v1

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 264
    move-result v0

    .line 267
    int-to-float v0, v0

    .line 268
    div-float/2addr v0, v5

    .line 269
    add-float v20, v0, v1

    .line 270
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 272
    int-to-float v0, v0

    .line 274
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 275
    move-result v1

    .line 278
    int-to-float v1, v1

    .line 279
    div-float/2addr v1, v5

    .line 280
    add-float v21, v1, v0

    .line 281
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 283
    int-to-float v0, v0

    .line 285
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 286
    move-result v1

    .line 289
    int-to-float v1, v1

    .line 290
    div-float/2addr v1, v5

    .line 291
    add-float v22, v1, v0

    .line 292
    new-instance v23, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 294
    invoke-direct/range {v23 .. v23}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 296
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 299
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 301
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 304
    const-string v3, "posX"

    .line 306
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 308
    move-result-object v0

    .line 311
    const-string v3, "posY"

    .line 312
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 314
    move-result-object v0

    .line 317
    const-string v3, "scaleX"

    .line 318
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 320
    move-result-object v0

    .line 323
    const-string v3, "scaleY"

    .line 324
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 326
    move-result-object v7

    .line 329
    new-instance v24, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$4;

    .line 330
    move-object/from16 v0, v24

    .line 332
    move-object/from16 v1, p0

    .line 334
    move-object/from16 v3, v23

    .line 336
    move-object v5, v13

    .line 338
    move-object/from16 v6, p2

    .line 339
    move-object v12, v7

    .line 341
    move-object/from16 v7, p5

    .line 342
    move/from16 v25, v8

    .line 344
    move-object/from16 v8, p4

    .line 346
    move/from16 v26, v9

    .line 348
    move-object v9, v14

    .line 350
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$4;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;[ILandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 351
    filled-new-array/range {v24 .. v24}, [Lmiuix/animation/listener/TransitionListener;

    .line 354
    move-result-object v0

    .line 357
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 358
    move-result-object v9

    .line 361
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    .line 362
    move-result-object v0

    .line 365
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 366
    move-result-object v0

    .line 369
    const-string v1, "posX"

    .line 370
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 372
    move-result-object v2

    .line 375
    const-string v3, "posY"

    .line 376
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 378
    move-result-object v4

    .line 381
    const-string v5, "scaleX"

    .line 382
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 384
    move-result-object v6

    .line 387
    const-string v7, "scaleY"

    .line 388
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 390
    move-result-object v8

    .line 393
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 394
    move-result-object v1

    .line 397
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 398
    move-result-object v0

    .line 401
    const-string v1, "posX"

    .line 402
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 404
    move-result-object v2

    .line 407
    const-string v3, "posY"

    .line 408
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 410
    move-result-object v4

    .line 413
    const-string v5, "scaleX"

    .line 414
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 416
    move-result-object v6

    .line 419
    const-string v7, "scaleY"

    .line 420
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 422
    move-result-object v8

    .line 425
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    .line 426
    move-result-object v1

    .line 429
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 430
    const/4 v0, 0x1

    .line 433
    goto :goto_1

    .line 434
    :cond_6
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 435
    move-result-object v2

    .line 438
    if-eqz v2, :cond_7

    .line 439
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 441
    move-result-object v2

    .line 444
    if-eqz v2, :cond_7

    .line 445
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 447
    move-result-object v2

    .line 450
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 451
    move-result v2

    .line 454
    const/4 v3, 0x5

    .line 455
    if-ne v2, v3, :cond_7

    .line 456
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 458
    move-result-object v2

    .line 461
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 462
    if-eqz v2, :cond_7

    .line 464
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 466
    move-result-object v2

    .line 469
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 470
    iget v2, v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 472
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 474
    move-result-object v1

    .line 477
    invoke-virtual {v11, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 478
    :cond_7
    :goto_1
    const/4 v12, 0x1

    .line 481
    goto/16 :goto_0

    .line 482
    :cond_8
    return v0
    .line 484
.end method

.method private startSplitToFreeformAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 38

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p3

    .line 4
    move-object/from16 v12, p4

    .line 6
    const/4 v6, 0x0

    .line 8
    iput v6, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 9
    new-instance v13, Landroid/window/WindowContainerTransaction;

    .line 11
    invoke-direct {v13}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 13
    iget-object v7, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 16
    new-instance v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda2;

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
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/window/WindowContainerTransaction;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

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
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 50
    add-int/2addr v0, v15

    .line 52
    iput v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

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
    move v8, v6

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
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 104
    move-object v7, v1

    .line 105
    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 106
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

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
    const-string v2, "  freeformScale:"

    .line 126
    const/high16 v17, 0x3f800000    # 1.0f

    .line 128
    if-eqz v7, :cond_5

    .line 130
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 132
    move-result v15

    .line 135
    move-object/from16 v19, v3

    .line 136
    const/4 v3, 0x6

    .line 138
    if-ne v15, v3, :cond_4

    .line 139
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 141
    move-result-object v3

    .line 144
    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 147
    move-result-object v3

    .line 150
    if-eqz v3, :cond_4

    .line 151
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 153
    move-result-object v3

    .line 156
    if-eqz v3, :cond_4

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 159
    move-result-object v3

    .line 162
    if-eqz v3, :cond_4

    .line 163
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 165
    move-result v3

    .line 168
    const/4 v15, 0x5

    .line 169
    if-ne v3, v15, :cond_4

    .line 170
    if-eqz v1, :cond_4

    .line 172
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 174
    move-result v3

    .line 177
    const/4 v15, 0x0

    .line 178
    cmpl-float v3, v3, v15

    .line 179
    if-eqz v3, :cond_4

    .line 181
    sget-object v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v15, "startSplitToFreeformAnim: start freeform anim, taskId:"

    .line 187
    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    iget v15, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 193
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v2

    .line 207
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 211
    const/4 v3, 0x1

    .line 213
    add-int/2addr v2, v3

    .line 214
    iput v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 215
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 217
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 219
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 221
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 224
    iget v3, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 226
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 228
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 231
    move-result-object v8

    .line 234
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 235
    move-result-object v15

    .line 238
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 239
    move-result-object v3

    .line 242
    if-eqz v14, :cond_3

    .line 243
    const v0, 0x7fffffff

    .line 245
    invoke-virtual {v11, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 248
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 251
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 253
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 255
    move-object/from16 v18, v0

    .line 257
    move-object v0, v14

    .line 259
    move-object/from16 v20, v1

    .line 260
    move-object v1, v6

    .line 262
    move-object/from16 v21, v2

    .line 263
    move-object v2, v3

    .line 265
    move-object/from16 v22, v14

    .line 266
    move-object v14, v3

    .line 268
    move-object/from16 v37, v19

    .line 269
    move-object/from16 v19, v9

    .line 271
    move-object/from16 v9, v37

    .line 273
    move-object/from16 v3, v21

    .line 275
    move-object/from16 v23, v4

    .line 277
    move-object/from16 v4, v20

    .line 279
    move-object/from16 v24, v5

    .line 281
    move-object/from16 v5, v18

    .line 283
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->adjustFreeformBoundsAfterRotation(Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)F

    .line 285
    move-result v0

    .line 288
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 289
    move-result-object v1

    .line 292
    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 293
    invoke-virtual {v13, v0, v14}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 295
    goto :goto_1

    .line 298
    :cond_3
    move-object/from16 v23, v4

    .line 299
    move-object/from16 v24, v5

    .line 301
    move-object/from16 v22, v14

    .line 303
    move-object v14, v3

    .line 305
    move-object/from16 v37, v19

    .line 306
    move-object/from16 v19, v9

    .line 308
    move-object/from16 v9, v37

    .line 310
    :goto_1
    iget v0, v15, Landroid/graphics/Rect;->left:I

    .line 312
    int-to-float v0, v0

    .line 314
    iget v2, v15, Landroid/graphics/Rect;->top:I

    .line 315
    int-to-float v2, v2

    .line 317
    invoke-virtual {v11, v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 318
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    .line 321
    move-result v0

    .line 324
    int-to-float v0, v0

    .line 325
    mul-float v0, v0, v17

    .line 326
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 328
    move-result v2

    .line 331
    int-to-float v2, v2

    .line 332
    div-float v7, v0, v2

    .line 333
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    .line 335
    move-result v0

    .line 338
    int-to-float v0, v0

    .line 339
    mul-float v0, v0, v17

    .line 340
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 342
    move-result v2

    .line 345
    int-to-float v2, v2

    .line 346
    div-float v5, v0, v2

    .line 347
    invoke-virtual {v11, v8, v7, v5}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 349
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 352
    move-result v0

    .line 355
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 356
    move-result v2

    .line 359
    invoke-virtual {v11, v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 360
    iget-object v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 363
    iget-object v2, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 365
    invoke-static {v0, v6, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinTrackUtils;->trackEnterFreeformByControl(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 367
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 370
    move-result v0

    .line 373
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 374
    move-result v2

    .line 377
    invoke-virtual {v12, v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 378
    iget v0, v14, Landroid/graphics/Rect;->left:I

    .line 381
    int-to-float v0, v0

    .line 383
    iget v2, v14, Landroid/graphics/Rect;->top:I

    .line 384
    int-to-float v2, v2

    .line 386
    invoke-virtual {v12, v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 387
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 390
    move-result v0

    .line 393
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 394
    move-result v2

    .line 397
    invoke-virtual {v12, v8, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 398
    iget v0, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 401
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 403
    move-result v2

    .line 406
    div-float/2addr v0, v2

    .line 407
    invoke-virtual {v12, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 408
    iget v0, v14, Landroid/graphics/Rect;->left:I

    .line 411
    int-to-float v6, v0

    .line 413
    iget v0, v14, Landroid/graphics/Rect;->top:I

    .line 414
    int-to-float v4, v0

    .line 416
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 417
    move-result v18

    .line 420
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 421
    move-result v20

    .line 424
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 425
    invoke-direct/range {v21 .. v21}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 427
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 430
    move-result v25

    .line 433
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 434
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 436
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 439
    invoke-virtual {v0, v9, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 441
    move-result-object v0

    .line 444
    move-object/from16 v3, v23

    .line 445
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 447
    move-result-object v0

    .line 450
    move-object/from16 v2, v24

    .line 451
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 453
    move-result-object v0

    .line 456
    move-object/from16 v2, v19

    .line 457
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 459
    move-result-object v9

    .line 462
    new-instance v19, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$8;

    .line 463
    move-object/from16 v0, v19

    .line 465
    move-object/from16 v1, p0

    .line 467
    move-object v2, v8

    .line 469
    move-object/from16 v3, v21

    .line 470
    move/from16 v23, v4

    .line 472
    move-object v4, v14

    .line 474
    move v14, v5

    .line 475
    move/from16 v5, v25

    .line 476
    move/from16 v24, v6

    .line 478
    move-object/from16 v6, p2

    .line 480
    move/from16 v25, v7

    .line 482
    move-object/from16 v7, p5

    .line 484
    move-object/from16 v8, p4

    .line 486
    move-object v12, v9

    .line 488
    move-object v9, v13

    .line 489
    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$8;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;FLandroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 490
    filled-new-array/range {v19 .. v19}, [Lmiuix/animation/listener/TransitionListener;

    .line 493
    move-result-object v0

    .line 496
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 497
    move-result-object v36

    .line 500
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    .line 501
    move-result-object v0

    .line 504
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 505
    move-result-object v0

    .line 508
    const-string v26, "posX"

    .line 509
    iget v1, v15, Landroid/graphics/Rect;->left:I

    .line 511
    int-to-float v1, v1

    .line 513
    mul-float v1, v1, v17

    .line 514
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    move-result-object v27

    .line 519
    const-string v28, "posY"

    .line 520
    iget v1, v15, Landroid/graphics/Rect;->top:I

    .line 522
    int-to-float v1, v1

    .line 524
    mul-float v1, v1, v17

    .line 525
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 527
    move-result-object v29

    .line 530
    const-string v30, "scaleX"

    .line 531
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 533
    move-result-object v31

    .line 536
    const-string v32, "scaleY"

    .line 537
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 539
    move-result-object v33

    .line 542
    const-string v34, "cornerRadius"

    .line 543
    iget v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 545
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 547
    move-result-object v35

    .line 550
    filled-new-array/range {v26 .. v35}, [Ljava/lang/Object;

    .line 551
    move-result-object v1

    .line 554
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 555
    move-result-object v0

    .line 558
    const-string v26, "posX"

    .line 559
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 561
    move-result-object v27

    .line 564
    const-string v28, "posY"

    .line 565
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 567
    move-result-object v29

    .line 570
    const-string v30, "scaleX"

    .line 571
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 573
    move-result-object v31

    .line 576
    const-string v32, "scaleY"

    .line 577
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 579
    move-result-object v33

    .line 582
    const-string v34, "cornerRadius"

    .line 583
    iget v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformCornerRadius:F

    .line 585
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 587
    move-result-object v35

    .line 590
    filled-new-array/range {v26 .. v36}, [Ljava/lang/Object;

    .line 591
    move-result-object v1

    .line 594
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 595
    const/4 v8, 0x1

    .line 598
    goto/16 :goto_4

    .line 599
    :cond_4
    move-object v3, v4

    .line 601
    move-object v4, v9

    .line 602
    move-object/from16 v22, v14

    .line 603
    move-object/from16 v9, v19

    .line 605
    goto :goto_2

    .line 607
    :cond_5
    move-object/from16 v22, v14

    .line 608
    move-object/from16 v37, v9

    .line 610
    move-object v9, v3

    .line 612
    move-object v3, v4

    .line 613
    move-object/from16 v4, v37

    .line 614
    :goto_2
    if-eqz v7, :cond_6

    .line 616
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 618
    move-result-object v7

    .line 621
    if-eqz v7, :cond_6

    .line 622
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 624
    move-result-object v7

    .line 627
    if-eqz v7, :cond_6

    .line 628
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 630
    move-result-object v7

    .line 633
    if-eqz v7, :cond_6

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 636
    move-result-object v7

    .line 639
    if-eqz v7, :cond_6

    .line 640
    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 642
    move-result v7

    .line 645
    const/4 v12, 0x1

    .line 646
    if-ne v7, v12, :cond_6

    .line 647
    sget-object v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

    .line 649
    new-instance v12, Ljava/lang/StringBuilder;

    .line 651
    const-string/jumbo v14, "startSplitToFreeformAnim: start fullscreen anim, taskId:"

    .line 653
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 656
    iget v14, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 659
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    move-result-object v1

    .line 673
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 677
    const/4 v12, 0x1

    .line 679
    add-int/2addr v1, v12

    .line 680
    iput v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFreeformTransAnimCount:I

    .line 681
    iget-object v1, v10, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 683
    iget v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 685
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 687
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 690
    move-result-object v2

    .line 693
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 694
    move-result-object v14

    .line 697
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 698
    move-result-object v0

    .line 701
    iget v1, v14, Landroid/graphics/Rect;->left:I

    .line 702
    int-to-float v1, v1

    .line 704
    iget v6, v14, Landroid/graphics/Rect;->top:I

    .line 705
    int-to-float v6, v6

    .line 707
    invoke-virtual {v11, v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 708
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 711
    move-result v1

    .line 714
    int-to-float v1, v1

    .line 715
    mul-float v1, v1, v17

    .line 716
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 718
    move-result v6

    .line 721
    int-to-float v6, v6

    .line 722
    div-float v15, v1, v6

    .line 723
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 725
    move-result v1

    .line 728
    int-to-float v1, v1

    .line 729
    mul-float v1, v1, v17

    .line 730
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 732
    move-result v6

    .line 735
    int-to-float v6, v6

    .line 736
    div-float v7, v1, v6

    .line 737
    invoke-virtual {v11, v2, v15, v7}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 739
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 742
    move-result v1

    .line 745
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 746
    move-result v6

    .line 749
    invoke-virtual {v11, v2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 750
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 753
    int-to-float v6, v1

    .line 755
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 756
    int-to-float v1, v0

    .line 758
    new-instance v18, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 759
    invoke-direct/range {v18 .. v18}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 761
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 764
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 766
    sget-object v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 769
    invoke-virtual {v0, v9, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 771
    move-result-object v0

    .line 774
    invoke-virtual {v0, v3, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 775
    move-result-object v0

    .line 778
    invoke-virtual {v0, v5, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 779
    move-result-object v0

    .line 782
    invoke-virtual {v0, v4, v12}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 783
    move-result-object v9

    .line 786
    new-instance v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$9;

    .line 787
    move-object v0, v12

    .line 789
    move/from16 v19, v1

    .line 790
    move-object/from16 v1, p0

    .line 792
    move-object/from16 v3, v18

    .line 794
    move-object/from16 v4, p2

    .line 796
    move-object/from16 v5, p5

    .line 798
    move/from16 v20, v6

    .line 800
    move-object/from16 v6, p4

    .line 802
    move/from16 v21, v7

    .line 804
    move-object v7, v13

    .line 806
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$9;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    .line 807
    filled-new-array {v12}, [Lmiuix/animation/listener/TransitionListener;

    .line 810
    move-result-object v0

    .line 813
    invoke-virtual {v9, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 814
    move-result-object v31

    .line 817
    filled-new-array/range {v18 .. v18}, [Ljava/lang/Object;

    .line 818
    move-result-object v0

    .line 821
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 822
    move-result-object v0

    .line 825
    const-string v23, "posX"

    .line 826
    iget v1, v14, Landroid/graphics/Rect;->left:I

    .line 828
    int-to-float v1, v1

    .line 830
    mul-float v1, v1, v17

    .line 831
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 833
    move-result-object v24

    .line 836
    const-string v25, "posY"

    .line 837
    iget v1, v14, Landroid/graphics/Rect;->top:I

    .line 839
    int-to-float v1, v1

    .line 841
    mul-float v1, v1, v17

    .line 842
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 844
    move-result-object v26

    .line 847
    const-string v27, "scaleX"

    .line 848
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 850
    move-result-object v28

    .line 853
    const-string v29, "scaleY"

    .line 854
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 856
    move-result-object v30

    .line 859
    filled-new-array/range {v23 .. v30}, [Ljava/lang/Object;

    .line 860
    move-result-object v1

    .line 863
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 864
    move-result-object v0

    .line 867
    const-string v23, "posX"

    .line 868
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 870
    move-result-object v24

    .line 873
    const-string v25, "posY"

    .line 874
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 876
    move-result-object v26

    .line 879
    const-string v27, "scaleX"

    .line 880
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 882
    move-result-object v28

    .line 885
    const-string v29, "scaleY"

    .line 886
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 888
    move-result-object v30

    .line 891
    filled-new-array/range {v23 .. v31}, [Ljava/lang/Object;

    .line 892
    move-result-object v1

    .line 895
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 896
    goto :goto_4

    .line 899
    :cond_6
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 900
    move-result-object v1

    .line 903
    if-eqz v1, :cond_8

    .line 904
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 906
    move-result-object v1

    .line 909
    if-eqz v1, :cond_8

    .line 910
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 912
    move-result-object v1

    .line 915
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 916
    move-result v1

    .line 919
    const/4 v2, 0x5

    .line 920
    if-ne v1, v2, :cond_8

    .line 921
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 923
    move-result-object v1

    .line 926
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 927
    if-eqz v1, :cond_8

    .line 929
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 931
    move-result-object v1

    .line 934
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 935
    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 937
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 939
    move-result-object v0

    .line 942
    invoke-virtual {v11, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 943
    goto :goto_4

    .line 946
    :cond_7
    :goto_3
    move-object/from16 v22, v14

    .line 947
    :cond_8
    :goto_4
    move-object/from16 v12, p4

    .line 949
    move-object/from16 v14, v22

    .line 951
    const/4 v15, 0x1

    .line 953
    goto/16 :goto_0

    .line 954
    :cond_9
    return v8
    .line 956
.end method

.method private startSplitToFullAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 32

    .line 1
    move-object/from16 v8, p0

    .line 2
    move-object/from16 v9, p3

    .line 4
    const/4 v10, 0x0

    .line 6
    iput v10, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

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
    if-eqz v0, :cond_8

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
    move-result-object v12

    .line 43
    if-eqz v12, :cond_6

    .line 44
    iget v1, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    const/4 v2, -0x1

    .line 48
    if-ne v1, v2, :cond_1

    .line 49
    goto/16 :goto_1

    .line 51
    :cond_1
    iget-object v2, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 58
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 59
    const/high16 v13, 0x3f800000    # 1.0f

    .line 61
    const/4 v14, 0x1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 66
    move-result v2

    .line 69
    const/4 v3, 0x6

    .line 70
    if-ne v2, v3, :cond_3

    .line 71
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 73
    move-result-object v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 79
    move-result-object v2

    .line 82
    if-eqz v2, :cond_3

    .line 83
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 85
    move-result-object v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 91
    move-result-object v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 97
    move-result v2

    .line 100
    if-ne v2, v14, :cond_3

    .line 101
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 103
    add-int/2addr v1, v14

    .line 105
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 106
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 108
    iget v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 110
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 112
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 115
    move-result-object v2

    .line 118
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 119
    move-result-object v1

    .line 122
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 123
    move-result-object v4

    .line 126
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 127
    int-to-float v3, v3

    .line 129
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 130
    int-to-float v5, v5

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 133
    move-result v6

    .line 136
    int-to-float v6, v6

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 138
    move-result v7

    .line 141
    int-to-float v7, v7

    .line 142
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 143
    move-result v15

    .line 146
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 147
    move-result v10

    .line 150
    if-eq v15, v10, :cond_2

    .line 151
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 153
    int-to-float v3, v3

    .line 155
    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 156
    int-to-float v5, v5

    .line 158
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 159
    move-result v6

    .line 162
    int-to-float v6, v6

    .line 163
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 164
    move-result v7

    .line 167
    int-to-float v7, v7

    .line 168
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 169
    move-result v10

    .line 172
    int-to-float v10, v10

    .line 173
    div-float v10, v6, v10

    .line 174
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 176
    move-result v6

    .line 179
    int-to-float v6, v6

    .line 180
    div-float v15, v7, v6

    .line 181
    invoke-virtual {v9, v2, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 183
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 186
    move-result-object v3

    .line 189
    invoke-virtual {v9, v3, v10, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 190
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 193
    move-result-object v3

    .line 196
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 197
    move-result v5

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 201
    move-result v6

    .line 204
    invoke-virtual {v9, v3, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 205
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 208
    move-result-object v0

    .line 211
    invoke-virtual {v9, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 212
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 215
    int-to-float v0, v0

    .line 217
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 218
    move-result v3

    .line 221
    int-to-float v3, v3

    .line 222
    const/high16 v5, 0x40000000    # 2.0f

    .line 223
    div-float/2addr v3, v5

    .line 225
    add-float v16, v3, v0

    .line 226
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 228
    int-to-float v0, v0

    .line 230
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 231
    move-result v1

    .line 234
    int-to-float v1, v1

    .line 235
    div-float/2addr v1, v5

    .line 236
    add-float v17, v1, v0

    .line 237
    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 239
    int-to-float v0, v0

    .line 241
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 242
    move-result v1

    .line 245
    int-to-float v1, v1

    .line 246
    div-float/2addr v1, v5

    .line 247
    add-float v18, v1, v0

    .line 248
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 250
    int-to-float v0, v0

    .line 252
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 253
    move-result v1

    .line 256
    int-to-float v1, v1

    .line 257
    div-float/2addr v1, v5

    .line 258
    add-float v19, v1, v0

    .line 259
    new-instance v20, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 261
    invoke-direct/range {v20 .. v20}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 263
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 266
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 268
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 271
    const-string v3, "posX"

    .line 273
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 275
    move-result-object v0

    .line 278
    const-string v3, "posY"

    .line 279
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 281
    move-result-object v0

    .line 284
    const-string v3, "scaleX"

    .line 285
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 287
    move-result-object v0

    .line 290
    const-string v3, "scaleY"

    .line 291
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 293
    move-result-object v7

    .line 296
    new-instance v21, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;

    .line 297
    move-object/from16 v0, v21

    .line 299
    move-object/from16 v1, p0

    .line 301
    move-object/from16 v3, v20

    .line 303
    move-object/from16 v5, p2

    .line 305
    move-object/from16 v6, p5

    .line 307
    move-object v14, v7

    .line 309
    move-object/from16 v7, p4

    .line 310
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$5;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/graphics/Rect;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 312
    filled-new-array/range {v21 .. v21}, [Lmiuix/animation/listener/TransitionListener;

    .line 315
    move-result-object v0

    .line 318
    invoke-virtual {v14, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 319
    move-result-object v31

    .line 322
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    .line 323
    move-result-object v0

    .line 326
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 327
    move-result-object v0

    .line 330
    const-string v23, "posX"

    .line 331
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v24

    .line 336
    const-string v25, "posY"

    .line 337
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 339
    move-result-object v26

    .line 342
    const-string v27, "scaleX"

    .line 343
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 345
    move-result-object v28

    .line 348
    const-string v29, "scaleY"

    .line 349
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 351
    move-result-object v30

    .line 354
    filled-new-array/range {v23 .. v30}, [Ljava/lang/Object;

    .line 355
    move-result-object v1

    .line 358
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 359
    move-result-object v0

    .line 362
    const-string v23, "posX"

    .line 363
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 365
    move-result-object v24

    .line 368
    const-string v25, "posY"

    .line 369
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 371
    move-result-object v26

    .line 374
    const-string v27, "scaleX"

    .line 375
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 377
    move-result-object v28

    .line 380
    const-string v29, "scaleY"

    .line 381
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    move-result-object v30

    .line 386
    filled-new-array/range {v23 .. v31}, [Ljava/lang/Object;

    .line 387
    move-result-object v1

    .line 390
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 391
    iget-object v0, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 394
    iget v1, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 396
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 398
    const/4 v7, 0x1

    .line 401
    const/16 v16, 0x0

    .line 402
    goto/16 :goto_2

    .line 404
    :cond_3
    if-eqz v1, :cond_5

    .line 406
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 408
    move-result v1

    .line 411
    const/4 v2, 0x4

    .line 412
    if-ne v1, v2, :cond_5

    .line 413
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 415
    move-result-object v1

    .line 418
    if-eqz v1, :cond_5

    .line 419
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 421
    move-result-object v1

    .line 424
    if-eqz v1, :cond_5

    .line 425
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 427
    move-result-object v1

    .line 430
    if-eqz v1, :cond_5

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 433
    move-result-object v1

    .line 436
    if-eqz v1, :cond_5

    .line 437
    invoke-virtual {v12}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 439
    move-result v1

    .line 442
    const/4 v2, 0x1

    .line 443
    if-ne v1, v2, :cond_5

    .line 444
    iget v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 446
    add-int/2addr v1, v2

    .line 448
    iput v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitToFullTransAnimCount:I

    .line 449
    iget-object v1, v8, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 451
    iget v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 453
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 455
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 458
    move-result-object v1

    .line 461
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 462
    move-result-object v2

    .line 465
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 466
    int-to-float v3, v3

    .line 468
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 469
    int-to-float v4, v4

    .line 471
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 472
    move-result v5

    .line 475
    int-to-float v5, v5

    .line 476
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 477
    move-result v6

    .line 480
    int-to-float v6, v6

    .line 481
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    .line 482
    move-result v10

    .line 485
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    .line 486
    move-result v0

    .line 489
    if-eq v10, v0, :cond_4

    .line 490
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 492
    int-to-float v3, v0

    .line 494
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 495
    int-to-float v4, v0

    .line 497
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 498
    move-result v0

    .line 501
    int-to-float v5, v0

    .line 502
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 503
    move-result v0

    .line 506
    int-to-float v6, v0

    .line 507
    :cond_4
    move v10, v3

    .line 508
    move v12, v4

    .line 509
    const v0, 0x3dcccccd    # 0.1f

    .line 510
    mul-float v1, v5, v0

    .line 513
    add-float v14, v1, v10

    .line 515
    mul-float/2addr v0, v6

    .line 517
    add-float v15, v0, v12

    .line 518
    invoke-virtual {v9, v2, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 520
    invoke-virtual {v9, v2, v13, v13}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 523
    float-to-int v0, v5

    .line 526
    float-to-int v1, v6

    .line 527
    invoke-virtual {v9, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 528
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 531
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 533
    const/4 v1, 0x1

    .line 536
    new-array v1, v1, [F

    .line 537
    const/high16 v3, 0x43160000    # 150.0f

    .line 539
    const/16 v16, 0x0

    .line 541
    aput v3, v1, v16

    .line 543
    const/16 v3, 0xf

    .line 545
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 547
    move-result-object v0

    .line 550
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 551
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 553
    invoke-direct/range {v17 .. v17}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 555
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 558
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 560
    const-string v3, "leashAlpha"

    .line 563
    invoke-virtual {v1, v3, v0}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 565
    move-result-object v6

    .line 568
    new-instance v18, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$6;

    .line 569
    move-object/from16 v0, v18

    .line 571
    move-object/from16 v1, p0

    .line 573
    move-object/from16 v3, v17

    .line 575
    move-object/from16 v4, p2

    .line 577
    move-object/from16 v5, p5

    .line 579
    move-object v13, v6

    .line 581
    move-object/from16 v6, p4

    .line 582
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$6;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 584
    filled-new-array/range {v18 .. v18}, [Lmiuix/animation/listener/TransitionListener;

    .line 587
    move-result-object v0

    .line 590
    invoke-virtual {v13, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 591
    move-result-object v28

    .line 594
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 595
    move-result-object v0

    .line 598
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 599
    move-result-object v0

    .line 602
    const-string v17, "posX"

    .line 603
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 605
    move-result-object v18

    .line 608
    const-string v19, "posY"

    .line 609
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 611
    move-result-object v20

    .line 614
    const-string v21, "scaleX"

    .line 615
    const/high16 v1, 0x3f800000    # 1.0f

    .line 617
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 619
    move-result-object v22

    .line 622
    const-string v23, "scaleY"

    .line 623
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 625
    move-result-object v24

    .line 628
    const-string v25, "leashAlpha"

    .line 629
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 631
    move-result-object v26

    .line 634
    filled-new-array/range {v17 .. v26}, [Ljava/lang/Object;

    .line 635
    move-result-object v1

    .line 638
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 639
    move-result-object v0

    .line 642
    const-string v18, "posX"

    .line 643
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 645
    move-result-object v19

    .line 648
    const-string v20, "posY"

    .line 649
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 651
    move-result-object v21

    .line 654
    const-string v22, "scaleX"

    .line 655
    const v1, 0x3f4ccccd    # 0.8f

    .line 657
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 660
    move-result-object v23

    .line 663
    const-string v24, "scaleY"

    .line 664
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 666
    move-result-object v25

    .line 669
    const-string v26, "leashAlpha"

    .line 670
    const/4 v1, 0x0

    .line 672
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 673
    move-result-object v27

    .line 676
    filled-new-array/range {v18 .. v28}, [Ljava/lang/Object;

    .line 677
    move-result-object v1

    .line 680
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 681
    goto :goto_2

    .line 684
    :cond_5
    const/16 v16, 0x0

    .line 685
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 687
    move-result-object v1

    .line 690
    if-eqz v1, :cond_7

    .line 691
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 693
    move-result-object v1

    .line 696
    if-eqz v1, :cond_7

    .line 697
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 699
    move-result-object v1

    .line 702
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 703
    move-result v1

    .line 706
    const/4 v2, 0x5

    .line 707
    if-ne v1, v2, :cond_7

    .line 708
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 710
    move-result-object v1

    .line 713
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 714
    if-eqz v1, :cond_7

    .line 716
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 718
    move-result-object v1

    .line 721
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 722
    iget v1, v1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 724
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 726
    move-result-object v0

    .line 729
    invoke-virtual {v9, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 730
    goto :goto_2

    .line 733
    :cond_6
    :goto_1
    move/from16 v16, v10

    .line 734
    :cond_7
    :goto_2
    move/from16 v10, v16

    .line 736
    goto/16 :goto_0

    .line 738
    :cond_8
    return v7
    .line 740
.end method

.method private startSwapSingleAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p3

    .line 4
    move-object/from16 v9, p4

    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v10

    .line 15
    const/4 v0, 0x0

    .line 16
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
    const/4 v3, 0x2

    .line 33
    invoke-virtual {v1, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 34
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    if-nez v2, :cond_0

    .line 40
    goto/16 :goto_1

    .line 42
    :cond_0
    iget-object v3, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 44
    iget v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 54
    move-result v4

    .line 57
    const/4 v5, 0x6

    .line 58
    if-ne v4, v5, :cond_1

    .line 59
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 61
    move-result-object v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 67
    move-result-object v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 73
    move-result-object v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    if-eqz v3, :cond_1

    .line 79
    iget-object v0, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 81
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 83
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 88
    move-result-object v2

    .line 91
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 92
    move-result-object v11

    .line 95
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object v0

    .line 99
    iget v3, v11, Landroid/graphics/Rect;->left:I

    .line 100
    int-to-float v3, v3

    .line 102
    iget v4, v11, Landroid/graphics/Rect;->top:I

    .line 103
    int-to-float v4, v4

    .line 105
    invoke-virtual {v8, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 106
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 109
    move-result v3

    .line 112
    int-to-float v3, v3

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 114
    move-result v4

    .line 117
    int-to-float v4, v4

    .line 118
    div-float v12, v3, v4

    .line 119
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 121
    move-result v3

    .line 124
    int-to-float v3, v3

    .line 125
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 126
    move-result v4

    .line 129
    int-to-float v4, v4

    .line 130
    div-float v13, v3, v4

    .line 131
    invoke-virtual {v8, v2, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 133
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 136
    move-result-object v1

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 140
    move-result v3

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 144
    move-result v4

    .line 147
    invoke-virtual {v8, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 151
    move-result v1

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 155
    move-result v3

    .line 158
    invoke-virtual {v9, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 159
    iget v1, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 162
    invoke-virtual {v9, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 164
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 167
    int-to-float v14, v1

    .line 169
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 170
    int-to-float v15, v0

    .line 172
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 173
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 175
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 178
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 180
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 183
    const-string v3, "PosX"

    .line 185
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 187
    move-result-object v0

    .line 190
    const-string v3, "PosY"

    .line 191
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 193
    move-result-object v0

    .line 196
    const-string v3, "ScaleX"

    .line 197
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 199
    move-result-object v0

    .line 202
    const-string v3, "ScaleY"

    .line 203
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 205
    move-result-object v6

    .line 208
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$23;

    .line 209
    move-object/from16 v0, v17

    .line 211
    move-object/from16 v1, p0

    .line 213
    move-object/from16 v3, v16

    .line 215
    move-object/from16 v4, p2

    .line 217
    move-object/from16 v5, p5

    .line 219
    move-object v7, v6

    .line 221
    move-object/from16 v6, p4

    .line 222
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$23;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 224
    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/listener/TransitionListener;

    .line 227
    move-result-object v0

    .line 230
    invoke-virtual {v7, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 231
    move-result-object v25

    .line 234
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 235
    move-result-object v0

    .line 238
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 239
    move-result-object v0

    .line 242
    const-string v16, "PosX"

    .line 243
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 245
    int-to-float v1, v1

    .line 247
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 248
    move-result-object v17

    .line 251
    const-string v18, "PosY"

    .line 252
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 254
    int-to-float v1, v1

    .line 256
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    move-result-object v19

    .line 260
    const-string v20, "ScaleX"

    .line 261
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    move-result-object v21

    .line 266
    const-string v22, "ScaleY"

    .line 267
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 269
    move-result-object v23

    .line 272
    filled-new-array/range {v16 .. v23}, [Ljava/lang/Object;

    .line 273
    move-result-object v1

    .line 276
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 277
    move-result-object v0

    .line 280
    const-string v17, "PosX"

    .line 281
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 283
    move-result-object v18

    .line 286
    const-string v19, "PosY"

    .line 287
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 289
    move-result-object v20

    .line 292
    const-string v21, "ScaleX"

    .line 293
    const/high16 v1, 0x3f800000    # 1.0f

    .line 295
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 297
    move-result-object v22

    .line 300
    const-string v23, "ScaleY"

    .line 301
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 303
    move-result-object v24

    .line 306
    filled-new-array/range {v17 .. v25}, [Ljava/lang/Object;

    .line 307
    move-result-object v1

    .line 310
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 311
    const/4 v0, 0x1

    .line 314
    :cond_1
    :goto_1
    move-object/from16 v7, p0

    .line 315
    goto/16 :goto_0

    .line 317
    :cond_2
    return v0
    .line 319
.end method

.method private startSwapSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 29

    .line 1
    move-object/from16 v7, p0

    .line 2
    move-object/from16 v8, p3

    .line 4
    move-object/from16 v9, p4

    .line 6
    const/4 v0, 0x0

    .line 8
    iput v0, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v10

    .line 18
    move v11, v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 53
    move-result v2

    .line 56
    const/4 v4, 0x6

    .line 57
    if-eq v2, v4, :cond_3

    .line 58
    goto :goto_0

    .line 60
    :cond_3
    iget-object v2, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 61
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 63
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 68
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 69
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 71
    move-result-object v4

    .line 74
    const-string v5, "ScaleY"

    .line 75
    const-string v6, "ScaleX"

    .line 77
    const-string v12, "PosY"

    .line 79
    const-string v13, "PosX"

    .line 81
    const/4 v14, 0x1

    .line 83
    const/high16 v15, 0x3f800000    # 1.0f

    .line 84
    if-eqz v4, :cond_4

    .line 86
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 88
    move-result-object v4

    .line 91
    if-eqz v4, :cond_4

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 94
    move-result-object v4

    .line 97
    if-eqz v4, :cond_4

    .line 98
    if-eqz v2, :cond_4

    .line 100
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 102
    iget v3, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mOperateSplitTaskID:I

    .line 104
    if-ne v4, v3, :cond_4

    .line 106
    iget v1, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 108
    add-int/2addr v1, v14

    .line 110
    iput v1, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 111
    iget-object v1, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 113
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 115
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 118
    move-result-object v2

    .line 121
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 122
    move-result-object v11

    .line 125
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 126
    move-result-object v1

    .line 129
    iget v3, v11, Landroid/graphics/Rect;->left:I

    .line 130
    int-to-float v3, v3

    .line 132
    iget v4, v11, Landroid/graphics/Rect;->top:I

    .line 133
    int-to-float v4, v4

    .line 135
    invoke-virtual {v8, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 136
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 139
    move-result v3

    .line 142
    int-to-float v3, v3

    .line 143
    mul-float/2addr v3, v15

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 145
    move-result v4

    .line 148
    int-to-float v4, v4

    .line 149
    div-float v4, v3, v4

    .line 150
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 152
    move-result v3

    .line 155
    int-to-float v3, v3

    .line 156
    mul-float/2addr v3, v15

    .line 157
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 158
    move-result v14

    .line 161
    int-to-float v14, v14

    .line 162
    div-float v14, v3, v14

    .line 163
    invoke-virtual {v8, v2, v4, v14}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 165
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 168
    move-result-object v0

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 172
    move-result v3

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 176
    move-result v15

    .line 179
    invoke-virtual {v8, v0, v3, v15}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 183
    move-result v0

    .line 186
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 187
    move-result v3

    .line 190
    invoke-virtual {v9, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 191
    iget v0, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitCornerRadius:F

    .line 194
    invoke-virtual {v9, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 196
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 199
    int-to-float v15, v0

    .line 201
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 202
    int-to-float v3, v0

    .line 204
    new-instance v17, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 205
    invoke-direct/range {v17 .. v17}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 207
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 210
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 212
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 215
    invoke-virtual {v0, v13, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 217
    move-result-object v0

    .line 220
    invoke-virtual {v0, v12, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 221
    move-result-object v0

    .line 224
    invoke-virtual {v0, v6, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 225
    move-result-object v0

    .line 228
    invoke-virtual {v0, v5, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 229
    move-result-object v12

    .line 232
    new-instance v13, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$21;

    .line 233
    move-object v0, v13

    .line 235
    move-object/from16 v1, p0

    .line 236
    move/from16 v18, v3

    .line 238
    move-object/from16 v3, v17

    .line 240
    move/from16 v19, v4

    .line 242
    move-object/from16 v4, p2

    .line 244
    move-object/from16 v5, p5

    .line 246
    move-object/from16 v6, p4

    .line 248
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$21;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 250
    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    .line 253
    move-result-object v0

    .line 256
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 257
    move-result-object v28

    .line 260
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    .line 261
    move-result-object v0

    .line 264
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 265
    move-result-object v0

    .line 268
    const-string v20, "PosX"

    .line 269
    iget v1, v11, Landroid/graphics/Rect;->left:I

    .line 271
    int-to-float v1, v1

    .line 273
    const/high16 v2, 0x3f800000    # 1.0f

    .line 274
    mul-float/2addr v1, v2

    .line 276
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    move-result-object v21

    .line 280
    const-string v22, "PosY"

    .line 281
    iget v1, v11, Landroid/graphics/Rect;->top:I

    .line 283
    int-to-float v1, v1

    .line 285
    mul-float/2addr v1, v2

    .line 286
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    move-result-object v23

    .line 290
    const-string v24, "ScaleX"

    .line 291
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 293
    move-result-object v25

    .line 296
    const-string v26, "ScaleY"

    .line 297
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 299
    move-result-object v27

    .line 302
    filled-new-array/range {v20 .. v27}, [Ljava/lang/Object;

    .line 303
    move-result-object v1

    .line 306
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 307
    move-result-object v0

    .line 310
    const-string v20, "PosX"

    .line 311
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 313
    move-result-object v21

    .line 316
    const-string v22, "PosY"

    .line 317
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 319
    move-result-object v23

    .line 322
    const-string v24, "ScaleX"

    .line 323
    const/high16 v1, 0x3f800000    # 1.0f

    .line 325
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    move-result-object v25

    .line 330
    const-string v26, "ScaleY"

    .line 331
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 333
    move-result-object v27

    .line 336
    filled-new-array/range {v20 .. v28}, [Ljava/lang/Object;

    .line 337
    move-result-object v1

    .line 340
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 341
    const/4 v11, 0x1

    .line 344
    goto/16 :goto_0

    .line 345
    :cond_4
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 347
    move-result-object v3

    .line 350
    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 353
    move-result-object v3

    .line 356
    if-eqz v3, :cond_0

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    .line 359
    move-result-object v3

    .line 362
    if-eqz v3, :cond_0

    .line 363
    if-eqz v2, :cond_0

    .line 365
    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 367
    iget v2, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mOperateSplitTaskID:I

    .line 369
    if-eq v1, v2, :cond_0

    .line 371
    iget v2, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 373
    const/4 v3, 0x1

    .line 375
    add-int/2addr v2, v3

    .line 376
    iput v2, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSwapSplitTransAnimCount:I

    .line 377
    iget-object v2, v7, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 379
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 381
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 384
    move-result-object v2

    .line 387
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 388
    move-result-object v14

    .line 391
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 392
    move-result-object v1

    .line 395
    const/4 v3, -0x1

    .line 396
    invoke-virtual {v8, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 397
    iget v3, v14, Landroid/graphics/Rect;->left:I

    .line 400
    int-to-float v3, v3

    .line 402
    iget v4, v14, Landroid/graphics/Rect;->top:I

    .line 403
    int-to-float v4, v4

    .line 405
    invoke-virtual {v8, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 406
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    .line 409
    move-result v3

    .line 412
    int-to-float v3, v3

    .line 413
    const/high16 v4, 0x3f800000    # 1.0f

    .line 414
    mul-float/2addr v3, v4

    .line 416
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 417
    move-result v15

    .line 420
    int-to-float v15, v15

    .line 421
    div-float v15, v3, v15

    .line 422
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    .line 424
    move-result v3

    .line 427
    int-to-float v3, v3

    .line 428
    mul-float/2addr v3, v4

    .line 429
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 430
    move-result v4

    .line 433
    int-to-float v4, v4

    .line 434
    div-float v4, v3, v4

    .line 435
    invoke-virtual {v8, v2, v15, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 437
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 440
    move-result-object v0

    .line 443
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 444
    move-result v3

    .line 447
    move/from16 p1, v4

    .line 448
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 450
    move-result v4

    .line 453
    invoke-virtual {v8, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 454
    iget v0, v1, Landroid/graphics/Rect;->left:I

    .line 457
    int-to-float v4, v0

    .line 459
    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 460
    int-to-float v3, v0

    .line 462
    new-instance v16, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 463
    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;-><init>()V

    .line 465
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 468
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 470
    sget-object v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 473
    invoke-virtual {v0, v13, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 475
    move-result-object v0

    .line 478
    invoke-virtual {v0, v12, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 479
    move-result-object v0

    .line 482
    invoke-virtual {v0, v6, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 483
    move-result-object v0

    .line 486
    invoke-virtual {v0, v5, v1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 487
    move-result-object v12

    .line 490
    new-instance v13, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$22;

    .line 491
    move-object v0, v13

    .line 493
    move-object/from16 v1, p0

    .line 494
    move/from16 v17, v3

    .line 496
    move-object/from16 v3, v16

    .line 498
    move/from16 v18, p1

    .line 500
    move/from16 v19, v4

    .line 502
    move-object/from16 v4, p2

    .line 504
    move-object/from16 v5, p5

    .line 506
    move-object/from16 v6, p4

    .line 508
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler$22;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;Landroid/window/TransitionInfo;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 510
    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    .line 513
    move-result-object v0

    .line 516
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 517
    move-result-object v28

    .line 520
    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    .line 521
    move-result-object v0

    .line 524
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 525
    move-result-object v0

    .line 528
    const-string v20, "PosX"

    .line 529
    iget v1, v14, Landroid/graphics/Rect;->left:I

    .line 531
    int-to-float v1, v1

    .line 533
    const/high16 v2, 0x3f800000    # 1.0f

    .line 534
    mul-float/2addr v1, v2

    .line 536
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 537
    move-result-object v21

    .line 540
    const-string v22, "PosY"

    .line 541
    iget v1, v14, Landroid/graphics/Rect;->top:I

    .line 543
    int-to-float v1, v1

    .line 545
    mul-float/2addr v1, v2

    .line 546
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 547
    move-result-object v23

    .line 550
    const-string v24, "ScaleX"

    .line 551
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 553
    move-result-object v25

    .line 556
    const-string v26, "ScaleY"

    .line 557
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 559
    move-result-object v27

    .line 562
    filled-new-array/range {v20 .. v27}, [Ljava/lang/Object;

    .line 563
    move-result-object v1

    .line 566
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 567
    move-result-object v0

    .line 570
    const-string v20, "PosX"

    .line 571
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 573
    move-result-object v21

    .line 576
    const-string v22, "PosY"

    .line 577
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 579
    move-result-object v23

    .line 582
    const-string v24, "ScaleX"

    .line 583
    const/high16 v1, 0x3f800000    # 1.0f

    .line 585
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 587
    move-result-object v25

    .line 590
    const-string v26, "ScaleY"

    .line 591
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 593
    move-result-object v27

    .line 596
    filled-new-array/range {v20 .. v28}, [Ljava/lang/Object;

    .line 597
    move-result-object v1

    .line 600
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 601
    goto/16 :goto_0

    .line 604
    :cond_5
    return v11
    .line 606
.end method

.method private startTransition(ILandroid/window/WindowContainerTransaction;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

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
    const/16 v0, 0x104

    .line 22
    const/16 v1, 0x10b

    .line 24
    const/16 v2, 0x105

    .line 26
    const/16 v3, 0x103

    .line 28
    const/16 v4, 0xfb

    .line 30
    if-eq p1, v4, :cond_0

    .line 32
    if-eq p1, v3, :cond_0

    .line 34
    if-eq p1, v2, :cond_0

    .line 36
    if-eq p1, v1, :cond_0

    .line 38
    if-ne p1, v0, :cond_1

    .line 40
    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 42
    invoke-virtual {v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->deferUpdateSoScState()V

    .line 44
    :cond_1
    if-eq p1, v4, :cond_2

    .line 47
    if-eq p1, v3, :cond_2

    .line 49
    if-eq p1, v0, :cond_2

    .line 51
    if-eq p1, v2, :cond_2

    .line 53
    const/16 v0, 0x108

    .line 55
    if-eq p1, v0, :cond_2

    .line 57
    const/16 v0, 0x106

    .line 59
    if-eq p1, v0, :cond_2

    .line 61
    const/16 v0, 0x107

    .line 63
    if-ne p1, v0, :cond_3

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 67
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->onMultiWindowSwitchStart()V

    .line 69
    :cond_3
    const/16 v0, 0x10a

    .line 72
    if-eq p1, v0, :cond_4

    .line 74
    const/16 v0, 0x2b02

    .line 76
    if-eq p1, v0, :cond_4

    .line 78
    if-eq p1, v1, :cond_4

    .line 80
    const/16 v0, 0x109

    .line 82
    if-eq p1, v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 86
    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->setMultiWinSwitchAnimationRunning(Z)V

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 92
    invoke-virtual {v0, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 94
    move-result-object p2

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object p1

    .line 103
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
    .line 107
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

.method private updateEmbeddingTaskFragmentWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo$Change;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    .line 1
    const/16 p0, 0x200

    .line 2
    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    .line 4
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 10
    move-result p0

    .line 13
    const/4 v0, 0x6

    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 17
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 23
    move-result-object p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    if-nez p3, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 31
    move-result-object p0

    .line 34
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object p3

    .line 38
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result p3

    .line 42
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 43
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 47
    move-result p2

    .line 50
    invoke-virtual {p1, p0, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 51
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    return p0
    .line 57
.end method


# virtual methods
.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 15
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->onTransitionEnd(I)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setAnimScaleSetting(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTransitionTokens:Landroid/util/ArrayMap;

    .line 43
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 48
    invoke-static {p2, p3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->makeAnimRootUnderFreeforms(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;)V

    .line 50
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    .line 53
    move-result v0

    .line 56
    const/16 v2, 0x102

    .line 57
    if-ne v0, v2, :cond_1

    .line 59
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformToFullAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 61
    move-result p1

    .line 64
    goto/16 :goto_1

    .line 65
    :cond_1
    const/16 v2, 0xfa

    .line 67
    if-ne v0, v2, :cond_2

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFullToFreeformAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 71
    move-result p1

    .line 74
    goto/16 :goto_1

    .line 75
    :cond_2
    const/16 v2, 0xfc

    .line 77
    if-ne v0, v2, :cond_3

    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startSingleOpenToFullAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 81
    move-result p1

    .line 84
    goto/16 :goto_1

    .line 85
    :cond_3
    const/16 v2, 0xfe

    .line 87
    if-ne v0, v2, :cond_4

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startSplitToFullAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 91
    move-result p1

    .line 94
    goto/16 :goto_1

    .line 95
    :cond_4
    const/16 v2, 0xfd

    .line 97
    if-ne v0, v2, :cond_5

    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startSingleOpenToFreeformAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 101
    move-result p1

    .line 104
    goto/16 :goto_1

    .line 105
    :cond_5
    const/16 v2, 0xff

    .line 107
    if-ne v0, v2, :cond_6

    .line 109
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startSplitToFreeformAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 111
    move-result p1

    .line 114
    goto/16 :goto_1

    .line 115
    :cond_6
    const/16 v2, 0xfb

    .line 117
    if-ne v0, v2, :cond_7

    .line 119
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFullToSingleAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 121
    move-result p1

    .line 124
    goto/16 :goto_1

    .line 125
    :cond_7
    const/16 v2, 0x103

    .line 127
    if-ne v0, v2, :cond_8

    .line 129
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformToSingleAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 131
    move-result p1

    .line 134
    goto/16 :goto_1

    .line 135
    :cond_8
    const/16 v2, 0x104

    .line 137
    if-ne v0, v2, :cond_9

    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformToSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 141
    move-result p1

    .line 144
    goto/16 :goto_1

    .line 145
    :cond_9
    const/16 v2, 0x105

    .line 147
    if-ne v0, v2, :cond_a

    .line 149
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformToSplitUnsupportedAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 151
    move-result p1

    .line 154
    goto/16 :goto_1

    .line 155
    :cond_a
    const/16 v2, 0x108

    .line 157
    if-ne v0, v2, :cond_b

    .line 159
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformReplaceSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 161
    move-result p1

    .line 164
    goto/16 :goto_1

    .line 165
    :cond_b
    const/16 v2, 0x106

    .line 167
    if-ne v0, v2, :cond_c

    .line 169
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformFillSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 171
    move-result p1

    .line 174
    goto :goto_1

    .line 175
    :cond_c
    const/16 v2, 0x107

    .line 176
    if-ne v0, v2, :cond_d

    .line 178
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startFreeformSqueeSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 180
    move-result p1

    .line 183
    goto :goto_1

    .line 184
    :cond_d
    const/16 v2, 0x100

    .line 185
    if-ne v0, v2, :cond_e

    .line 187
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startSwapSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 189
    move-result p1

    .line 192
    goto :goto_1

    .line 193
    :cond_e
    const/16 v2, 0x101

    .line 194
    if-ne v0, v2, :cond_f

    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startSwapSingleAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 198
    move-result p1

    .line 201
    goto :goto_1

    .line 202
    :cond_f
    const/16 v2, 0x10a

    .line 203
    if-eq v0, v2, :cond_15

    .line 205
    const/16 v2, 0x2b02

    .line 207
    if-ne v0, v2, :cond_10

    .line 209
    goto :goto_0

    .line 211
    :cond_10
    const/16 v2, 0x109

    .line 212
    if-ne v0, v2, :cond_11

    .line 214
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startCloseSOSCAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 216
    move-result p1

    .line 219
    goto :goto_1

    .line 220
    :cond_11
    const/16 v2, 0x10b

    .line 221
    if-ne v0, v2, :cond_12

    .line 223
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startCloseSplitAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 225
    move-result p1

    .line 228
    goto :goto_1

    .line 229
    :cond_12
    const/16 v2, 0x10c

    .line 230
    if-ne v0, v2, :cond_13

    .line 232
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startOpenWindowFromFullscreenAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 234
    move-result p1

    .line 237
    goto :goto_1

    .line 238
    :cond_13
    const/16 v2, 0x10d

    .line 239
    if-ne v0, v2, :cond_14

    .line 241
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startOpenWindowFromSingleOpenAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 243
    move-result p1

    .line 246
    goto :goto_1

    .line 247
    :cond_14
    sget-object p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    const-string p2, "Unknown transition type: "

    .line 252
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 263
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v1

    .line 267
    :cond_15
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startCloseAnim(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 268
    move-result p1

    .line 271
    :goto_1
    const-string p2, "FF_NoUI/MWS_ACTION_WINDOW_CONTROLLER_RESIZE"

    .line 272
    invoke-static {p2}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 277
    if-nez p1, :cond_16

    .line 280
    sget-object p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->TAG:Ljava/lang/String;

    .line 282
    const-string p2, "No animation started, finish transition now!"

    .line 284
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v0, p5, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->finishTransition(ILcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/view/SurfaceControl$Transaction;)V

    .line 289
    :cond_16
    const/4 p0, 0x1

    .line 292
    return p0
    .line 293
.end method

.method public startCloseTaskFromFullSplitTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0x10b

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public startCloseTaskFromSplitTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 5
    const/16 v0, 0x109

    .line 8
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 13
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    return-void
    .line 20
.end method

.method public startFreeformFillSplit(Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    const/16 p1, 0x106

    .line 11
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 13
    return-void
    .line 16
.end method

.method public startFreeformReplaceSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ILandroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 6
    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 11
    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 13
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    const/16 p1, 0x108

    .line 18
    invoke-direct {p0, p1, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 20
    return-void
    .line 23
.end method

.method public startFreeformSqueeSplit(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 11
    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    const/16 p1, 0x107

    .line 18
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 20
    return-void
    .line 23
.end method

.method public startFreeformToFullTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isSplitScreenVisible()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 18
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getRootTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 20
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    .line 25
    move-result-object v0

    .line 28
    const/4 v1, 0x5

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    sub-int/2addr v1, v2

    .line 46
    :goto_0
    if-ltz v1, :cond_2

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    .line 55
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    .line 61
    move-result v4

    .line 64
    if-ne v4, v2, :cond_1

    .line 65
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 67
    move-result v4

    .line 70
    if-ne v4, v2, :cond_1

    .line 71
    move-object v0, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    const/4 v0, 0x0

    .line 78
    :goto_1
    if-eqz v0, :cond_3

    .line 79
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 81
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 83
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    :cond_3
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 88
    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 90
    invoke-virtual {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->freeformToFullscreen()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 93
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 96
    invoke-virtual {p2, v1, v0}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 98
    const/16 v0, 0x102

    .line 101
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 103
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 106
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 108
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 110
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    return-void
    .line 115
.end method

.method public startFreeformToSingleOpenTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0x103

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 7
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 11
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    return-void
    .line 16
.end method

.method public startFreeformToSplitTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0x104

    .line 2
    invoke-direct {p0, v0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 7
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 11
    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 16
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    return-void
    .line 23
.end method

.method public startFullToFreeformTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 15
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->hasFreeformDesktopMemory(I)Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 24
    invoke-static {v0}, Lmiui/app/MiuiFreeFormManager;->getFreeformLastScale(I)F

    .line 26
    move-result v0

    .line 29
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 30
    invoke-static {v2}, Lmiui/app/MiuiFreeFormManager;->getFreeformLastPosition(I)Landroid/graphics/Rect;

    .line 32
    move-result-object v2

    .line 35
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 36
    invoke-static {v2, v0, v3, v1}, Lmiui/app/MiuiFreeFormManager;->getFreeformRectDesktop(Landroid/graphics/Rect;FIZ)F

    .line 38
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 42
    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 53
    invoke-direct {p0, v1, v2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->getFreeformRectAfterAutoLayout(ILandroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 55
    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 61
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 63
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 65
    :cond_1
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 68
    invoke-virtual {p2, v0, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 70
    goto/16 :goto_1

    .line 73
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 75
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 79
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 83
    move-result v2

    .line 86
    const/4 v3, 0x1

    .line 87
    if-ne v2, v3, :cond_3

    .line 88
    move v1, v3

    .line 90
    :cond_3
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 91
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 96
    new-instance v3, Landroid/graphics/RectF;

    .line 97
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 99
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 102
    iget-object v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 104
    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 106
    invoke-static {v4, v2, v5, v1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;IZLandroid/graphics/RectF;)F

    .line 108
    move-result v1

    .line 111
    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 112
    div-int/lit8 v2, v2, 0x2

    .line 114
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 116
    div-int/lit8 v4, v4, 0x2

    .line 118
    int-to-float v2, v2

    .line 120
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 121
    move-result v5

    .line 124
    mul-float/2addr v5, v1

    .line 125
    const/high16 v6, 0x40000000    # 2.0f

    .line 126
    div-float/2addr v5, v6

    .line 128
    sub-float/2addr v2, v5

    .line 129
    float-to-int v2, v2

    .line 130
    int-to-float v4, v4

    .line 131
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 132
    move-result v5

    .line 135
    mul-float/2addr v5, v1

    .line 136
    div-float/2addr v5, v6

    .line 137
    sub-float/2addr v4, v5

    .line 138
    float-to-int v4, v4

    .line 139
    new-instance v5, Landroid/graphics/Rect;

    .line 140
    int-to-float v6, v2

    .line 142
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 143
    move-result v7

    .line 146
    add-float/2addr v7, v6

    .line 147
    float-to-int v6, v7

    .line 148
    int-to-float v7, v4

    .line 149
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 150
    move-result v3

    .line 153
    add-float/2addr v3, v7

    .line 154
    float-to-int v3, v3

    .line 155
    invoke-direct {v5, v2, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 156
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 159
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 161
    invoke-static {v2, v3, v5, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 163
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 166
    move-result-object v6

    .line 169
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 170
    const/4 v8, 0x0

    .line 172
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 173
    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 175
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 177
    const/4 v11, 0x0

    .line 179
    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getFreeFormAccessibleArea(Landroid/content/Context;ZIIZ)Landroid/graphics/Rect;

    .line 180
    move-result-object v11

    .line 183
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 184
    move-result-object v6

    .line 187
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 188
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 190
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 192
    move-object v8, v5

    .line 194
    move v10, v1

    .line 195
    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getAvoidFreeformBounds(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 199
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 201
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 203
    move-result-object v3

    .line 206
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 210
    invoke-direct {p0, v0, v5, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->getFreeformRectAfterAutoLayout(ILandroid/graphics/Rect;F)Landroid/graphics/Rect;

    .line 212
    move-result-object v0

    .line 215
    if-eqz v0, :cond_4

    .line 216
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 218
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 220
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 222
    :cond_4
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 225
    invoke-virtual {p2, v0, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 227
    :goto_1
    const/16 v0, 0xfa

    .line 230
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 232
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 235
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 237
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    return-void
    .line 242
.end method

.method public startFullToSplitTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0xfb

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 7
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    return-void
    .line 14
.end method

.method public startMinimizedModeTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v2

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    const/16 v0, 0x2b02

    .line 15
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 17
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 20
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 22
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getMiuiFreeformTaskInfo(I)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 24
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 30
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 32
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFreeformScale()F

    .line 34
    move-result p2

    .line 37
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    move-result-object p2

    .line 41
    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 46
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    invoke-virtual {p2, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    const/16 v0, 0x10a

    .line 54
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 56
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 59
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 61
    invoke-virtual {p2, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 66
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 68
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 73
    move-result p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 79
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 81
    move-result-object p0

    .line 84
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->autoLayoutOthersIfNeed(I)V

    .line 87
    :cond_2
    return-void
    .line 90
.end method

.method public startOpenWindowFromFullscreenTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0x10c

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public startOpenWindowFromSingleOpenTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0x10d

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    return-void
    .line 7
.end method

.method public startRemoveTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public startSingleOpenToDesktopTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/window/WindowContainerTransaction;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 17
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 19
    move-result-object v2

    .line 22
    const/high16 v3, 0x3f800000    # 1.0f

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->isAutoLayoutMode()Z

    .line 27
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 33
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 35
    move-result-object v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 41
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getScaleAfterAutoLayout(I)F

    .line 43
    move-result v2

    .line 46
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    move v2, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 53
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v2, p1, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeFormBoundsEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 59
    move-result v2

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 63
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 65
    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 70
    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 72
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    move-result-object v6

    .line 77
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 81
    invoke-virtual {p3, v4, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 83
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 86
    invoke-virtual {v4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 88
    move-result-object v4

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 92
    move-result v5

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 96
    move-result v6

    .line 99
    invoke-virtual {v4, p2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 103
    move-result v5

    .line 106
    int-to-float v5, v5

    .line 107
    mul-float/2addr v5, v3

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 109
    move-result v6

    .line 112
    int-to-float v6, v6

    .line 113
    div-float/2addr v5, v6

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 115
    move-result v0

    .line 118
    int-to-float v0, v0

    .line 119
    mul-float/2addr v0, v3

    .line 120
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 121
    move-result v1

    .line 124
    int-to-float v1, v1

    .line 125
    div-float/2addr v0, v1

    .line 126
    invoke-virtual {v4, p2, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 127
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 130
    invoke-virtual {p3, p2, v4}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 132
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 135
    new-instance p2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 137
    invoke-direct {p2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 139
    invoke-virtual {p2, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 142
    move-result-object p2

    .line 145
    invoke-virtual {p3, p1, p2}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 146
    const/16 p1, 0xfd

    .line 149
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 151
    return-void
    .line 154
.end method

.method public startSingleOpenToFreeformTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 5
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 8
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 10
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    move v1, v3

    .line 23
    :cond_0
    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 24
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    new-instance v3, Landroid/graphics/RectF;

    .line 30
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 32
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 35
    iget-object v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 39
    invoke-static {v4, v2, v5, v1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;IZLandroid/graphics/RectF;)F

    .line 41
    move-result v1

    .line 44
    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 45
    div-int/lit8 v2, v2, 0x2

    .line 47
    iget v4, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 49
    div-int/lit8 v4, v4, 0x2

    .line 51
    int-to-float v2, v2

    .line 53
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 54
    move-result v5

    .line 57
    mul-float/2addr v5, v1

    .line 58
    const/high16 v6, 0x40000000    # 2.0f

    .line 59
    div-float/2addr v5, v6

    .line 61
    sub-float/2addr v2, v5

    .line 62
    float-to-int v2, v2

    .line 63
    int-to-float v4, v4

    .line 64
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 65
    move-result v5

    .line 68
    mul-float/2addr v5, v1

    .line 69
    div-float/2addr v5, v6

    .line 70
    sub-float/2addr v4, v5

    .line 71
    float-to-int v4, v4

    .line 72
    new-instance v5, Landroid/graphics/Rect;

    .line 73
    int-to-float v6, v2

    .line 75
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 76
    move-result v7

    .line 79
    add-float/2addr v7, v6

    .line 80
    float-to-int v6, v7

    .line 81
    int-to-float v7, v4

    .line 82
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 83
    move-result v3

    .line 86
    add-float/2addr v3, v7

    .line 87
    float-to-int v3, v3

    .line 88
    invoke-direct {v5, v2, v4, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 92
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 94
    invoke-static {v2, v3, v5, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 96
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 99
    move-result-object v6

    .line 102
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 103
    const/4 v8, 0x0

    .line 105
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 106
    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 108
    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 110
    const/4 v11, 0x0

    .line 112
    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getFreeFormAccessibleArea(Landroid/content/Context;ZIIZ)Landroid/graphics/Rect;

    .line 113
    move-result-object v11

    .line 116
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 117
    move-result-object v6

    .line 120
    iget-object v7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 121
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 123
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 125
    move-object v8, v5

    .line 127
    move v10, v1

    .line 128
    invoke-virtual/range {v6 .. v11}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getAvoidFreeformBounds(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/Rect;)V

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 132
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 134
    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 139
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 141
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 150
    invoke-virtual {p2, p1, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 152
    const/16 p1, 0xfd

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 157
    return-void
    .line 160
.end method

.method public startSingleOpenToFullTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 1

    .line 1
    const/16 v0, 0xfc

    .line 2
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 7
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 9
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    return-void
    .line 14
.end method

.method public startSplitToDesktopTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    invoke-virtual {p3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    move-result-object v2

    .line 20
    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 21
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object v2

    .line 26
    new-instance v3, Landroid/graphics/Rect;

    .line 27
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 29
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 32
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 34
    move-result-object v4

    .line 37
    const/high16 v5, 0x3f800000    # 1.0f

    .line 38
    if-eqz v4, :cond_1

    .line 40
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->isAutoLayoutMode()Z

    .line 42
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 48
    invoke-virtual {v4, v6}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 50
    move-result-object v6

    .line 53
    iget v7, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 54
    invoke-virtual {v4, v7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getDestinationAfterAutoLayout(I)Landroid/graphics/Rect;

    .line 56
    move-result-object v7

    .line 59
    if-eqz v6, :cond_0

    .line 60
    if-eqz v7, :cond_0

    .line 62
    iget v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 64
    invoke-virtual {v4, v8}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getScaleAfterAutoLayout(I)F

    .line 66
    move-result v8

    .line 69
    iget v9, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 70
    invoke-virtual {v4, v9}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->getScaleAfterAutoLayout(I)F

    .line 72
    move-result v4

    .line 75
    invoke-virtual {v1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 79
    goto :goto_0

    .line 82
    :cond_0
    move v4, v5

    .line 83
    move v8, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 86
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 88
    move-result-object v4

    .line 91
    invoke-virtual {v4, p1, v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeFormBoundsEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 92
    move-result v8

    .line 95
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 96
    invoke-virtual {v4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getMiuiFreeformModeController()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 98
    move-result-object v4

    .line 101
    invoke-virtual {v4, p3, v3, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeFormBoundsEnteringDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    .line 102
    move-result v4

    .line 105
    :goto_0
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 106
    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 108
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    move-result-object v9

    .line 113
    invoke-virtual {v6, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 117
    invoke-virtual {p4, v6, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 119
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 122
    invoke-virtual {v6}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 124
    move-result-object v6

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 128
    move-result v7

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 132
    move-result v9

    .line 135
    invoke-virtual {v6, p2, v7, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 139
    move-result v7

    .line 142
    int-to-float v7, v7

    .line 143
    mul-float/2addr v7, v5

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 145
    move-result v9

    .line 148
    int-to-float v9, v9

    .line 149
    div-float/2addr v7, v9

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 151
    move-result v0

    .line 154
    int-to-float v0, v0

    .line 155
    mul-float/2addr v0, v5

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 157
    move-result v1

    .line 160
    int-to-float v1, v1

    .line 161
    div-float/2addr v0, v1

    .line 162
    invoke-virtual {v6, p2, v7, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 163
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 166
    invoke-virtual {p4, p2, v6}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 168
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 171
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 173
    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 175
    invoke-virtual {v0, v8}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 178
    move-result-object v0

    .line 181
    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 182
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 185
    iget v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 187
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    move-result-object v1

    .line 192
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 196
    invoke-virtual {p4, p2, v3}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 198
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 201
    iget v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 203
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskLeash(I)Landroid/view/SurfaceControl;

    .line 205
    move-result-object p2

    .line 208
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 209
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 211
    move-result-object v0

    .line 214
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 215
    move-result v1

    .line 218
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 219
    move-result v6

    .line 222
    invoke-virtual {v0, p2, v1, v6}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 223
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 226
    move-result v1

    .line 229
    int-to-float v1, v1

    .line 230
    mul-float/2addr v1, v5

    .line 231
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 232
    move-result v6

    .line 235
    int-to-float v6, v6

    .line 236
    div-float/2addr v1, v6

    .line 237
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 238
    move-result v2

    .line 241
    int-to-float v2, v2

    .line 242
    mul-float/2addr v2, v5

    .line 243
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 244
    move-result v3

    .line 247
    int-to-float v3, v3

    .line 248
    div-float/2addr v2, v3

    .line 249
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 250
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 253
    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 255
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 258
    new-instance v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 260
    invoke-direct {v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 262
    invoke-virtual {v0, v4}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 265
    move-result-object v0

    .line 268
    invoke-virtual {p4, p2, v0}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 269
    const/16 p2, 0xff

    .line 272
    invoke-direct {p0, p2, p4}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 274
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 277
    iget p4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 279
    invoke-virtual {p2, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 284
    iget p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 286
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    return-void
    .line 291
.end method

.method public startSplitToFreeformTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 2
    iget v1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 9
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 11
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 13
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/android/wm/shell/common/DisplayLayout;->getOrientation()I

    .line 17
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 26
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    new-instance v2, Landroid/graphics/RectF;

    .line 32
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 34
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 37
    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 39
    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 41
    invoke-static {v3, v0, v4, v1, v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->getFreeformBoundsAndScale(Landroid/content/Context;Ljava/lang/String;IZLandroid/graphics/RectF;)F

    .line 43
    move-result v0

    .line 46
    iget v1, p2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 47
    div-int/lit8 v1, v1, 0x2

    .line 49
    iget v3, p2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 51
    div-int/lit8 v3, v3, 0x2

    .line 53
    int-to-float v1, v1

    .line 55
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 56
    move-result v4

    .line 59
    mul-float/2addr v4, v0

    .line 60
    const/high16 v5, 0x40000000    # 2.0f

    .line 61
    div-float/2addr v4, v5

    .line 63
    sub-float/2addr v1, v4

    .line 64
    float-to-int v1, v1

    .line 65
    int-to-float v3, v3

    .line 66
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 67
    move-result v4

    .line 70
    mul-float/2addr v4, v0

    .line 71
    div-float/2addr v4, v5

    .line 72
    sub-float/2addr v3, v4

    .line 73
    float-to-int v3, v3

    .line 74
    new-instance v4, Landroid/graphics/Rect;

    .line 75
    int-to-float v5, v1

    .line 77
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 78
    move-result v6

    .line 81
    add-float/2addr v6, v5

    .line 82
    float-to-int v5, v6

    .line 83
    int-to-float v6, v3

    .line 84
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 85
    move-result v2

    .line 88
    add-float/2addr v2, v6

    .line 89
    float-to-int v2, v2

    .line 90
    invoke-direct {v4, v1, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 94
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mMiuiDisplayInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;

    .line 96
    invoke-static {v1, v2, v4, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/HotAreaController;->restrictedToValidFreeformRegion(Landroid/content/Context;Lcom/android/wm/shell/miuimultiwinswitch/MiuiDisplayInfo;Landroid/graphics/Rect;F)V

    .line 98
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 101
    move-result-object v5

    .line 104
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 105
    const/4 v7, 0x0

    .line 107
    iget-object p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 108
    iget v8, p2, Landroid/graphics/Rect;->top:I

    .line 110
    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    .line 112
    const/4 v10, 0x0

    .line 114
    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getFreeFormAccessibleArea(Landroid/content/Context;ZIIZ)Landroid/graphics/Rect;

    .line 115
    move-result-object v10

    .line 118
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 119
    move-result-object v5

    .line 122
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 123
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 125
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 127
    move-object v7, v4

    .line 129
    move v9, v0

    .line 130
    invoke-virtual/range {v5 .. v10}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getAvoidFreeformBounds(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/String;FLandroid/graphics/Rect;)V

    .line 131
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformStartScale:Landroid/util/SparseArray;

    .line 134
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 136
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    move-result-object v0

    .line 141
    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 145
    invoke-virtual {p3, p2, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 147
    const/16 p2, 0xff

    .line 150
    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 152
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 155
    iget p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 157
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 162
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 164
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 167
    invoke-virtual {p2, p1, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 169
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 172
    invoke-virtual {p0, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 174
    return-void
    .line 177
.end method

.method public startSplitToFullTransition(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScLeftOrTopScreen(I)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 20
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->isTaskInSoScRightOrBottomScreen(I)Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->getTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-eqz v0, :cond_2

    .line 39
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 41
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 43
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    :cond_2
    const/16 v0, 0xfe

    .line 48
    invoke-direct {p0, v0, p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 53
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 55
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    return-void
    .line 60
.end method

.method public swapSingle(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 3
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 5
    const/16 v0, 0x101

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 15
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 19
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    return-void
    .line 28
.end method

.method public swapSplit(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    if-eqz p3, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mSplitScreenController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 7
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->animateDividerVisibility(ZLcom/android/wm/shell/sosc/SoScSplitScreenController;)V

    .line 9
    const/16 v0, 0x100

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 14
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 21
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mOperateSplitTaskID:I

    .line 23
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 27
    move-result-object v0

    .line 30
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 31
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    move-result-object p2

    .line 36
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 42
    move-result-object p1

    .line 45
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 46
    invoke-virtual {p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 48
    move-result-object p2

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    const-string p0, "MiuiTaskTransitionHandler"

    .line 56
    const-string p1, "get SOSC info error"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void
    .line 63
.end method

.method public switchFreeformToSplitUnsupportedTrans(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mFreeformModeTaskRepository:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 2
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->onTaskStateChanged(IILandroid/view/SurfaceControl$Transaction;)V

    .line 8
    const/16 v0, 0x105

    .line 11
    invoke-direct {p0, v0, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;)V

    .line 13
    iget-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingFreeformModeTaskInfo:Landroid/util/SparseArray;

    .line 16
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 18
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->miuiFreeFormStackInfo:Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 20
    invoke-virtual {p3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mPendingTaskInfo:Landroid/util/SparseArray;

    .line 25
    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 27
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 32
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 34
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 42
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->mContext:Landroid/content/Context;

    .line 46
    const p3, 0x7f1303b2    # @string/drag_shadow_split_unsupported_app '%s doesn't support Split screen'

    .line 48
    invoke-direct {p0, p2, p3, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskTransitionHandler;->toastNotSupport(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 51
    return-void
    .line 54
.end method
