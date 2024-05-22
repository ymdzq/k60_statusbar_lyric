.class public Lmiuix/animation/internal/AnimManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;


# instance fields
.field final mBeginAnim:Ljava/util/Set;

.field final mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field final mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field final mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

.field final mStartAnim:Ljava/util/Set;

.field mTarget:Lmiuix/animation/IAnimTarget;

.field private mUpdateList:Ljava/util/List;

.field final mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

.field final mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 35
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 42
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 49
    iput-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    return-void
    .line 54
.end method

.method private clearRunningInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 22
    sget-object v2, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 24
    iget v1, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v1

    .line 31
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 38
    return-void
    .line 41
.end method

.method private varargs containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z
    .locals 3

    .line 1
    array-length p0, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    if-ge v1, p0, :cond_1

    .line 5
    aget-object v2, p2, v1

    .line 7
    invoke-virtual {p1, v2}, Lmiuix/animation/internal/TransitionInfo;->containsProperty(Lmiuix/animation/property/FloatProperty;)Z

    .line 9
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    return v0
    .line 20
.end method

.method private pendState(Lmiuix/animation/internal/TransitionInfo;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 2
    iget-wide v0, v0, Lmiuix/animation/controller/AnimState;->flags:J

    .line 4
    const-wide/16 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2, v3}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 16
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
    .line 22
.end method

.method private removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_7

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 22
    if-ne v1, p1, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 27
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 29
    if-nez v3, :cond_2

    .line 31
    new-instance v3, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 38
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 43
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Lmiuix/animation/listener/UpdateInfo;

    .line 54
    iget-object v4, p1, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 56
    iget-object v5, v3, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 58
    invoke-virtual {v4, v5}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 63
    if-nez v4, :cond_3

    .line 64
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 66
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_1

    .line 71
    :cond_4
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 72
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result v2

    .line 77
    if-eqz v2, :cond_5

    .line 78
    iget v2, v1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 80
    iget v3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 82
    if-eq v2, v3, :cond_0

    .line 84
    const/4 v2, 0x5

    .line 86
    const/4 v3, 0x4

    .line 87
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V

    .line 88
    goto :goto_0

    .line 91
    :cond_5
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    move-result v2

    .line 97
    iget-object v3, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 98
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 100
    move-result v3

    .line 103
    if-eq v2, v3, :cond_6

    .line 104
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 106
    iput-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 108
    const/4 v2, 0x0

    .line 110
    iput-object v2, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 111
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    .line 114
    goto :goto_0

    .line 117
    :cond_6
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mUpdateList:Ljava/util/List;

    .line 118
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    goto :goto_0

    .line 123
    :cond_7
    return-void
    .line 124
.end method

