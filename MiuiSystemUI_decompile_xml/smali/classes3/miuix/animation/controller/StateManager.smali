.class Lmiuix/animation/controller/StateManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final TAG_AUTO_SET_TO:Ljava/lang/String; = "autoSetTo"

.field static final TAG_SET_TO:Ljava/lang/String; = "defaultSetTo"

.field static final TAG_TO:Ljava/lang/String; = "defaultTo"


# instance fields
.field final mAutoSetToState:Lmiuix/animation/controller/AnimState;

.field mCurTag:Ljava/lang/Object;

.field final mSetToState:Lmiuix/animation/controller/AnimState;

.field mStateHelper:Lmiuix/animation/controller/StateHelper;

.field final mStateMap:Ljava/util/Map;

.field final mToState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 10
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 12
    const-string v1, "defaultTo"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    .line 17
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 20
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 22
    const-string v1, "defaultSetTo"

    .line 24
    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    .line 26
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 29
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 31
    const-string v1, "autoSetTo"

    .line 33
    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;Z)V

    .line 35
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mAutoSetToState:Lmiuix/animation/controller/AnimState;

    .line 38
    new-instance v0, Lmiuix/animation/controller/StateHelper;

    .line 40
    invoke-direct {v0}, Lmiuix/animation/controller/StateHelper;-><init>()V

    .line 42
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateHelper:Lmiuix/animation/controller/StateHelper;

    .line 45
    return-void
    .line 47
.end method

.method private getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 5
    new-instance p2, Lmiuix/animation/controller/AnimState;

    invoke-direct {p2, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    move-object p1, p2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private varargs getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    if-lez v0, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 5
    aget-object v1, p2, v0

    .line 6
    invoke-direct {p0, v1, v0}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0, p2}, Lmiuix/animation/controller/StateManager;->getStateByName([Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 20
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object v0

    .line 25
    :cond_2
    return-object v0
    .line 26
.end method

.method private varargs getStateByName([Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    .line 3
    array-length v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-le v1, v3, :cond_0

    .line 8
    aget-object p1, p1, v3

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move-object p1, v2

    .line 13
    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    instance-of p1, p1, Ljava/lang/String;

    .line 18
    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0, v0, v3}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    .line 22
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_1
    return-object v2
    .line 27
.end method

.method private varargs setAnimState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/StateManager;->mStateHelper:Lmiuix/animation/controller/StateHelper;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/animation/controller/StateHelper;->parse(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public add(Ljava/lang/String;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Ljava/lang/String;FJ)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    float-to-double p2, p2

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Ljava/lang/String;IJ)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    int-to-double p2, p2

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;F)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;FJ)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    float-to-double p2, p2

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;I)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    int-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public add(Lmiuix/animation/property/FloatProperty;IJ)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, p3, p4}, Lmiuix/animation/controller/AnimState;->setConfigFlag(Ljava/lang/Object;J)V

    int-to-double p2, p2

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;F)V
    .locals 2

    const-wide/16 v0, 0x2

    .line 4
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;FJ)V

    return-void
.end method

.method public addInitProperty(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Ljava/lang/String;IJ)V

    return-void
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;F)V
    .locals 2

    const-wide/16 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;FJ)V

    return-void
.end method

.method public addInitProperty(Lmiuix/animation/property/FloatProperty;I)V
    .locals 2

    const-wide/16 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lmiuix/animation/controller/StateManager;->add(Lmiuix/animation/property/FloatProperty;IJ)V

    return-void
.end method

.method public addListener(Lmiuix/animation/listener/TransitionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 6
    move-result-object p0

    .line 9
    filled-new-array {p1}, [Lmiuix/animation/listener/TransitionListener;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 14
    return-void
    .line 17
.end method

.method public addState(Lmiuix/animation/controller/AnimState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-void
    .line 11
.end method

.method public addTempConfig(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 2
    if-eq p1, p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 6
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    new-array p1, p1, [Z

    .line 11
    invoke-virtual {p2, p0, p1}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;[Z)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 4
    return-void
    .line 7
.end method

.method public clearTempState(Lmiuix/animation/controller/AnimState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/animation/controller/StateManager;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 6
    if-ne p1, p0, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->clear()V

    .line 10
    :cond_1
    return-void
    .line 13
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mToState:Lmiuix/animation/controller/AnimState;

    .line 6
    iput-object v0, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public varargs getSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 2
    invoke-direct {p0, v0, p3}, Lmiuix/animation/controller/StateManager;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 4
    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v0, p2, p3}, Lmiuix/animation/controller/StateManager;->setAnimState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    .line 8
    return-object v0
    .line 11
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    return-object p0
.end method

.method public varargs getToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p3}, Lmiuix/animation/controller/StateManager;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 6
    move-result-object v0

    .line 9
    invoke-direct {p0, p1, v0, p2, p3}, Lmiuix/animation/controller/StateManager;->setAnimState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public hasState(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public removeListener(Lmiuix/animation/listener/TransitionListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 6
    move-result-object p0

    .line 9
    filled-new-array {p1}, [Lmiuix/animation/listener/TransitionListener;

    .line 10
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 14
    return-void
    .line 17
.end method

.method public varargs setEase(I[F)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method public varargs setEase(Lmiuix/animation/property/FloatProperty;I[F)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1, p3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    return-void
.end method

.method public varargs setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;[Lmiuix/animation/property/FloatProperty;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/controller/StateManager;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    goto :goto_1

    .line 4
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    new-array v4, v1, [F

    .line 5
    invoke-virtual {p0, v3, p1, v4}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setStateFlags(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 2
    move-result-object p0

    .line 5
    iput-wide p2, p0, Lmiuix/animation/controller/AnimState;->flags:J

    .line 6
    return-void
    .line 8
.end method

.method public varargs setTransitionFlags(Ljava/lang/Object;J[Lmiuix/animation/property/FloatProperty;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/StateManager;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 6
    move-result-object p0

    .line 9
    array-length p1, p4

    .line 10
    if-nez p1, :cond_0

    .line 11
    iput-wide p2, p0, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    array-length p1, p4

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-ge v0, p1, :cond_2

    .line 18
    aget-object v1, p4, v0

    .line 20
    invoke-virtual {p0, v1}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/base/AnimSpecialConfig;

    .line 22
    move-result-object v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    new-instance v2, Lmiuix/animation/base/AnimSpecialConfig;

    .line 28
    invoke-direct {v2}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 30
    invoke-virtual {p0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    .line 33
    :cond_1
    iput-wide p2, v2, Lmiuix/animation/base/AnimConfig;->flags:J

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    return-void
    .line 41
.end method

.method public setup(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 1
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lmiuix/animation/controller/AnimState;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/StateManager;->mStateMap:Ljava/util/Map;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lmiuix/animation/controller/AnimState;

    .line 15
    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 19
    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0, v0}, Lmiuix/animation/controller/StateManager;->addState(Lmiuix/animation/controller/AnimState;)V

    .line 24
    :cond_1
    move-object p1, v0

    .line 27
    :goto_0
    iput-object p1, p0, Lmiuix/animation/controller/StateManager;->mCurTag:Ljava/lang/Object;

    .line 28
    return-object p1
    .line 30
.end method
