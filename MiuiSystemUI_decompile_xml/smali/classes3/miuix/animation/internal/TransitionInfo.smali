.class Lmiuix/animation/internal/TransitionInfo;
.super Lmiuix/animation/utils/LinkNode;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sMap:Ljava/util/Map;


# instance fields
.field public animTasks:Ljava/util/List;

.field public volatile config:Lmiuix/animation/base/AnimConfig;

.field public volatile from:Lmiuix/animation/controller/AnimState;

.field public final id:I

.field public volatile key:Ljava/lang/Object;

.field private final mAnimStats:Lmiuix/animation/internal/AnimStats;

.field public volatile startTime:J

.field public final tag:Ljava/lang/Object;

.field public final target:Lmiuix/animation/IAnimTarget;

.field public volatile to:Lmiuix/animation/controller/AnimState;

.field public volatile updateList:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 11
    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    .line 2
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    move-result v0

    .line 10
    iput v0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 11
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    .line 13
    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 15
    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 25
    new-instance v1, Lmiuix/animation/internal/AnimStats;

    .line 27
    invoke-direct {v1}, Lmiuix/animation/internal/AnimStats;-><init>()V

    .line 29
    iput-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 32
    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 34
    invoke-direct {p0, p2}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    .line 36
    move-result-object p2

    .line 39
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 40
    invoke-direct {p0, p3}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    .line 42
    move-result-object p2

    .line 45
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 46
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 48
    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 53
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    .line 54
    iget-boolean v1, p3, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    .line 56
    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 78
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 79
    goto :goto_0

    .line 81
    :cond_0
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 82
    :goto_0
    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 85
    invoke-direct {p0}, Lmiuix/animation/internal/TransitionInfo;->initValueForColorProperty()V

    .line 87
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 90
    invoke-virtual {p3}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 92
    move-result-object p3

    .line 95
    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 96
    if-eqz p4, :cond_1

    .line 99
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 101
    invoke-virtual {p4, p2}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    .line 103
    :cond_1
    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 106
    move-result-object p1

    .line 109
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 110
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 112
    invoke-virtual {p1, p2, p0}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 114
    return-void
    .line 117
.end method

.method public static decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    const/4 v0, 0x1

    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 7
    iget-wide p2, p2, Lmiuix/animation/internal/AnimInfo;->delay:J

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    cmp-long p2, p2, v1

    .line 13
    if-lez p2, :cond_0

    .line 15
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 17
    iget p2, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 19
    if-lez p2, :cond_0

    .line 21
    sub-int/2addr p2, v0

    .line 23
    iput p2, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 24
    iget p0, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 26
    sub-int/2addr p0, v0

    .line 28
    iput p0, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 29
    :cond_0
    return-void
    .line 31
.end method

