.class public Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ANIM_STATE_FINISHED:I = 0x3

.field public static final ANIM_STATE_FINISHING:I = 0x2

.field public static final ANIM_STATE_INPROCESS:I = 0x0

.field public static final ANIM_STATE_MERGING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiInfinityModeAnimatorSupervisor"


# instance fields
.field private final mAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mAnimatorParameter:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter;

.field private mAnimatorStateCallbacks:Ljava/util/ArrayList;

.field private mAutoResizeFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

.field private mAutoResizeTimeout:Landroid/util/ArrayMap;

.field private mAutoResizers:Ljava/util/Map;

.field private mDetachTimeout:Ljava/lang/Runnable;

.field private mFinishT:Landroid/view/SurfaceControl$Transaction;

.field private mFluidResizeFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

.field private mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

.field private mGestureAnimEnd:Z

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mLock:Ljava/lang/Object;

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

.field private final mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

.field private final mSyncer:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

.field private mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;


# direct methods
.method public static synthetic $r8$lambda$NjrWljjYD50oWqMCQ8EoIgAYgNk(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$startFluidResizeAnimator$1(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$UtOvs9ec5T_r0CxQ6b_HdAGDJOs(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Ljava/lang/Integer;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$mergeByBoundsChange$0(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Ljava/lang/Integer;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_KLFKP8Cs6qU-DSlM7M2mVhwkmU(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$stopFluidResizeAnimator$4()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$fJ8zpGdrB8t0yBvtyoWq06pFFWU(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$detectGestureAnimation$6(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$k2gs2XpIl8lk7omn5rndX5lcf4E(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$new$8(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$leRKSAi1PodBgJndchK_ZapQBx4(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$startAutoResizeAnimation$2(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$qWg7kB_qINQQ-K9HAT1GYVe_Sjw(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$stopFluidResizeAnimator$5(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$reKa-Q_cIra4I6EkHNrFQSoVIAQ(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$detectGestureAnimation$7(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$rhRJ71Nt2GGVlxYKr5F14tyt6BY(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$new$10(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$yDQLSWEwrnNm93DDPRLgj0FoQxk(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$new$9(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$zodhZqYu6pcDYeLrXhEX-SHkudQ(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->lambda$animationMerging$3(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static bridge synthetic -$$Nest$fgetmAutoResizers(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 2
    return-object p0
    .line 4
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 27
    new-instance v1, Landroid/util/ArrayMap;

    .line 29
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeTimeout:Landroid/util/ArrayMap;

    .line 34
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda5;

    .line 36
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 39
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizeFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

    .line 42
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda5;

    .line 44
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 46
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

    .line 49
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 51
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 53
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter;

    .line 55
    invoke-direct {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorParameter:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter;

    .line 60
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getAnimExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 62
    move-result-object p2

    .line 65
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 66
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 68
    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 72
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getIconProvider()Lcom/android/launcher3/icons/IconProvider;

    .line 74
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 78
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 80
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;->getBGExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    .line 82
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 86
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mSyncer:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 89
    return-void
    .line 91
.end method

.method private createBoundsAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeBoundsAnimator;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeBoundsAnimator;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 4
    return-object p0
    .line 7
.end method

.method private createDimmerAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 4
    invoke-direct {v0, p1, p2, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/view/SurfaceControl;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 6
    return-object v0
    .line 9
.end method

.method private createDynamicOverlayAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Ljava/lang/Object;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method

.method private createInfinityLayerAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$InfinityLayersResizeContainer;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$InfinityLayersResizeContainer;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$InfinityLayersResizeContainer;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;)V

    .line 4
    return-object p0
    .line 7
.end method

.method private createStaticOverlayAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/launcher3/icons/IconProvider;Ljava/lang/Object;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeStaticVeil$IconOverlay;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/launcher3/icons/IconProvider;Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method

.method private detectGestureAnimation()V
    .locals 6

    .line 1
    const-string v0, "detectGestureAnimation, error :"

    .line 2
    const-string v1, "detectGestureAnimation, TaskWrapperInfo:"

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 9
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mDetachTimeout:Ljava/lang/Runnable;

    .line 11
    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 13
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 18
    if-nez v3, :cond_0

    .line 20
    const-string p0, "MiuiInfinityModeAnimatorSupervisor"

    .line 22
    const-string v0, "detectGestureAnimation, TaskWrapperInfo is null!"

    .line 24
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    return-void

    .line 30
    :cond_0
    const/4 v3, 0x0

    .line 31
    :try_start_1
    const-string v4, "MiuiInfinityModeAnimatorSupervisor"

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 39
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v4, v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 51
    new-instance v4, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;

    .line 53
    const/4 v5, 0x1

    .line 55
    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 56
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 59
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 62
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 64
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 66
    invoke-virtual {v1, v4, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchAnimatorsFinish(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 68
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 71
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 73
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 75
    invoke-virtual {v1, v4, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->destroyAndUnbindSurface(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :try_start_2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 80
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;

    .line 82
    const/4 v4, 0x2

    .line 84
    invoke-direct {v1, p0, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 88
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->infinityEndSchedThread()V

    .line 91
    :goto_0
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    :try_start_3
    const-string v4, "MiuiInfinityModeAnimatorSupervisor"

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-static {v4, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    :try_start_4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 117
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;

    .line 119
    const/4 v4, 0x3

    .line 121
    invoke-direct {v1, p0, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->infinityEndSchedThread()V

    .line 128
    goto :goto_0

    .line 131
    :goto_1
    monitor-exit v2

    .line 132
    return-void

    .line 133
    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 134
    new-instance v4, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;

    .line 136
    const/4 v5, 0x4

    .line 138
    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 139
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 142
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->infinityEndSchedThread()V

    .line 145
    iput-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 148
    throw v0

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    throw p0
    .line 153
.end method

.method private infinityBeginSchedThread()V
    .locals 0

    .line 1
    const-string p0, "FF_NoUI/FREEFORM_ACTION_RESIZE"

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method private infinityEndSchedThread()V
    .locals 0

    .line 1
    const-string p0, "FF_NoUI/FREEFORM_ACTION_RESIZE"

    .line 2
    invoke-static {p0}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$animationMerging$3(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    const-string v1, "animator_resizing"

    .line 9
    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorStateChange(IILjava/lang/String;)V

    .line 11
    return-void
    .line 14
.end method

.method private synthetic lambda$detectGestureAnimation$6(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x2

    .line 8
    const-string v1, "animator_resizing"

    .line 9
    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorStateChange(IILjava/lang/String;)V

    .line 11
    return-void
    .line 14
.end method

.method private synthetic lambda$detectGestureAnimation$7(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 4
    const-string v1, "animator_resizing"

    .line 6
    invoke-interface {p1, v0, p0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorFinishEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method

.method private static synthetic lambda$mergeByBoundsChange$0(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Ljava/lang/Integer;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;)V
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    const/4 v6, 0x0

    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, p5

    .line 5
    move v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move v3, p2

    .line 8
    move-object v4, p3

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->mergeWithBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer$GeometryBuilder;)V

    .line 10
    return-void
    .line 13
.end method

.method private synthetic lambda$new$10(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 2
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 4
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->isAnimationFinished()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->destroySurface()V

    .line 26
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 29
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 31
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda2;

    .line 44
    const/4 v0, 0x1

    .line 46
    invoke-direct {p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;I)V

    .line 47
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    :cond_0
    return-void
    .line 53
.end method

.method private synthetic lambda$new$8(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 2

    .line 1
    const-string p2, " onComplete: , type: "

    .line 2
    const-string v0, "mGestureAnimEnd: "

    .line 4
    invoke-static {p2, p1, v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 9
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 18
    const-string p2, "MiuiInfinityModeAnimatorSupervisor"

    .line 19
    invoke-static {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->isAllGestureAnimFinished()Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->detectGestureAnimation()V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    iget-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 38
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mDetachTimeout:Ljava/lang/Runnable;

    .line 40
    const-wide/16 v0, 0x7d0

    .line 42
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 44
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 46
    :cond_1
    :goto_0
    return-void
    .line 49
.end method

.method private static synthetic lambda$new$9(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "animator_auto_resize"

    .line 3
    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorStopping(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorFinishEnd(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method

.method private static synthetic lambda$startAutoResizeAnimation$2(ILcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "animator_auto_resize"

    .line 3
    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorStateChange(IILjava/lang/String;)V

    .line 5
    return-void
    .line 8
.end method

.method private static synthetic lambda$startFluidResizeAnimator$1(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "animator_resizing"

    .line 7
    invoke-interface {p1, p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorStateChange(IILjava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method

.method private synthetic lambda$stopFluidResizeAnimator$4()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->detectGestureAnimation()V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$stopFluidResizeAnimator$5(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 2
    const-string v0, "animator_resizing"

    .line 4
    invoke-interface {p2, p1, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;->onAnimatorStopping(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method private needDimmer(I)Z
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
    .line 7
.end method


# virtual methods
.method public addAnimatorStateCallback(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AnimatorStateCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public animationMerging()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 3
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 5
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getDragSN()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->dragMerging()V

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 14
    new-instance v2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;

    .line 16
    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 24
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 26
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getDestinationWindowMode()I

    .line 28
    move-result v1

    .line 31
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->startSpringAnimGroup(ILjava/lang/Object;)V

    .line 34
    const-string p0, "MiuiInfinityModeAnimatorSupervisor"

    .line 37
    const-string v0, "animationMerging"

    .line 39
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
    .line 44
.end method

.method public animationRunning(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->fluidResize(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public autoResizeIsAnimating(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 11
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;

    .line 16
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    return p0
    .line 23
.end method

.method public freeformStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchFreeformStart()V

    .line 4
    return-void
    .line 7
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method public interceptAppTransition(Landroid/window/TransitionInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->interceptAppTransition(Landroid/window/TransitionInfo;)Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
    .line 33
.end method

.method public isAllGestureAnimFinished()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "isAllGestureAnimFinished isAllGestureAnimFinished : "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 9
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->isAllAnimationFinished()Z

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", mGestureAnimEnd :"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    const-string v1, ", mTaskWrapperInfo :"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    const-string v1, "MiuiInfinityModeAnimatorSupervisor"

    .line 42
    invoke-static {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->isAllAnimationFinished()Z

    .line 53
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    const/4 p0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    return p0
    .line 62
.end method

.method public mergeByBoundsChange(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 5
    move-result v2

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->isAutoResize()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeTimeout:Landroid/util/ArrayMap;

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 31
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeTimeout:Landroid/util/ArrayMap;

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Runnable;

    .line 43
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 45
    invoke-virtual {v1, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 50
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 58
    new-instance v3, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;

    .line 60
    invoke-direct {v3, v2, p2, p3, p4}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda6;-><init>(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;)V

    .line 62
    invoke-interface {v1, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getResizeState()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;

    .line 68
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo$ResizeState;->isFluidResize()Z

    .line 72
    move-result p1

    .line 75
    if-eqz p1, :cond_4

    .line 76
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->isAllGestureAnimFinished()Z

    .line 78
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 84
    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 88
    move-result p1

    .line 91
    if-eq p1, v2, :cond_2

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 95
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 97
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mSyncer:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 99
    move-object v3, p2

    .line 101
    move v4, p3

    .line 102
    move-object v5, p4

    .line 103
    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchBoundsChange(ILandroid/graphics/Rect;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V

    .line 104
    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 108
    :cond_4
    :goto_1
    monitor-exit v0

    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
    .line 115
.end method

.method public mergeByModeChange(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->isAllGestureAnimFinished()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 12
    move-result v0

    .line 15
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mSyncer:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 25
    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchModeChange(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 31
    :goto_1
    return-void
    .line 34
.end method

.method public onFreeformTaskAppeared(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchFreeformTaskAppeared(I)V

    .line 4
    return-void
    .line 7
.end method

.method public onInit()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mSyncer:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeSurfaceSyncer;Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 13
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 15
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->createInfinityLayerAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator$InfinityLayersResizeContainer;

    .line 18
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 22
    invoke-direct {p0, v2, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->createBoundsAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 24
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 28
    invoke-direct {p0, v3, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->createDimmerAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDimmer;

    .line 30
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 34
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 36
    invoke-direct {p0, v4, v5, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->createDynamicOverlayAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Ljava/lang/Object;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeDynamicVeil;

    .line 38
    move-result-object v4

    .line 41
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 42
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 44
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 46
    invoke-direct {p0, v5, v1, v6, v7}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->createStaticOverlayAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/launcher3/icons/IconProvider;Ljava/lang/Object;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 48
    move-result-object v1

    .line 51
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 52
    invoke-virtual {v5, v2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->addChild(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 54
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 57
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->addChild(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 59
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 62
    invoke-virtual {p0, v3}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->addChild(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 64
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->addChild(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->addChild(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    .line 70
    return-void
    .line 73
.end method

.method public startAutoResizeAnimation(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskId()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;

    .line 16
    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;

    .line 20
    const-string v3, "animator_auto_resize"

    .line 22
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeController:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;

    .line 24
    iget-object v7, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

    .line 26
    iget-object v8, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 28
    iget-object v9, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 30
    move-object v2, v1

    .line 32
    move-object v5, p1

    .line 33
    move-object v6, p2

    .line 34
    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;-><init>(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAvoidAlgorithm;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 35
    :cond_0
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeAutoResizeAnimator;->setAnimation()V

    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p2

    .line 46
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizers:Ljava/util/Map;

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p2

    .line 58
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 62
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda4;

    .line 64
    invoke-direct {p2, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda4;-><init>(I)V

    .line 66
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeTimeout:Landroid/util/ArrayMap;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 78
    move-result p1

    .line 81
    if-nez p1, :cond_2

    .line 82
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeTimeout:Landroid/util/ArrayMap;

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p2

    .line 89
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AutoResizeTimeout;

    .line 90
    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$AutoResizeTimeout;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;I)V

    .line 92
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 98
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAutoResizeTimeout:Landroid/util/ArrayMap;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object p2

    .line 105
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 109
    check-cast p0, Ljava/lang/Runnable;

    .line 110
    const-wide/16 v0, 0x7d0

    .line 112
    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 114
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 116
    return-void
    .line 119
.end method

.method public startFluidResizeAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->infinityBeginSchedThread()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 6
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 8
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 10
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    .line 15
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    .line 17
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 23
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizeFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

    .line 25
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimationExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 27
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 29
    move-object v3, p1

    .line 31
    move-object v7, p2

    .line 32
    move-object v8, p3

    .line 33
    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->startFluidDrag(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    .line 34
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 37
    new-instance p3, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda2;

    .line 39
    invoke-direct {p3, p1, v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;I)V

    .line 41
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getDragSN()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 49
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->dragStart()V

    .line 53
    :cond_0
    const/4 p0, 0x1

    .line 56
    return p0
    .line 57
.end method

.method public stopFluidResizeAnimator(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, " stopAnimator, taskWrapperInfo:"

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mLock:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v2, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;)V

    .line 9
    iput-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mDetachTimeout:Ljava/lang/Runnable;

    .line 12
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 14
    invoke-virtual {v2, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->stopFluidDrag(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mMiuiInfinityModeDragHandler:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;

    .line 19
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler;->getDragSN()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeDragHandler$DragSeqRecord;->dragStagedEnd()V

    .line 25
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mAnimatorStateCallbacks:Ljava/util/ArrayList;

    .line 28
    new-instance v2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda1;

    .line 30
    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 32
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 35
    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mGestureAnimEnd:Z

    .line 39
    const-string p0, "MiuiInfinityModeAnimatorSupervisor"

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
    .line 62
.end method

.method public windowBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchWindowSizeChange(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method

.method public windowModeChange(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchWindowModeChange(I)V

    .line 4
    return-void
    .line 7
.end method

.method public windowOutBounds()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchWindowOutBounds()V

    .line 4
    return-void
    .line 7
.end method

.method public windowRadioChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorSupervisor;->mFluidResizer:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeFluidResizeAnimator;->dispatchWindowRadioChange(Landroid/graphics/Rect;)V

    .line 4
    return-void
    .line 7
.end method