.method private setTargetValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 20
    move-result-object v1

    .line 23
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 24
    invoke-virtual {p1, v2, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 26
    move-result-wide v2

    .line 29
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 30
    iget-object v4, v4, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 32
    iget-object v4, v4, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 39
    check-cast v4, Lmiuix/animation/listener/UpdateInfo;

    .line 40
    if-eqz v4, :cond_0

    .line 42
    iget-object v4, v4, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 44
    iput-wide v2, v4, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 46
    :cond_0
    instance-of v4, v1, Lmiuix/animation/property/IIntValueProperty;

    .line 48
    if-eqz v4, :cond_1

    .line 50
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 52
    move-object v5, v1

    .line 54
    check-cast v5, Lmiuix/animation/property/IIntValueProperty;

    .line 55
    double-to-int v6, v2

    .line 57
    invoke-virtual {v4, v5, v6}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    .line 58
    goto :goto_1

    .line 61
    :cond_1
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 62
    double-to-float v5, v2

    .line 64
    invoke-virtual {v4, v1, v5}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    .line 65
    :goto_1
    iget-object v4, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 68
    invoke-virtual {v4, v1, v2, v3}, Lmiuix/animation/IAnimTarget;->trackVelocity(Lmiuix/animation/property/FloatProperty;D)V

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 74
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/IAnimTarget;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 76
    return-void
    .line 79
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "- AnimManager.clear() "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/Throwable;

    .line 15
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 17
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 39
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 44
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 49
    invoke-direct {p0}, Lmiuix/animation/internal/AnimManager;->clearRunningInfo()V

    .line 52
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 57
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 62
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 67
    return-void
    .line 70
.end method

.method public getTotalAnimCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 23
    invoke-virtual {v1}, Lmiuix/animation/internal/TransitionInfo;->getAnimCount()I

    .line 25
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return v0
    .line 31
.end method

.method public getTransitionInfos(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
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
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 22
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    return-void
    .line 40
.end method

.method public getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lmiuix/animation/listener/UpdateInfo;

    .line 12
    invoke-direct {v0, p1}, Lmiuix/animation/listener/UpdateInfo;-><init>(Lmiuix/animation/property/FloatProperty;)V

    .line 14
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Lmiuix/animation/listener/UpdateInfo;

    .line 23
    if-eqz p0, :cond_0

    .line 25
    move-object v0, p0

    .line 27
    :cond_0
    return-object v0
    .line 28
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 2
    move-result-object p0

    .line 5
    iget-wide p0, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 6
    return-wide p0
    .line 8
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    :cond_0
    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 28
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 35
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Lmiuix/animation/internal/TransitionInfo;

    .line 46
    invoke-direct {p0, v2, p1}, Lmiuix/animation/internal/AnimManager;->containProperties(Lmiuix/animation/internal/TransitionInfo;[Lmiuix/animation/property/FloatProperty;)Z

    .line 48
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    return v1

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    return p0
    .line 56
.end method

.method public isAnimSetup()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    return p0
    .line 10
.end method

.method public notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 2
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    const-string v1, ", info = "

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v3, "-- notifyTransitionEnd 0, msg = "

    .line 23
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    new-array v1, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 46
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 48
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 50
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;Z)Z

    .line 54
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 57
    iget v1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 64
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 68
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 70
    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 72
    invoke-virtual {p0, p2, v0, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 82
    move-result p3

    .line 85
    if-eqz p3, :cond_2

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "-- notifyTransitionEnd 1, msg = "

    .line 90
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 107
    new-array p3, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {p2, p3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_2
    invoke-virtual {p0, p1, v2}, Lmiuix/animation/internal/AnimManager;->removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;Z)Z

    .line 113
    iget-object p2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 116
    new-instance p3, Lmiuix/animation/internal/AnimManager$1;

    .line 118
    invoke-direct {p3, p0, p1}, Lmiuix/animation/internal/AnimManager$1;-><init>(Lmiuix/animation/internal/AnimManager;Lmiuix/animation/internal/TransitionInfo;)V

    .line 120
    invoke-virtual {p2, p3}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    .line 123
    :goto_0
    return-void
    .line 126
.end method

.method public removePendingRemovedInfo(Lmiuix/animation/internal/TransitionInfo;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget v1, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 14
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 16
    if-ne v1, v2, :cond_0

    .line 18
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    const-string v2, "removed = "

    .line 36
    invoke-static {v2, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    const-string v4, "id = "

    .line 44
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget v4, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    const-string v5, "key = "

    .line 60
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v5, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v5, " "

    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v5, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 75
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 77
    move-result v5

    .line 80
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v5

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    const-string v6, "mRunningInfo.size = "

    .line 90
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 97
    move-result p0

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "info.startTime = "

    .line 110
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-wide v7, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 115
    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v7

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    .line 124
    const-string p1, "pendingInfo = "

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v8

    .line 137
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 138
    move-result-object p0

    .line 141
    const-string p1, "----- removePendingRemovedInfo"

    .line 142
    invoke-static {p1, p0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_1
    return v1
    .line 147
.end method

.method public removeRunningInfo(Lmiuix/animation/internal/TransitionInfo;Z)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget v2, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 15
    iget v3, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 17
    if-ne v2, v3, :cond_1

    .line 19
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    if-eqz p2, :cond_0

    .line 28
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mPendingRemovedInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    iget-object v3, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 32
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v1

    .line 39
    :goto_0
    new-array v2, v1, [Lmiuix/animation/property/FloatProperty;

    .line 40
    invoke-virtual {p0, v2}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 42
    move-result v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    iget-object v3, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    :cond_2
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 53
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    const-string v3, "----- removeRunningInfo, pending = "

    .line 59
    invoke-static {v3, p2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 64
    const-string v3, "removed = "

    .line 65
    invoke-static {v3, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    const-string v5, "id = "

    .line 73
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget v5, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v5

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    const-string v6, "key = "

    .line 89
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 94
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v6, " "

    .line 99
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v6, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 104
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    .line 106
    move-result v6

    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v6

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    const-string v7, "mRunningInfo.size = "

    .line 119
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v7, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 126
    move-result v7

    .line 129
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v7

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    const-string v8, "info.startTime = "

    .line 139
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-wide v8, p1, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 144
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v8

    .line 152
    const-string p1, "isAnimRunning = "

    .line 153
    invoke-static {p1, v2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 155
    move-result-object v9

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "target = "

    .line 161
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v10

    .line 174
    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    .line 175
    move-result-object p1

    .line 178
    invoke-static {p2, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object p1, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 184
    move-result p1

    .line 187
    if-lez p1, :cond_3

    .line 188
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 192
    move-result-object p0

    .line 195
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 196
    move-result-object p0

    .line 199
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    move-result p1

    .line 203
    if-eqz p1, :cond_3

    .line 204
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    move-result-object p1

    .line 209
    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    const-string v2, "------ after remove resetRunInfo = "

    .line 214
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object p1

    .line 225
    new-array p2, v1, [Ljava/lang/Object;

    .line 226
    invoke-static {p1, p2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    goto :goto_1

    .line 231
    :cond_3
    return v0
    .line 232
.end method

.method public setTarget(Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 2
    return-void
    .line 4
.end method

.method public setTo(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "setTo, target = "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "to = "

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 45
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 49
    move-result v0

    .line 52
    const/16 v1, 0x96

    .line 53
    if-le v0, v1, :cond_1

    .line 55
    sget-object p2, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 57
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 59
    invoke-virtual {p2, p0, p1}, Lmiuix/animation/internal/RunnerHandler;->addSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setTargetValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 65
    :goto_0
    return-void
    .line 68
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 2
    move-result-object p0

    .line 5
    float-to-double p1, p2

    .line 6
    iput-wide p1, p0, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 7
    return-void
    .line 9
.end method

.method public setupTransition(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "-- setupTransition "

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/AnimManager;->mRunningInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    iget-object v2, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/TransitionInfo;->initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V

    .line 35
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/TransitionInfo;->setupTasks(Z)V

    .line 39
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->removeSameAnim(Lmiuix/animation/internal/TransitionInfo;)V

    .line 42
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 45
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 47
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 49
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 51
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 53
    move-result p0

    .line 56
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 57
    iget-object v0, v0, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 59
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 61
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    if-eqz p0, :cond_1

    .line 67
    sget-object p0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 69
    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v0

    .line 76
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 80
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 82
    const/4 v0, 0x4

    .line 84
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 85
    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 87
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    :cond_1
    return-void
    .line 94
.end method

.method public startAnim(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    const-string v0, "- AnimManager.startAnim "

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/animation/internal/AnimManager;->pendState(Lmiuix/animation/internal/TransitionInfo;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, ".startAnim, pendState"

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    new-array p1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 44
    :cond_1
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 45
    iget v2, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 52
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    iget v0, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 67
    const/4 v0, 0x1

    .line 69
    iget p1, p1, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 72
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 76
    return-void
    .line 79
.end method

.method public update(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 2
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/TargetHandler;->runUpdate(Z)V

    .line 6
    return-void
    .line 9
.end method