.method private getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-boolean p0, p1, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    .line 4
    if-eqz p0, :cond_0

    .line 6
    new-instance p0, Lmiuix/animation/controller/AnimState;

    .line 8
    invoke-direct {p0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    .line 13
    return-object p0

    .line 16
    :cond_0
    return-object p1
    .line 17
.end method

.method private initValueForColorProperty()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 9
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 27
    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 29
    move-result-object v1

    .line 32
    instance-of v2, v1, Lmiuix/animation/property/ColorProperty;

    .line 33
    if-nez v2, :cond_2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 38
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 40
    invoke-static {v2, v1, v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 45
    move-result-wide v2

    .line 48
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 49
    move-result v2

    .line 52
    if-nez v2, :cond_3

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 56
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 58
    invoke-virtual {v2, v3, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 60
    move-result-wide v2

    .line 63
    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 64
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 70
    check-cast v1, Lmiuix/animation/property/ColorProperty;

    .line 72
    double-to-int v2, v2

    .line 74
    invoke-virtual {v4, v1, v2}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    .line 75
    goto :goto_0

    .line 78
    :cond_4
    return-void
    .line 79
.end method


# virtual methods
.method public containsProperty(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public getAnimCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public getAnimStats()Lmiuix/animation/internal/AnimStats;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 2
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    .line 4
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 23
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 25
    iget-object v1, v1, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 27
    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimStats;->add(Lmiuix/animation/internal/AnimStats;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    .line 33
    return-object p0
    .line 35
.end method

.method public initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 6
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    .line 8
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 10
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 12
    move-result v2

    .line 15
    const-string v3, ", target = "

    .line 16
    const-string v4, " "

    .line 18
    const/4 v5, 0x0

    .line 20
    if-eqz v2, :cond_0

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    const-string v7, "-- doSetup, id = "

    .line 25
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget v7, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v7, ", key = "

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 48
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    .line 50
    move-result v7

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v7, ", startTime = "

    .line 57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v7, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 62
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v7, ", f = "

    .line 75
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v7, ", t = "

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v7, "\nconfig = "

    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v7, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v6

    .line 104
    new-array v7, v5, [Ljava/lang/Object;

    .line 105
    invoke-static {v6, v7}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 110
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 115
    move-result-object v7

    .line 118
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v7

    .line 122
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v8

    .line 126
    if-eqz v8, :cond_7

    .line 127
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v8

    .line 132
    invoke-virtual {v1, v8}, Lmiuix/animation/controller/AnimState;->getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 133
    move-result-object v8

    .line 136
    invoke-interface {p1, v8}, Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    .line 137
    move-result-object v9

    .line 140
    if-nez v9, :cond_2

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 147
    iget-byte v10, v10, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 149
    const/4 v11, 0x5

    .line 151
    if-ne v10, v11, :cond_3

    .line 152
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 154
    invoke-virtual {v10}, Lmiuix/animation/internal/AnimInfo;->clear()V

    .line 156
    if-eqz v2, :cond_3

    .line 159
    new-instance v10, Ljava/lang/StringBuilder;

    .line 161
    const-string v12, "-- doSetup, reset updateInfo = "

    .line 163
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v10

    .line 174
    new-array v12, v5, [Ljava/lang/Object;

    .line 175
    invoke-static {v10, v12}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_3
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 180
    iget-object v12, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 182
    invoke-virtual {v1, v12, v8}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 184
    move-result-wide v12

    .line 187
    iput-wide v12, v10, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 188
    if-eqz v0, :cond_4

    .line 190
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 192
    iget-object v12, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 194
    invoke-virtual {v0, v12, v8}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 196
    move-result-wide v12

    .line 199
    iput-wide v12, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 200
    goto :goto_1

    .line 202
    :cond_4
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 203
    iget-wide v12, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 205
    iget-object v10, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 207
    invoke-static {v10, v8, v12, v13}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    .line 209
    move-result-wide v12

    .line 212
    invoke-static {v12, v13}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    .line 213
    move-result v8

    .line 216
    if-nez v8, :cond_5

    .line 217
    iget-object v8, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 219
    iput-wide v12, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 221
    :cond_5
    :goto_1
    iget-object v8, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 223
    iget-byte v8, v8, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 225
    if-ne v8, v11, :cond_6

    .line 227
    iget-object v8, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 229
    iget-wide v10, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 231
    iput-wide v10, v8, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 233
    if-eqz v2, :cond_6

    .line 235
    new-instance v8, Ljava/lang/StringBuilder;

    .line 237
    const-string v10, "-- doSetup, after reset value = startValue "

    .line 239
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v10, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 244
    iget-wide v10, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    .line 246
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object v8

    .line 260
    new-array v10, v5, [Ljava/lang/Object;

    .line 261
    invoke-static {v8, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_6
    invoke-static {v9}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    .line 266
    if-eqz v2, :cond_1

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    .line 271
    const-string v10, "-- doSetup, after handleSetToValue "

    .line 273
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    const-string v10, ", op = "

    .line 281
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v9, v9, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 286
    iget-byte v9, v9, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 288
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 296
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object v8

    .line 304
    new-array v9, v5, [Ljava/lang/Object;

    .line 305
    invoke-static {v8, v9}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    goto/16 :goto_0

    .line 310
    :cond_7
    iput-object v6, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 312
    return-void
    .line 314
.end method

.method public setupTasks(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    div-int/lit16 v1, v0, 0xfa0

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result v1

    .line 14
    int-to-float v2, v0

    .line 15
    int-to-float v3, v1

    .line 16
    div-float/2addr v2, v3

    .line 17
    float-to-double v2, v2

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 19
    move-result-wide v2

    .line 22
    double-to-int v2, v2

    .line 23
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    move-result v3

    .line 29
    if-le v3, v1, :cond_0

    .line 30
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 34
    move-result v4

    .line 37
    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 38
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    goto :goto_1

    .line 45
    :cond_0
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 48
    move-result v3

    .line 51
    :goto_0
    if-ge v3, v1, :cond_1

    .line 52
    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 54
    new-instance v5, Lmiuix/animation/internal/AnimTask;

    .line 56
    invoke-direct {v5}, Lmiuix/animation/internal/AnimTask;-><init>()V

    .line 58
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v1

    .line 72
    const/4 v3, 0x0

    .line 73
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 83
    check-cast v4, Lmiuix/animation/internal/AnimTask;

    .line 84
    iput-object p0, v4, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 86
    add-int v5, v3, v2

    .line 88
    if-le v5, v0, :cond_2

    .line 90
    sub-int v5, v0, v3

    .line 92
    goto :goto_3

    .line 94
    :cond_2
    move v5, v2

    .line 95
    :goto_3
    invoke-virtual {v4, v3, v5}, Lmiuix/animation/internal/AnimTask;->setup(II)V

    .line 96
    if-eqz p1, :cond_3

    .line 99
    iget-object v4, v4, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 101
    iput v5, v4, Lmiuix/animation/internal/AnimStats;->startCount:I

    .line 103
    goto :goto_4

    .line 105
    :cond_3
    invoke-virtual {v4}, Lmiuix/animation/internal/AnimTask;->updateAnimStats()V

    .line 106
    :goto_4
    add-int/2addr v3, v5

    .line 109
    goto :goto_2

    .line 110
    :cond_4
    return-void
    .line 111
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "TransitionInfo{id = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", key = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 31
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", startTime = "

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-wide v1, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", target = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 53
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", propSize = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 71
    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 73
    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 77
    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", next = "

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object p0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const/16 p0, 0x7d

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    return-object p0
    .line 103
.end method
