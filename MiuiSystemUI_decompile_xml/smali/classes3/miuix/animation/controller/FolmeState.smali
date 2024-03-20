.class public Lmiuix/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/controller/IFolmeStateStyle;


# instance fields
.field mConfigLink:Lmiuix/animation/base/AnimConfigLink;

.field private mEnableAnim:Z

.field mStateMgr:Lmiuix/animation/controller/StateManager;

.field mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/controller/StateManager;

    .line 5
    invoke-direct {v0}, Lmiuix/animation/controller/StateManager;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 10
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    .line 12
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    .line 17
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    .line 20
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 22
    return-void
    .line 24
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/base/AnimConfigLink;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    .line 2
    return-void
    .line 5
.end method

.method private fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p2}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v1, v0, p3}, Lmiuix/animation/controller/StateManager;->addTempConfig(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 6
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 7
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 8
    invoke-virtual {p3}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    :cond_1
    return-void
.end method

.method private getConfigLink()Lmiuix/animation/base/AnimConfigLink;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mConfigLink:Lmiuix/animation/base/AnimConfigLink;

    .line 2
    return-object p0
    .line 4
.end method

.method private setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 5
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FolmeState.setTo, state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :cond_2
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 8
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    return-void

    .line 9
    :cond_3
    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 7
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;F)V

    return-object p0
.end method

.method public add(Ljava/lang/String;FJ)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 8
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;FJ)V

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 6
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Ljava/lang/String;IJ)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;FJ)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public add(Lmiuix/animation/property/FloatProperty;IJ)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    return-object p0
.end method

.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
    .line 2
.end method

.method public addInitProperty(Ljava/lang/String;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;F)V

    return-object p0
.end method

.method public addInitProperty(Ljava/lang/String;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;F)V

    return-object p0
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->addInitProperty(Lmiuix/animation/property/FloatProperty;I)V

    return-object p0
.end method

