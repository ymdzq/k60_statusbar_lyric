.class public Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public animConfig:Lmiuix/animation/base/AnimConfig;

.field private animFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

.field animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public animStateFrom:Lmiuix/animation/controller/AnimState;

.field public animStateTo:Lmiuix/animation/controller/AnimState;

.field finishOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public privProp:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

.field public propKeys:Ljava/util/ArrayList;

.field public rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

.field public stateStyle:Lmiuix/animation/IStateStyle;

.field public surfaceAnimable:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

.field public valueTarget:Lmiuix/animation/property/ValueTargetObject;


# direct methods
.method public static synthetic $r8$lambda$AN4JW5-jv0TMqAC6k_qt7vvw2nM(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->lambda$reportAnimationFinished$1()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$K2PZxzbVMxmbMTRobKECU7ZifFw(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Lmiuix/animation/base/AnimSpecialConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->lambda$setSpecial$3(Lmiuix/animation/base/AnimSpecialConfig;Ljava/lang/String;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$LhaD8jnP9ma9gx_lVWxnw1V4n_w(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->lambda$setSpecial$4(Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$_MMFnlzylbJG4fNxDgdbJ5gSyj4(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->lambda$new$0()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$ciV-TybouTVICoWcXMP_tnpxsdI(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;[Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->lambda$setSpecial$5([Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$cx-BgFiZwehTtgPsemPp-cB_bQM(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->lambda$setSpringEase$2(FF)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateFrom:Lmiuix/animation/controller/AnimState;

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateFrom:Lmiuix/animation/controller/AnimState;

    .line 3
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateTo:Lmiuix/animation/controller/AnimState;

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateTo:Lmiuix/animation/controller/AnimState;

    .line 4
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 5
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    .line 6
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    .line 7
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    invoke-direct {v0}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->privProp:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Lmiuix/animation/property/ValueTargetObject;

    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->privProp:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    invoke-direct {v0, v1}, Lmiuix/animation/property/ValueTargetObject;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->valueTarget:Lmiuix/animation/property/ValueTargetObject;

    .line 10
    iget-object v0, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 11
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->finishOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->finishOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 14
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->finishOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->surfaceAnimable:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 16
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 18
    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    invoke-direct {p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    .line 19
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string p3, "from"

    invoke-direct {p2, p3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateFrom:Lmiuix/animation/controller/AnimState;

    .line 20
    new-instance p2, Lmiuix/animation/controller/AnimState;

    iget-object p3, p1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mAnimationType:Ljava/lang/String;

    invoke-direct {p2, p3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateTo:Lmiuix/animation/controller/AnimState;

    .line 21
    new-instance p2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance p3, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$1;

    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$1;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;)V

    filled-new-array {p3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 22
    :try_start_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda3;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda3;-><init>(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    .line 2
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    .line 12
    return-void
    .line 14
.end method

.method private synthetic lambda$reportAnimationFinished$1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animFinishedCallback:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->surfaceAnimable:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mAnimationType:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->mTaskWrapperInfo:Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;

    .line 8
    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$AnimationFinishedCallback;->onAnimationFinished(Ljava/lang/String;Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V

    .line 10
    return-void
    .line 13
.end method

.method private synthetic lambda$setSpecial$3(Lmiuix/animation/base/AnimSpecialConfig;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-virtual {p0, p2, p1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 4
    return-void
    .line 7
.end method

.method private synthetic lambda$setSpecial$4(Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 9
    return-void
    .line 12
.end method

.method private synthetic lambda$setSpecial$5([Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 16
    invoke-virtual {v3, v2, p2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    return-void
    .line 24
.end method

.method private synthetic lambda$setSpringEase$2(FF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [F

    .line 5
    const/4 v1, 0x0

    .line 7
    aput p1, v0, v1

    .line 8
    const/4 p1, 0x1

    .line 10
    aput p2, v0, p1

    .line 11
    const/4 p1, -0x2

    .line 13
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public completeFrom()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateFrom:Lmiuix/animation/controller/AnimState;

    .line 6
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public completeFromTo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateFrom:Lmiuix/animation/controller/AnimState;

    .line 6
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    .line 11
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateTo:Lmiuix/animation/controller/AnimState;

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 15
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 17
    move-result-object p0

    .line 20
    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public completeTo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->stateStyle:Lmiuix/animation/IStateStyle;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateTo:Lmiuix/animation/controller/AnimState;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 8
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public filterAbsProps(Ljava/util/Collection;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->valueTarget:Lmiuix/animation/property/ValueTargetObject;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v4

    .line 16
    if-ge v2, v4, :cond_6

    .line 17
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/String;

    .line 25
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->valueTarget:Lmiuix/animation/property/ValueTargetObject;

    .line 27
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 29
    invoke-virtual {v5, v4, v6}, Lmiuix/animation/property/ValueTargetObject;->getPropertyValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/Float;

    .line 35
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result v5

    .line 40
    invoke-static {p1, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 41
    move-result-object v7

    .line 44
    if-nez v7, :cond_1

    .line 45
    move v7, v5

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v7}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 49
    move-result v7

    .line 52
    :goto_1
    invoke-static {v7}, Ljava/lang/Float;->isInfinite(F)Z

    .line 53
    move-result v8

    .line 56
    if-nez v8, :cond_3

    .line 57
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 59
    move-result v8

    .line 62
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    cmpl-float v8, v8, v9

    .line 66
    if-eqz v8, :cond_3

    .line 68
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    .line 70
    move-result v8

    .line 73
    if-eqz v8, :cond_2

    .line 74
    goto :goto_2

    .line 76
    :cond_2
    move v8, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    :goto_2
    move v8, v1

    .line 79
    :goto_3
    if-eqz v8, :cond_4

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    .line 82
    const-string v10, "Got invalid value!"

    .line 84
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v9

    .line 95
    const-string v10, "MiuiInfinityModeSurfaceAnimable"

    .line 96
    invoke-static {v10, v9}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_4
    if-nez v8, :cond_5

    .line 101
    cmpl-float v5, v5, v7

    .line 103
    if-eqz v5, :cond_5

    .line 105
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->valueTarget:Lmiuix/animation/property/ValueTargetObject;

    .line 107
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 109
    move-result-object v5

    .line 112
    invoke-virtual {v3, v4, v6, v5}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 113
    move v3, v1

    .line 116
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 117
    goto :goto_0

    .line 119
    :cond_6
    return v3
    .line 120
.end method

.method public from(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->valueTarget:Lmiuix/animation/property/ValueTargetObject;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 19
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/property/ValueTargetObject;->setPropertyValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateFrom:Lmiuix/animation/controller/AnimState;

    .line 28
    float-to-double v1, p2

    .line 30
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 31
    return-object p0
    .line 34
.end method

.method public reportAnimationFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->surfaceAnimable:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->rootProps:Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->onAnimationFinished(Lcom/android/wm/shell/miuifreeform/infinitymode/MiuiInfinityModeAnimatorParameter$Propertys;)V

    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->surfaceAnimable:Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;

    .line 9
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    .line 11
    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable;->detach(Landroid/view/SurfaceControl$Transaction;)V

    .line 16
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->finishOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 19
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda3;

    .line 21
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda3;-><init>(ILcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;)V

    .line 24
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public setListener(Lmiuix/animation/listener/TransitionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    filled-new-array {p1}, [Lmiuix/animation/listener/TransitionListener;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 8
    return-void
    .line 11
.end method

.method public varargs setSinOutSpecial(FF[Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;
    .locals 3

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    const/4 v2, 0x0

    .line 10
    aput p1, v1, v2

    .line 11
    const/4 p1, 0x1

    .line 13
    aput p2, v1, p1

    .line 14
    const/16 p1, 0xf

    .line 16
    invoke-virtual {v0, p1, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 22
    array-length p2, p3

    .line 24
    :goto_0
    if-ge v2, p2, :cond_1

    .line 25
    aget-object v0, p3, v2

    .line 27
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 37
    invoke-virtual {v1, v0, p1}, Lmiuix/animation/base/AnimConfig;->setSpecial(Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    return-object p0
    .line 45
.end method

.method public varargs setSpecial(FF[Ljava/lang/String;)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 4
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [F

    .line 8
    const/4 v2, 0x0

    .line 10
    aput p1, v1, v2

    .line 11
    const/4 p1, 0x1

    .line 13
    aput p2, v1, p1

    .line 14
    const/4 p1, -0x2

    .line 16
    invoke-virtual {v0, p1, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Lmiuix/animation/base/AnimSpecialConfig;

    .line 21
    array-length p2, p3

    .line 23
    if-nez p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 26
    new-instance p3, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda1;

    .line 28
    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 30
    invoke-interface {p2, p3}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V

    .line 33
    return-object p0

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 37
    new-instance v0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda2;

    .line 39
    invoke-direct {v0, p0, p3, p1}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;[Ljava/lang/String;Lmiuix/animation/base/AnimSpecialConfig;)V

    .line 41
    invoke-interface {p2, v0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    return-object p0
    .line 47
.end method

.method public setSpringEase(FF)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animOutExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 2
    new-instance v1, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda4;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;FF)V

    .line 6
    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return-object p0
    .line 12
.end method

.method public to(Ljava/lang/String;F)Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->propKeys:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "no initial value is set. key="

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p1, ", value="

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    const-string p2, "MiuiInfinityModeSurfaceAnimable"

    .line 32
    invoke-static {p2, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeController$Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/infinitymode/animator/MiuiInfinityModeSurfaceAnimable$SpringAnim;->animStateTo:Lmiuix/animation/controller/AnimState;

    .line 38
    float-to-double v1, p2

    .line 40
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 41
    return-object p0
    .line 44
.end method
