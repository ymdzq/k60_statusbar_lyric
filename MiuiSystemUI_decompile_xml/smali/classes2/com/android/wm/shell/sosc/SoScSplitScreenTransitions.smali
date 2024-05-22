.class Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoScSplitScreenTransitions"

.field public static final sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

.field public static final sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

.field public static final sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;


# instance fields
.field private mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field private mAnimatingTransition:Landroid/os/IBinder;

.field private final mAnimations:Ljava/util/ArrayList;

.field private mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mOnFinish:Ljava/lang/Runnable;

.field mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

.field mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

.field mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

.field mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

.field mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

.field private final mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field private final mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$2qAgz8I_p7DGKJHKQ4E3-lnw5D4(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->lambda$playSingleExitTransition$5([I)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$EPRQsiEsOzjZ6I0CF_onBAEbT-k(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->lambda$playDragDismissAnimation$1(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$FL2eNK85nO4DL1PwZpKBEq4AJhE(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->lambda$playDragDismissAnimation$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$QcT1y4t5hECtH4OWZ1t15z1Foe0(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->lambda$startFadeAnimation$4(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_LWayxvHuJn4A5roC-fXLp5RCwk(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->lambda$playResizeAnimation$3(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$r0vRGen-PCYzbhivf-YObdT_NdM(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->lambda$playResizeAnimation$2()V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmAnimations(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Lcom/android/wm/shell/common/TransactionPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 2
    return-object p0
    .line 4
.end method

.method public static bridge synthetic -$$Nest$fgetmTransitions(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)Lcom/android/wm/shell/transition/Transitions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    return-object p0
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
    sput-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

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
    sput-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->sWindowSizeFastEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 38
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 40
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 42
    new-array v1, v1, [F

    .line 45
    fill-array-data v1, :array_2

    .line 47
    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 54
    sput-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 56
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3ed1eb85    # 0.41f
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3e800000    # 0.25f
    .end array-data

    .line 68
    :array_2
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3e99999a    # 0.3f
    .end array-data
    .line 76
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/sosc/SoScStageCoordinator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 6
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 14
    new-instance v1, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda2;

    .line 16
    invoke-direct {v1, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)V

    .line 18
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 30
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 32
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 34
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 36
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 38
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    .line 40
    iput-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 42
    return-void
    .line 44
.end method

.method private getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 8
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 17
    return-object p0

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 26
    return-object p0

    .line 28
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingResizeEnter(Landroid/os/IBinder;)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 35
    return-object p0

    .line 37
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingSingleExit(Landroid/os/IBinder;)Z

    .line 38
    move-result p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 44
    return-object p0

    .line 46
    :cond_4
    const/4 p0, 0x0

    .line 47
    return-object p0
    .line 48
.end method

.method private initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 6
    return-void
    .line 8
.end method

.method private synthetic lambda$playDragDismissAnimation$0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method

.method private lambda$playDragDismissAnimation$1(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 13
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 15
    new-instance p2, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda4;

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-direct {p2, v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 20
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method private synthetic lambda$playResizeAnimation$2()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 3
    return-void
    .line 6
.end method

.method private lambda$playResizeAnimation$3(Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 13
    iget-object p1, p1, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 15
    new-instance p2, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda4;

    .line 17
    const/4 v0, 0x1

    .line 19
    invoke-direct {p2, v0, p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 20
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 23
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method private synthetic lambda$playSingleExitTransition$5([I)V
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
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method private static synthetic lambda$startFadeAnimation$4(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FFLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    move-result p4

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    sub-float/2addr v0, p4

    .line 16
    mul-float/2addr v0, p2

    .line 17
    mul-float/2addr p3, p4

    .line 18
    add-float/2addr p3, v0

    .line 19
    invoke-virtual {p1, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 20
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method private playInternalAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move-object/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 12
    move-result v5

    .line 15
    const/4 v6, 0x1

    .line 16
    invoke-static {v1, v6}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 17
    move-result v6

    .line 20
    const/4 v7, 0x0

    .line 21
    :goto_0
    if-ltz v6, :cond_10

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 24
    move-result-object v8

    .line 27
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v8

    .line 31
    check-cast v8, Landroid/window/TransitionInfo$Change;

    .line 32
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 34
    move-result-object v9

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 38
    move-result-object v10

    .line 41
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v10

    .line 45
    check-cast v10, Landroid/window/TransitionInfo$Change;

    .line 46
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 48
    move-result v10

    .line 51
    invoke-static {v1, v8}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 52
    move-result v11

    .line 55
    const/high16 v12, 0x3f800000    # 1.0f

    .line 56
    const/4 v13, 0x6

    .line 58
    if-ne v10, v13, :cond_0

    .line 59
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 61
    move-result-object v13

    .line 64
    if-eqz v13, :cond_0

    .line 65
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 67
    move-result-object v13

    .line 70
    invoke-virtual {v1, v13}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 71
    move-result-object v13

    .line 74
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 75
    move-result-object v14

    .line 78
    invoke-virtual {v2, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 82
    move-result-object v14

    .line 85
    invoke-virtual {v2, v14, v12}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 89
    move-result-object v12

    .line 92
    invoke-virtual {v1, v11}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 93
    move-result-object v14

    .line 96
    invoke-virtual {v14}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 97
    move-result-object v14

    .line 100
    invoke-virtual {v2, v12, v14}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 101
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 104
    move-result-object v12

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 108
    move-result-object v14

    .line 111
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 112
    move-result v14

    .line 115
    sub-int/2addr v14, v6

    .line 116
    invoke-virtual {v2, v12, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 117
    iget-object v12, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 120
    invoke-virtual {v13}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 122
    move-result-object v13

    .line 125
    invoke-virtual {v12, v9, v13}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 126
    iget-object v12, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 131
    move-result-object v13

    .line 134
    iget v13, v13, Landroid/graphics/Point;->x:I

    .line 135
    int-to-float v13, v13

    .line 137
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 138
    move-result-object v14

    .line 141
    iget v14, v14, Landroid/graphics/Point;->y:I

    .line 142
    int-to-float v14, v14

    .line 144
    invoke-virtual {v12, v9, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 145
    :cond_0
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 148
    move-result-object v12

    .line 151
    move-object/from16 v13, p6

    .line 152
    invoke-virtual {v13, v12}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 154
    move-result v12

    .line 157
    if-eqz v5, :cond_1

    .line 158
    iget-object v14, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 160
    iget-boolean v14, v14, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;->mResizeAnim:Z

    .line 162
    if-nez v14, :cond_1

    .line 164
    if-eqz v12, :cond_1

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 168
    move-result v14

    .line 171
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 172
    move-result v14

    .line 175
    if-eqz v14, :cond_1

    .line 176
    const/4 v14, 0x3

    .line 178
    if-ne v10, v14, :cond_1

    .line 179
    move-object v7, v9

    .line 181
    :cond_1
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 182
    move-result-object v14

    .line 185
    invoke-virtual {v3, v14}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result v14

    .line 189
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 190
    move-result-object v15

    .line 193
    invoke-virtual {v4, v15}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v15

    .line 197
    move-object/from16 v16, v7

    .line 198
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 200
    move-result v7

    .line 203
    const/high16 v13, 0x400000

    .line 204
    if-ne v7, v13, :cond_2

    .line 206
    const/4 v7, 0x1

    .line 208
    goto :goto_1

    .line 209
    :cond_2
    const/4 v7, 0x0

    .line 210
    :goto_1
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 211
    move-result-object v13

    .line 214
    invoke-virtual {v3, v13}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result v13

    .line 218
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 219
    move-result-object v3

    .line 222
    invoke-virtual {v4, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v3

    .line 226
    if-eqz v5, :cond_4

    .line 227
    if-nez v13, :cond_3

    .line 229
    if-eqz v3, :cond_4

    .line 231
    :cond_3
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 233
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 235
    move-result-object v13

    .line 238
    iget v13, v13, Landroid/graphics/Point;->x:I

    .line 239
    int-to-float v13, v13

    .line 241
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 242
    move-result-object v4

    .line 245
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 246
    int-to-float v4, v4

    .line 248
    invoke-virtual {v3, v9, v13, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 249
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 252
    const/4 v4, 0x0

    .line 254
    invoke-virtual {v3, v9, v4}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 255
    goto :goto_2

    .line 258
    :cond_4
    if-eqz v12, :cond_5

    .line 259
    const/high16 v3, 0x3f800000    # 1.0f

    .line 261
    invoke-virtual {v2, v9, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 263
    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 266
    goto :goto_2

    .line 269
    :cond_5
    if-eqz v5, :cond_6

    .line 270
    if-nez v14, :cond_7

    .line 272
    :cond_6
    if-eqz v15, :cond_8

    .line 274
    :cond_7
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 276
    move-result-object v3

    .line 279
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 280
    int-to-float v3, v3

    .line 282
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 283
    move-result-object v4

    .line 286
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 287
    int-to-float v4, v4

    .line 289
    invoke-virtual {v2, v9, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 290
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 293
    move-result-object v3

    .line 296
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 297
    move-result v3

    .line 300
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 301
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 305
    move-result v4

    .line 308
    invoke-virtual {v2, v9, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 309
    goto :goto_2

    .line 312
    :cond_8
    if-eqz v7, :cond_9

    .line 313
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 315
    move-result-object v3

    .line 318
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 319
    int-to-float v3, v3

    .line 321
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 322
    move-result-object v4

    .line 325
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 326
    int-to-float v4, v4

    .line 328
    invoke-virtual {v2, v9, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 329
    const v3, 0x7fffffff

    .line 332
    invoke-virtual {v2, v9, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 335
    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 338
    :cond_9
    :goto_2
    if-nez v12, :cond_f

    .line 341
    if-nez v14, :cond_f

    .line 343
    if-nez v15, :cond_f

    .line 345
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 347
    move-result-object v3

    .line 350
    if-nez v3, :cond_a

    .line 351
    if-nez v7, :cond_a

    .line 353
    goto/16 :goto_3

    .line 355
    :cond_a
    if-eqz v5, :cond_b

    .line 357
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 359
    iget-boolean v3, v3, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;->mResizeAnim:Z

    .line 361
    if-eqz v3, :cond_b

    .line 363
    goto :goto_3

    .line 365
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 366
    move-result v3

    .line 369
    const/4 v4, 0x4

    .line 370
    if-eqz v3, :cond_c

    .line 371
    iget-object v3, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 373
    iget v3, v3, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;->mReason:I

    .line 375
    if-ne v3, v4, :cond_c

    .line 377
    goto :goto_3

    .line 379
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getType()I

    .line 380
    move-result v3

    .line 383
    invoke-static {v3}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    .line 384
    move-result v3

    .line 387
    if-nez v3, :cond_e

    .line 388
    const/4 v3, 0x2

    .line 390
    if-eq v10, v3, :cond_d

    .line 391
    if-ne v10, v4, :cond_e

    .line 393
    :cond_d
    const/4 v3, 0x0

    .line 395
    invoke-direct {v0, v9, v3}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    .line 396
    goto :goto_3

    .line 399
    :cond_e
    const/4 v3, 0x6

    .line 400
    if-ne v10, v3, :cond_f

    .line 401
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 403
    move-result-object v3

    .line 406
    if-eqz v3, :cond_f

    .line 407
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 409
    move-result-object v3

    .line 412
    invoke-virtual {v1, v11}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 413
    move-result-object v4

    .line 416
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 417
    move-result-object v4

    .line 420
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 421
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 424
    move-result-object v3

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 428
    move-result-object v4

    .line 431
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 432
    move-result v4

    .line 435
    add-int/lit8 v4, v4, 0x1

    .line 436
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 438
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 441
    move-result-object v3

    .line 444
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 445
    move-result-object v4

    .line 448
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 449
    int-to-float v4, v4

    .line 451
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 452
    move-result-object v7

    .line 455
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 456
    int-to-float v7, v7

    .line 458
    invoke-virtual {v2, v3, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 459
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 462
    move-result-object v3

    .line 465
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 466
    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 469
    move-result-object v3

    .line 472
    const/4 v4, 0x0

    .line 473
    invoke-direct {v0, v3, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    .line 474
    :cond_f
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 477
    move-object/from16 v3, p4

    .line 479
    move-object/from16 v4, p5

    .line 481
    move-object/from16 v7, v16

    .line 483
    goto/16 :goto_0

    .line 485
    :cond_10
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 489
    move-result v1

    .line 492
    if-eqz v1, :cond_11

    .line 493
    if-eqz v7, :cond_11

    .line 495
    const/4 v1, 0x1

    .line 497
    invoke-direct {v0, v7, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->startFadeAnimation(Landroid/view/SurfaceControl;Z)V

    .line 498
    const/4 v1, 0x0

    .line 501
    invoke-virtual {v2, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 502
    :cond_11
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 505
    const/4 v1, 0x0

    .line 508
    invoke-virtual {v0, v1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 509
    return-void
    .line 512
.end method

.method private startFadeAnimation(Landroid/view/SurfaceControl;Z)V
    .locals 9

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    if-eqz p2, :cond_0

    .line 4
    move v6, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    move v6, v1

    .line 9
    :goto_0
    sub-float/2addr v0, v6

    .line 10
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    .line 11
    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 13
    const/4 v1, 0x2

    .line 16
    new-array v2, v1, [F

    .line 17
    const/4 v3, 0x0

    .line 19
    aput v0, v2, v3

    .line 20
    const/4 v3, 0x1

    .line 22
    aput v6, v2, v3

    .line 23
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 25
    move-result-object v8

    .line 28
    const-wide/16 v2, 0x85

    .line 29
    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    if-eqz p2, :cond_1

    .line 34
    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    sget-object p2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 39
    :goto_1
    invoke-virtual {v8, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 41
    new-instance p2, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;

    .line 44
    invoke-direct {p2, v5, p1, v0, v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)V

    .line 46
    invoke-virtual {v8, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 49
    new-instance p2, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;

    .line 52
    move-object v2, p2

    .line 54
    move-object v3, p0

    .line 55
    move-object v4, p1

    .line 56
    move-object v7, v8

    .line 57
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$1;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;FLandroid/animation/ValueAnimator;)V

    .line 58
    invoke-virtual {v8, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 71
    new-instance p1, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda4;

    .line 73
    invoke-direct {p1, v1, v8}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 75
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
    .line 83
.end method

.method private startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFLjava/lang/Runnable;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v3, p1

    .line 4
    move-object/from16 v0, p2

    .line 6
    move-object/from16 v6, p3

    .line 8
    move-object/from16 v7, p4

    .line 10
    iget v2, v6, Landroid/graphics/RectF;->left:F

    .line 12
    iget v4, v6, Landroid/graphics/RectF;->top:F

    .line 14
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 16
    move/from16 v8, p5

    .line 19
    move/from16 v9, p6

    .line 21
    invoke-virtual {v0, v3, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 23
    move/from16 v10, p9

    .line 26
    invoke-virtual {v0, v3, v10}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 28
    new-instance v11, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;

    .line 31
    invoke-direct {v11, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;)V

    .line 33
    iget-object v0, v1, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    .line 36
    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 38
    move-result-object v2

    .line 41
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 42
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 44
    sget-object v4, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->sWindowSizeEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 47
    const-string v5, "scaleX"

    .line 49
    invoke-virtual {v0, v5, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object v0

    .line 54
    const-string v5, "scaleY"

    .line 55
    invoke-virtual {v0, v5, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 57
    move-result-object v0

    .line 60
    sget-object v4, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->sWindowMoveEase:Lmiuix/animation/base/AnimSpecialConfig;

    .line 61
    const-string v5, "posX"

    .line 63
    invoke-virtual {v0, v5, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 65
    move-result-object v0

    .line 68
    const-string v5, "posY"

    .line 69
    invoke-virtual {v0, v5, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 71
    move-result-object v12

    .line 74
    new-instance v13, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;

    .line 75
    move-object v0, v13

    .line 77
    move-object v4, v11

    .line 78
    move-object/from16 v5, p11

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$2;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$SoScWinAnimInfo;Ljava/lang/Runnable;)V

    .line 81
    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    .line 84
    move-result-object v0

    .line 87
    invoke-virtual {v12, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 88
    move-result-object v0

    .line 91
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 95
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 96
    move-result-object v1

    .line 99
    const-string v2, "posX"

    .line 100
    iget v3, v6, Landroid/graphics/RectF;->left:F

    .line 102
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 104
    move-result-object v3

    .line 107
    const-string v4, "posY"

    .line 108
    iget v5, v6, Landroid/graphics/RectF;->top:F

    .line 110
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    move-result-object v11

    .line 115
    const-string v12, "scaleX"

    .line 116
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 118
    move-result-object v13

    .line 121
    const-string v14, "scaleY"

    .line 122
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 124
    move-result-object v15

    .line 127
    const-string v16, "leashAlpha"

    .line 128
    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 130
    move-result-object v17

    .line 133
    move-object v8, v2

    .line 134
    move-object v9, v3

    .line 135
    move-object v10, v4

    .line 136
    filled-new-array/range {v8 .. v17}, [Ljava/lang/Object;

    .line 137
    move-result-object v2

    .line 140
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 141
    move-result-object v1

    .line 144
    const-string v2, "posX"

    .line 145
    iget v3, v7, Landroid/graphics/RectF;->left:F

    .line 147
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v3

    .line 152
    const-string v4, "posY"

    .line 153
    iget v5, v7, Landroid/graphics/RectF;->top:F

    .line 155
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    move-result-object v5

    .line 160
    const-string v6, "scaleX"

    .line 161
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    move-result-object v7

    .line 166
    const-string v8, "scaleY"

    .line 167
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    move-result-object v9

    .line 172
    const-string v10, "leashAlpha"

    .line 173
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    move-result-object v11

    .line 178
    move-object/from16 p0, v2

    .line 179
    move-object/from16 p1, v3

    .line 181
    move-object/from16 p2, v4

    .line 183
    move-object/from16 p3, v5

    .line 185
    move-object/from16 p4, v6

    .line 187
    move-object/from16 p5, v7

    .line 189
    move-object/from16 p6, v8

    .line 191
    move-object/from16 p7, v9

    .line 193
    move-object/from16 p8, v10

    .line 195
    move-object/from16 p9, v11

    .line 197
    move-object/from16 p10, v0

    .line 199
    filled-new-array/range {p0 .. p10}, [Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 204
    invoke-interface {v1, v0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 205
    return-void
    .line 208
.end method


# virtual methods
.method public end()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v0, v2

    .line 15
    :goto_0
    if-ltz v0, :cond_1

    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 23
    check-cast v3, Landroid/animation/Animator;

    .line 24
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 26
    iget-object v4, v4, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 28
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v5, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 33
    invoke-direct {v5, v3, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;I)V

    .line 35
    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 38
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    return v2
    .line 46
.end method

.method public isPendingDismiss(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 6
    if-ne p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isPendingEnter(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 6
    if-ne p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isPendingResize(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 6
    if-ne p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isPendingResizeEnter(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 6
    if-ne p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isPendingSingleExit(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    .line 6
    if-ne p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public isPendingTransition(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 2
    if-eq p4, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 7
    if-eqz v1, :cond_1

    .line 9
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v5, p4

    .line 14
    move-object v6, p5

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 16
    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    sub-int/2addr p1, p2

    .line 27
    :goto_0
    if-ltz p1, :cond_2

    .line 28
    iget-object p3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p3

    .line 35
    check-cast p3, Landroid/animation/Animator;

    .line 36
    iget-object p4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 38
    iget-object p4, p4, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 40
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p5, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda1;

    .line 45
    invoke-direct {p5, p3, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;I)V

    .line 47
    check-cast p4, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 50
    invoke-virtual {p4, p5}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 52
    add-int/lit8 p1, p1, -0x1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-void
    .line 58
.end method

.method public onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 13
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 27
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 29
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 31
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 34
    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 45
    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 52
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 54
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 62
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 68
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 70
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 72
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingResizeEnter(Landroid/os/IBinder;)Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 86
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 88
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 90
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 93
    goto :goto_0

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingSingleExit(Landroid/os/IBinder;)Z

    .line 98
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 104
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 106
    invoke-virtual {v0, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 108
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 111
    :cond_6
    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 113
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 115
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    .line 117
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 119
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 122
    if-eqz v0, :cond_8

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 126
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    move-result p1

    .line 134
    if-eqz p1, :cond_7

    .line 135
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 137
    goto :goto_1

    .line 139
    :cond_7
    const-string p0, "SoScSplitScreenTransitions"

    .line 140
    const-string p1, "New animations started, Do not reset finishCallback."

    .line 142
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_8
    :goto_1
    return-void
    .line 147
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onTransitionConsumed transition:"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " aborted:"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " mPendingEnter:"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " mPendingDismiss:"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " mPendingResize:"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    const-string v1, "SoScSplitScreenTransitions"

    .line 54
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    .line 59
    move-result v0

    .line 62
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    if-nez p2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 68
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->finishEnterSplitScreen(Landroid/view/SurfaceControl$Transaction;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 73
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onConsumed(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 78
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 80
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    .line 86
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 92
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onConsumed(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 97
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->continueUpdateSoScState()V

    .line 99
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    .line 105
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 111
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onConsumed(Z)V

    .line 113
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingResizeEnter(Landroid/os/IBinder;)Z

    .line 119
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 125
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onConsumed(Z)V

    .line 127
    if-nez p2, :cond_4

    .line 130
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 132
    invoke-virtual {p1, p3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->finishEnterSoSc(Landroid/view/SurfaceControl$Transaction;)V

    .line 134
    :cond_4
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 137
    goto :goto_0

    .line 139
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->isPendingSingleExit(Landroid/os/IBinder;)Z

    .line 140
    move-result p1

    .line 143
    if-eqz p1, :cond_6

    .line 144
    iget-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 146
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->onConsumed(Z)V

    .line 148
    iput-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 151
    :cond_6
    :goto_0
    return-void
    .line 153
.end method

.method public playAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 5
    move-result-object p5

    .line 8
    if-eqz p5, :cond_1

    .line 9
    iget-boolean v0, p5, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mCanceled:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 15
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 19
    return-void

    .line 22
    :cond_0
    iget-object v0, p5, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 27
    move-object v1, p1

    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p3

    .line 31
    move-object v4, p4

    .line 32
    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    .line 33
    iget-object p1, p5, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->mRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 36
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 38
    return-void

    .line 40
    :cond_1
    move-object v0, p0

    .line 41
    move-object v1, p1

    .line 42
    move-object v2, p2

    .line 43
    move-object v3, p3

    .line 44
    move-object v4, p6

    .line 45
    move-object v5, p7

    .line 46
    move-object v6, p8

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->playInternalAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V

    .line 48
    return-void
    .line 51
.end method

.method public playDragDismissAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/window/WindowContainerToken;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 5
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p1

    .line 12
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 13
    if-ltz p1, :cond_3

    .line 15
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 17
    move-result-object p4

    .line 20
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p4

    .line 24
    check-cast p4, Landroid/window/TransitionInfo$Change;

    .line 25
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 27
    move-result-object p5

    .line 30
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 31
    move-result-object v0

    .line 34
    invoke-virtual {p6, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p3, p5, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 43
    invoke-virtual {p3, p5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 46
    new-instance p4, Landroid/animation/ValueAnimator;

    .line 49
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 51
    iget-object p5, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p5, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda0;

    .line 59
    const/4 v0, 0x0

    .line 61
    invoke-direct {p5, p0, p4, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/animation/ValueAnimator;I)V

    .line 62
    invoke-virtual {p7, p3, p5}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p8, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    const p4, 0x7fffffff

    .line 79
    invoke-virtual {p3, p5, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 82
    invoke-virtual {p3, p5, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 85
    invoke-virtual {p3, p5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 92
    move-result p4

    .line 95
    invoke-static {p4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 96
    move-result p4

    .line 99
    if-eqz p4, :cond_0

    .line 100
    invoke-virtual {p3, p5}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 106
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 110
    return-void
    .line 113
.end method

.method public playDragDismissAnimationForSoSc(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 5
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p1

    .line 12
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, -0x1

    .line 13
    if-ltz p1, :cond_1

    .line 15
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 17
    move-result-object p4

    .line 20
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p4

    .line 24
    check-cast p4, Landroid/window/TransitionInfo$Change;

    .line 25
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 27
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 30
    move-result p5

    .line 33
    invoke-static {p5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    .line 34
    move-result p5

    .line 37
    if-eqz p5, :cond_0

    .line 38
    invoke-virtual {p4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 40
    move-result-object p4

    .line 43
    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 48
    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 52
    return-void
    .line 55
.end method

.method public playResizeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Lcom/android/wm/shell/common/split/SplitDecorManager;Lcom/android/wm/shell/common/split/SplitDecorManager;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    invoke-static {p2, p1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 6
    move-result p4

    .line 9
    :goto_0
    const/4 p5, 0x0

    .line 10
    if-ltz p4, :cond_4

    .line 11
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 16
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 21
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {p6, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {p7, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    :cond_0
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 47
    move-result-object v2

    .line 50
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 51
    int-to-float v2, v2

    .line 53
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 54
    move-result-object v3

    .line 57
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 58
    int-to-float v3, v3

    .line 60
    invoke-virtual {p3, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 61
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v2

    .line 71
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 76
    move-result v3

    .line 79
    invoke-virtual {p3, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 80
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {p6, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    move-object v1, p8

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v1, p9

    .line 95
    :goto_1
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 96
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 98
    iget-object v3, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    .line 106
    move-result-object v3

    .line 109
    invoke-virtual {v1, p3, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->setScreenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 110
    new-instance v3, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda0;

    .line 113
    invoke-direct {v3, p0, v2, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/animation/ValueAnimator;I)V

    .line 115
    invoke-virtual {v1, p3, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 118
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 121
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->isInSoScSingleMode()Z

    .line 123
    move-result v1

    .line 126
    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 129
    move-result-object v0

    .line 132
    invoke-virtual {p6, v0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 136
    if-eqz v0, :cond_2

    .line 137
    move-object v0, p9

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    move-object v0, p8

    .line 141
    :goto_2
    invoke-virtual {v0, p3, p5}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    .line 142
    :cond_3
    add-int/lit8 p4, p4, -0x1

    .line 145
    goto/16 :goto_0

    .line 147
    :cond_4
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 149
    invoke-virtual {p0, p5, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 152
    return-void
    .line 155
.end method

.method public playResizeEnterTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p4, p5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->initTransition(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_c

    .line 9
    instance-of p4, p1, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 11
    if-nez p4, :cond_0

    .line 13
    goto/16 :goto_5

    .line 15
    :cond_0
    const/4 p4, 0x1

    .line 17
    invoke-static {p2, p4}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    .line 18
    move-result p4

    .line 21
    :goto_0
    if-ltz p4, :cond_b

    .line 22
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 24
    move-result-object p5

    .line 27
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p5

    .line 31
    check-cast p5, Landroid/window/TransitionInfo$Change;

    .line 32
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 38
    move-result-object v1

    .line 41
    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 45
    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 46
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 48
    move-result v1

    .line 51
    invoke-static {p2, p5}, Lcom/android/wm/shell/util/TransitionUtil;->rootIndexFor(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    .line 52
    move-result v2

    .line 55
    const/4 v3, 0x6

    .line 56
    const/high16 v4, 0x3f800000    # 1.0f

    .line 57
    if-ne v1, v3, :cond_1

    .line 59
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 61
    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 67
    move-result-object v1

    .line 70
    invoke-virtual {p2, v1}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 75
    move-result-object v3

    .line 78
    invoke-virtual {p3, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 79
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 82
    move-result-object v3

    .line 85
    invoke-virtual {p3, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 89
    move-result-object v3

    .line 92
    invoke-virtual {p2, v2}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 93
    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 97
    move-result-object v2

    .line 100
    invoke-virtual {p3, v3, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 101
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 104
    move-result-object v2

    .line 107
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 108
    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 112
    move-result v3

    .line 115
    sub-int/2addr v3, p4

    .line 116
    invoke-virtual {p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 117
    iget-object v2, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 120
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 122
    move-result-object v1

    .line 125
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 126
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 131
    move-result-object v2

    .line 134
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 135
    int-to-float v2, v2

    .line 137
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 138
    move-result-object v3

    .line 141
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 142
    int-to-float v3, v3

    .line 144
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 145
    :cond_1
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 148
    move-result-object v1

    .line 151
    invoke-virtual {p8, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v1

    .line 155
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 156
    move-result-object v2

    .line 159
    invoke-virtual {p6, v2}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v2

    .line 163
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 164
    move-result-object v3

    .line 167
    invoke-virtual {p7, v3}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v3

    .line 171
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getFlags()I

    .line 172
    move-result v4

    .line 175
    const/high16 v5, 0x400000

    .line 176
    if-ne v4, v5, :cond_2

    .line 178
    const/4 v4, 0x1

    .line 180
    goto :goto_1

    .line 181
    :cond_2
    const/4 v4, 0x0

    .line 182
    :goto_1
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 183
    move-result-object v5

    .line 186
    invoke-virtual {p6, v5}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v5

    .line 190
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    .line 191
    move-result-object v6

    .line 194
    invoke-virtual {p7, v6}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v6

    .line 198
    if-nez v5, :cond_7

    .line 199
    if-eqz v6, :cond_3

    .line 201
    goto :goto_3

    .line 203
    :cond_3
    if-eqz v1, :cond_4

    .line 204
    const/high16 v4, 0x3f800000    # 1.0f

    .line 206
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 208
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 211
    goto :goto_4

    .line 214
    :cond_4
    if-nez v2, :cond_6

    .line 215
    if-eqz v3, :cond_5

    .line 217
    goto :goto_2

    .line 219
    :cond_5
    if-eqz v4, :cond_9

    .line 220
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 222
    move-result-object v4

    .line 225
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 226
    int-to-float v4, v4

    .line 228
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 229
    move-result-object v5

    .line 232
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 233
    int-to-float v5, v5

    .line 235
    invoke-virtual {p3, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 236
    const v4, 0x7fffffff

    .line 239
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 242
    invoke-virtual {p3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 245
    goto :goto_4

    .line 248
    :cond_6
    :goto_2
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 249
    move-result-object v4

    .line 252
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 253
    int-to-float v4, v4

    .line 255
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 256
    move-result-object v5

    .line 259
    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 260
    int-to-float v5, v5

    .line 262
    invoke-virtual {p3, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 263
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 266
    move-result-object v4

    .line 269
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 270
    move-result v4

    .line 273
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    .line 274
    move-result-object v5

    .line 277
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 278
    move-result v5

    .line 281
    invoke-virtual {p3, v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 282
    goto :goto_4

    .line 285
    :cond_7
    :goto_3
    move-object v4, p1

    .line 286
    check-cast v4, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 287
    iget v4, v4, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;->mType:I

    .line 289
    if-nez v4, :cond_8

    .line 291
    const/4 v4, 0x0

    .line 293
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 294
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 297
    const/high16 v5, 0x3f800000    # 1.0f

    .line 299
    invoke-virtual {v4, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 301
    :cond_8
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 304
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 306
    move-result-object v5

    .line 309
    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 310
    int-to-float v5, v5

    .line 312
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    .line 313
    move-result-object v6

    .line 316
    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 317
    int-to-float v6, v6

    .line 319
    invoke-virtual {v4, v0, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 320
    iget-object v4, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 323
    const/4 v5, 0x0

    .line 325
    invoke-virtual {v4, v0, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 326
    :cond_9
    :goto_4
    if-nez v1, :cond_a

    .line 329
    if-nez v2, :cond_a

    .line 331
    if-nez v3, :cond_a

    .line 333
    invoke-virtual {p5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 335
    :cond_a
    add-int/lit8 p4, p4, -0x1

    .line 338
    goto/16 :goto_0

    .line 340
    :cond_b
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 342
    const/4 p1, 0x0

    .line 345
    invoke-virtual {p0, p1, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 346
    :cond_c
    :goto_5
    return-void
    .line 349
.end method

.method public playSingleExitTransition(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    move-object/from16 v13, p3

    .line 4
    move-object/from16 v0, p5

    .line 6
    iput-object v0, v12, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    .line 8
    move-object/from16 v0, p1

    .line 10
    iput-object v0, v12, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    .line 12
    move-object/from16 v0, p4

    .line 14
    iput-object v0, v12, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    const/4 v14, 0x1

    .line 18
    new-array v0, v14, [I

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    .line 21
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 32
    const/4 v15, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 40
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 42
    move-result v3

    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v3, v4, :cond_1

    .line 47
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    .line 49
    move-result v3

    .line 52
    const/4 v4, 0x4

    .line 53
    if-ne v3, v4, :cond_0

    .line 54
    :cond_1
    iget-object v3, v12, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 56
    invoke-virtual {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getMainStageRoot()Landroid/window/WindowContainerToken;

    .line 58
    move-result-object v3

    .line 61
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v3

    .line 69
    if-nez v3, :cond_0

    .line 70
    iget-object v3, v12, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 72
    invoke-virtual {v3}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->getSideStageRoot()Landroid/window/WindowContainerToken;

    .line 74
    move-result-object v3

    .line 77
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    .line 78
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 85
    if-nez v3, :cond_0

    .line 86
    new-instance v3, Landroid/graphics/RectF;

    .line 88
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    .line 90
    move-result-object v1

    .line 93
    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 94
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 97
    move-result v1

    .line 100
    const v4, 0x3dcccccd    # 0.1f

    .line 101
    mul-float/2addr v1, v4

    .line 104
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 105
    move-result v5

    .line 108
    mul-float/2addr v5, v4

    .line 109
    new-instance v4, Landroid/graphics/RectF;

    .line 110
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 112
    add-float/2addr v6, v1

    .line 114
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 115
    add-float/2addr v7, v5

    .line 117
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 118
    sub-float/2addr v8, v1

    .line 120
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 121
    sub-float/2addr v1, v5

    .line 123
    invoke-direct {v4, v6, v7, v8, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 124
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    .line 127
    move-result-object v1

    .line 130
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 131
    move-result v2

    .line 134
    float-to-int v2, v2

    .line 135
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 136
    move-result v5

    .line 139
    float-to-int v5, v5

    .line 140
    invoke-virtual {v13, v1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 141
    aget v2, v0, v15

    .line 144
    add-int/2addr v2, v14

    .line 146
    aput v2, v0, v15

    .line 147
    const/high16 v5, 0x3f800000    # 1.0f

    .line 149
    const/high16 v6, 0x3f800000    # 1.0f

    .line 151
    const v7, 0x3f4ccccd    # 0.8f

    .line 153
    const v8, 0x3f4ccccd    # 0.8f

    .line 156
    const/high16 v9, 0x3f800000    # 1.0f

    .line 159
    const/4 v10, 0x0

    .line 161
    new-instance v11, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda5;

    .line 162
    invoke-direct {v11, v12, v0, v15}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;Ljava/lang/Cloneable;I)V

    .line 164
    move-object/from16 v0, p0

    .line 167
    move-object/from16 v2, p3

    .line 169
    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->startScaleAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFFLjava/lang/Runnable;)V

    .line 171
    move-object/from16 v0, p2

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    move-object/from16 v0, p2

    .line 177
    move v14, v15

    .line 179
    :goto_0
    invoke-virtual {v0, v15}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    .line 180
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    .line 184
    move-result-object v0

    .line 187
    invoke-virtual {v13, v0, v15}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 191
    if-nez v14, :cond_3

    .line 194
    const/4 v0, 0x0

    .line 196
    invoke-virtual {v12, v0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 197
    :cond_3
    return v14
    .line 200
.end method

.method public setDismissTransition(Landroid/os/IBinder;II)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 2
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;II)V

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 7
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 9
    invoke-static {p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {p2}, Lcom/android/wm/shell/sosc/SoScSplitScreen;->stageTypeToString(I)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 18
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    const-string p2, "  splitTransition  deduced Dismiss due to %s. toTop=%s"

    .line 23
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    return-void
    .line 28
.end method

.method public setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;IZ)V
    .locals 9

    .line 1
    new-instance v8, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 2
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p2

    .line 9
    move v6, p5

    .line 10
    move v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;Landroid/window/RemoteTransition;IZ)V

    .line 12
    iput-object v8, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 15
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 17
    const/4 p1, 0x0

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    .line 20
    const-string p2, "  splitTransition  deduced Enter split screen"

    .line 22
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
    .line 27
.end method

.method public setResizeEnterTransition(Landroid/os/IBinder;ILcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 2
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;ILcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 10
    iput-object v6, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 13
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 15
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Ljava/lang/Object;

    .line 18
    const-string p2, "  ResizeEnterTransition  deduced Enter sosc"

    .line 20
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void
    .line 25
.end method

.method public setResizeTransition(Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 5
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 8
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 10
    const/4 p1, 0x0

    .line 12
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string p2, "  splitTransition  deduced Resize split screen"

    .line 15
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
    .line 20
.end method

.method public setSingleExitTransition(Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 7
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 9
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    const-string p2, "  SingleExitTransition  deduced Enter sosc"

    .line 14
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void
    .line 19
.end method

.method public startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$DismissSession;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    invoke-static {p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    const-string p2, "  splitTransition  skip to start dismiss split transition since it already exist. reason to  dismiss = %s"

    .line 16
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_0
    const/4 v0, 0x4

    .line 23
    if-ne p4, v0, :cond_1

    .line 24
    const/16 v0, 0x3ee

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const/16 v0, 0x3ef

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 31
    invoke-virtual {v1, v0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;II)V

    .line 37
    return-object p1
    .line 40
.end method

.method public startEnterTransition(ILandroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;IZ)Landroid/os/IBinder;
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$EnterSession;

    .line 3
    if-eqz v1, :cond_0

    .line 5
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    const/4 v1, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "  splitTransition  skip to start enter split transition since it already exist. "

    .line 12
    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const/16 v1, 0x3ec

    .line 19
    move v5, p7

    .line 21
    if-ne v5, v1, :cond_1

    .line 22
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/sosc/SoScStageCoordinator;

    .line 24
    invoke-virtual {v1}, Lcom/android/wm/shell/sosc/SoScStageCoordinator;->deferUpdateSoScState()V

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 29
    move v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-object v4, p4

    .line 33
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 34
    move-result-object v7

    .line 37
    move-object v0, p0

    .line 38
    move-object v1, v7

    .line 39
    move-object v2, p3

    .line 40
    move-object v3, p5

    .line 41
    move-object v4, p6

    .line 42
    move v5, p7

    .line 43
    move/from16 v6, p8

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;IZ)V

    .line 46
    return-object v7
    .line 49
.end method

.method public startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 2
    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 6
    invoke-direct {v0, v1, p2}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    .line 8
    const/4 p2, 0x1

    .line 11
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 12
    return-void
    .line 15
.end method

.method public startResizeEnterTransition(IILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResizeEnter:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$ResizeEnterSession;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    const-string p2, "  startResizeEnterTransition  skip to start since it already exist"

    .line 11
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 18
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->setResizeEnterTransition(Landroid/os/IBinder;ILcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 24
    return-object p1
    .line 27
.end method

.method public startResizeTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;->cancel(Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerTransactionCallback;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 18
    const/4 v1, 0x6

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->setResizeTransition(Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 25
    return-object p1
    .line 28
.end method

.method public startSingleExitTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)Landroid/os/IBinder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mPendingSingleExit:Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitSession;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 9
    const-string p2, "  SingleExitTransition  skip to start since it already exist"

    .line 11
    invoke-static {p0, p2, p1}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    .line 18
    const/16 v1, 0x45c

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions;->setSingleExitTransition(Landroid/os/IBinder;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/sosc/SoScSplitScreenTransitions$TransitionFinishedCallback;)V

    .line 26
    return-object p1
    .line 29
.end method