.method public addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->addListener(Lmiuix/animation/listener/TransitionListener;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public addState(Lmiuix/animation/controller/AnimState;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 4
    return-void
    .line 7
.end method

.method public varargs autoSetTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 1

    .line 3
    array-length v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ValueTarget;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, p0, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 2
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, p0, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->cancel()V

    .line 2
    return-void
    .line 5
.end method

.method public enableDefaultAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    .line 2
    return-void
    .line 4
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_1

    .line 3
    const/4 v0, 0x0

    .line 5
    aget-object v1, p1, v0

    .line 6
    instance-of v1, v1, Lmiuix/animation/property/FloatProperty;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    array-length v1, p1

    .line 12
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 13
    array-length v2, p1

    .line 15
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 19
    move-result-object p1

    .line 22
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 23
    invoke-virtual {p1, p0, v1}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    array-length v1, p1

    .line 29
    new-array v1, v1, [Ljava/lang/String;

    .line 30
    array-length v2, p1

    .line 32
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 36
    move-result-object p1

    .line 39
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 40
    invoke-virtual {p1, p0, v1}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V

    .line 42
    :cond_1
    :goto_0
    return-void
    .line 45
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 9
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    new-instance v1, Lmiuix/animation/controller/FolmeState$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lmiuix/animation/controller/FolmeState$2;-><init>(Lmiuix/animation/controller/FolmeState;[Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getPredictFriction(Lmiuix/animation/property/FloatProperty;F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    cmpl-float v1, v0, v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    const/high16 p0, -0x40800000    # -1.0f

    .line 14
    return p0

    .line 16
    :cond_0
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 17
    invoke-virtual {v1, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 19
    move-result v1

    .line 22
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 23
    move-result v2

    .line 26
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 27
    invoke-static {p0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 33
    move-result-wide p0

    .line 36
    double-to-float p0, p0

    .line 37
    mul-float/2addr v2, p0

    .line 38
    const/4 p0, 0x1

    .line 39
    new-array p0, p0, [F

    .line 40
    const/4 p1, 0x0

    .line 42
    aput v2, p0, p1

    .line 43
    invoke-static {v1, p2, v0, p0}, Lmiuix/animation/Folme;->getPredictFriction(FFF[F)F

    .line 45
    move-result p0

    .line 48
    return p0
    .line 49
.end method

.method public varargs getPredictValue(Lmiuix/animation/property/FloatProperty;[F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/IAnimTarget;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 9
    invoke-virtual {v1, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 11
    move-result v1

    .line 14
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 15
    invoke-static {p0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 21
    move-result-wide p0

    .line 24
    double-to-float p0, p0

    .line 25
    const/4 p1, 0x0

    .line 26
    cmpl-float p1, v0, p1

    .line 27
    if-eqz p1, :cond_0

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 31
    move-result p1

    .line 34
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 35
    move-result p0

    .line 38
    mul-float/2addr p0, p1

    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz p2, :cond_2

    .line 42
    array-length v3, p2

    .line 44
    if-nez v3, :cond_1

    .line 45
    goto :goto_1

    .line 47
    :cond_1
    aget p2, p2, v2

    .line 48
    new-array p1, p1, [F

    .line 50
    aput p0, p1, v2

    .line 52
    invoke-static {v0, p2, p1}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    .line 54
    move-result p0

    .line 57
    :goto_0
    add-float/2addr p0, v1

    .line 58
    return p0

    .line 59
    :cond_2
    :goto_1
    new-array p1, p1, [F

    .line 60
    aput p0, p1, v2

    .line 62
    invoke-static {v0, p1}, Lmiuix/animation/Folme;->getPredictDistance(F[F)F

    .line 64
    move-result p0

    .line 67
    goto :goto_0
    .line 68
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 2
    return-object p0
    .line 4
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 10
    invoke-virtual {v2, v0, v1, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 12
    move-result-object p1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, p1, v1}, Lmiuix/animation/internal/PredictTask;->predictDuration(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)J

    .line 17
    move-result-wide v2

    .line 20
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->clearTempState(Lmiuix/animation/controller/AnimState;)V

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/base/AnimConfigLink;->clear()V

    .line 26
    return-wide v2
    .line 29
.end method

.method public removeListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->removeListener(Lmiuix/animation/listener/TransitionListener;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public set(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 4
    return-object p0
    .line 7
.end method

.method public varargs setConfig(Lmiuix/animation/base/AnimConfig;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-object p0
    .line 2
.end method

.method public varargs setEase(I[F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 2
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/property/FloatProperty;I[F)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/property/FloatProperty;I[F)V

    return-object p0
.end method

.method public varargs setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/controller/StateManager;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)V

    return-object p0
.end method

.method public setFlags(J)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lmiuix/animation/IAnimTarget;->setFlags(J)V

    .line 7
    return-object p0
    .line 10
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 10
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    .line 12
    :cond_0
    new-instance v1, Lmiuix/animation/controller/FolmeState$1;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$1;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 13
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    .line 14
    :cond_0
    new-instance v1, Lmiuix/animation/controller/FolmeState$3;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$3;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs setTransitionFlags(J[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {v0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1, p2, p3}, Lmiuix/animation/controller/StateManager;->setTransitionFlags(Ljava/lang/Object;J[Lmiuix/animation/property/FloatProperty;)V

    .line 8
    return-object p0
    .line 11
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 4
    return-object p0
    .line 7
.end method

.method public varargs then(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/StateManager;->setStateFlags(Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs then([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/controller/FolmeState$4;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/controller/FolmeState$4;-><init>(Lmiuix/animation/controller/FolmeState;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 3

    .line 2
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/StateManager;->hasState(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5
    array-length v1, p2

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length p1, p2

    invoke-static {p2, v2, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0, v1}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 3

    .line 11
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMgr:Lmiuix/animation/controller/StateManager;

    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    invoke-direct {p0}, Lmiuix/animation/controller/FolmeState;->getConfigLink()Lmiuix/animation/base/AnimConfigLink;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lmiuix/animation/controller/StateManager;->getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    return-object p0
.end method
