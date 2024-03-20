.class Lmiuix/animation/internal/RunnerHandler;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final ANIM_MSG_CLEAN:I = 0x5

.field public static final ANIM_MSG_RUNNER_RUN:I = 0x3

.field public static final ANIM_MSG_SETUP:I = 0x1

.field public static final ANIM_MSG_SET_TO:I = 0x4

.field public static final ANIM_MSG_UPDATE:I = 0x2


# instance fields
.field private final mDelList:Ljava/util/List;

.field private mFrameCount:I

.field private mIsTaskRunning:Z

.field private mLastRun:J

.field private final mOpMap:Ljava/util/Map;

.field private mRunnerStart:Z

.field private final mSplitInfo:[I

.field private mStart:Z

.field private final mTaskList:Ljava/util/List;

.field private mTotalT:J

.field private final mTransList:Ljava/util/List;

.field private final mTransMap:Ljava/util/Map;

.field private final runningTarget:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    .line 5
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 7
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    .line 19
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 45
    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 49
    iput-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 51
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 54
    const/4 p1, 0x2

    .line 56
    new-array p1, p1, [I

    .line 57
    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    .line 59
    return-void
    .line 61
.end method

.method private addAnimTask(Ljava/util/List;II)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 16
    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 34
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->getTaskOfMinCount()Lmiuix/animation/internal/AnimTask;

    .line 36
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 44
    move-result v3

    .line 47
    if-ge v3, p3, :cond_1

    .line 48
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getTotalAnimCount()I

    .line 50
    move-result v3

    .line 53
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    .line 54
    move-result v4

    .line 57
    add-int/2addr v4, v3

    .line 58
    if-le v4, p2, :cond_1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v2, v1}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    return-void
    .line 72
.end method

.method private addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lmiuix/animation/utils/LinkNode;

    .line 6
    if-nez p0, :cond_0

    .line 8
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p2}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    .line 14
    :goto_0
    return-void
    .line 17
.end method

.method private static doSetOperation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;)V
    .locals 5

    .line 1
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 2
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 4
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_4

    .line 10
    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 12
    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-object v2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    :cond_0
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 28
    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 30
    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    iget v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    iput v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 42
    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 44
    const/4 v2, 0x3

    .line 46
    if-ne v1, v2, :cond_2

    .line 47
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 49
    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 51
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 53
    cmpl-double v1, v1, v3

    .line 58
    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 62
    iget-wide v2, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    .line 64
    iput-wide v2, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 66
    :cond_1
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 68
    iget v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 72
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 74
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 78
    iput v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    const/4 v2, 0x4

    .line 83
    if-ne v1, v2, :cond_3

    .line 84
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 86
    iget v2, v1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 90
    iput v2, v1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 92
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 96
    iput v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 98
    :cond_3
    :goto_0
    iget-byte p3, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    .line 100
    invoke-virtual {p2, p3}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 102
    invoke-static {p0, p1, p2, v0}, Lmiuix/animation/internal/TransitionInfo;->decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    .line 105
    :cond_4
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 108
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    const-string p1, "---- RunnerHandler handleUpdate doSetOperation "

    .line 114
    const-string p2, " taskInfo "

    .line 116
    invoke-static {p1, v0, p2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object p1

    .line 121
    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 122
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 130
    const/4 p1, 0x0

    .line 131
    new-array p1, p1, [Ljava/lang/Object;

    .line 132
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_5
    return-void
    .line 137
.end method

.method private doSetup()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 22
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 24
    iget-object v3, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 26
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 31
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 33
    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimManager;->setupTransition(Lmiuix/animation/internal/TransitionInfo;)V

    .line 35
    invoke-virtual {v1}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 42
    if-nez v1, :cond_0

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 49
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 52
    if-nez v0, :cond_2

    .line 54
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 57
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunner;->start()V

    .line 63
    :cond_2
    return-void
    .line 66
.end method

.method private getTaskOfMinCount()Lmiuix/animation/internal/AnimTask;
    .locals 4

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const v1, 0x7fffffff

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 21
    check-cast v2, Lmiuix/animation/internal/AnimTask;

    .line 22
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getTotalAnimCount()I

    .line 24
    move-result v3

    .line 27
    if-ge v3, v1, :cond_0

    .line 28
    move-object v0, v2

    .line 30
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v0
    .line 33
.end method

.method private getTotalAnimCount()I
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lmiuix/animation/IAnimTarget;

    .line 19
    iget-object v1, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 21
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    .line 23
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v0
    .line 29
.end method

.method private static handleSetTo(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;)Z
    .locals 3

    .line 1
    invoke-static {p2}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 10
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 12
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 21
    iget v2, v0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 23
    add-int/2addr v2, v1

    .line 25
    iput v2, v0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 26
    iget v0, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 28
    add-int/2addr v0, v1

    .line 30
    iput v0, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 31
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 34
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 37
    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 39
    invoke-static {p0, p1, p2, v0}, Lmiuix/animation/internal/TransitionInfo;->decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    .line 41
    :cond_1
    return v1
    .line 44
.end method

.method private static handleUpdate(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 2
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 4
    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 6
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 19
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Lmiuix/animation/internal/AnimTask;

    .line 30
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 32
    iget v4, v2, Lmiuix/animation/internal/AnimTask;->startPos:I

    .line 34
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    .line 36
    move-result v5

    .line 39
    add-int/2addr v5, v4

    .line 40
    :goto_0
    if-ge v4, v5, :cond_0

    .line 41
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v6

    .line 46
    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    .line 47
    if-eqz v6, :cond_1

    .line 49
    invoke-static {v2, p2, v6}, Lmiuix/animation/internal/RunnerHandler;->handleSetTo(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;)Z

    .line 51
    move-result v7

    .line 54
    if-nez v7, :cond_1

    .line 55
    if-eqz v0, :cond_1

    .line 57
    if-eqz p1, :cond_1

    .line 59
    invoke-static {v2, p2, v6, p1}, Lmiuix/animation/internal/RunnerHandler;->doSetOperation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;)V

    .line 61
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    if-nez v0, :cond_3

    .line 67
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 69
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 71
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    .line 73
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_3
    invoke-virtual {p2}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 80
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    iget p1, p2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 86
    if-lez p1, :cond_5

    .line 88
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 90
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 92
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mBeginAnim:Ljava/util/Set;

    .line 94
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 96
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 101
    if-eqz p1, :cond_5

    .line 102
    sget-object p1, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 104
    iget p2, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object p2

    .line 111
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 115
    move-result p1

    .line 118
    const/4 p2, 0x0

    .line 119
    if-eqz p1, :cond_4

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    const-string v0, "---- RunnerHandler handleUpdate ANIM_MSG_START_TAG "

    .line 124
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 135
    new-array v0, p2, [Ljava/lang/Object;

    .line 136
    invoke-static {p1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_4
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 141
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 143
    iget p0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 145
    invoke-virtual {p1, p2, p0, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 147
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    :cond_5
    return-void
    .line 154
.end method

.method private isInfoInTransMap(Lmiuix/animation/internal/TransitionInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 2
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lmiuix/animation/internal/TransitionInfo;

    .line 10
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    if-ne p0, p1, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object p0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    .line 18
    check-cast p0, Lmiuix/animation/internal/TransitionInfo;

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
    .line 24
.end method

.method private onSetTo(Lmiuix/animation/internal/RunnerHandler$SetToInfo;)V
    .locals 5

    .line 1
    iget-object p0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 2
    instance-of p0, p0, Lmiuix/animation/ViewTarget;

    .line 4
    iget-object v0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 6
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    iget-object v2, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 26
    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    .line 28
    move-result-object v1

    .line 31
    iget-object v2, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 32
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 34
    iget-object v2, v2, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 41
    check-cast v2, Lmiuix/animation/listener/UpdateInfo;

    .line 42
    if-nez v2, :cond_1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 47
    iget-object v4, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 49
    invoke-virtual {v3, v4, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    .line 51
    move-result-wide v3

    .line 54
    iget-object v1, v2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 55
    iput-wide v3, v1, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    .line 57
    if-nez p0, :cond_0

    .line 59
    iget-object v1, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 61
    invoke-virtual {v2, v1}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 67
    const/4 v0, 0x0

    .line 69
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    .line 70
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 72
    move-result p0

    .line 75
    if-nez p0, :cond_3

    .line 76
    iget-object p0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 78
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 80
    iget-object p0, p0, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 84
    :cond_3
    return-void
    .line 87
.end method

.method private runAnim(JJZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    .line 10
    return-void

    .line 13
    :cond_0
    iput-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 14
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 20
    move-result-wide p1

    .line 23
    iget v0, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 24
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    const-wide/16 v2, 0x2

    .line 29
    mul-long/2addr v2, p1

    .line 31
    cmp-long v2, p3, v2

    .line 32
    if-lez v2, :cond_1

    .line 34
    move-wide p3, p1

    .line 36
    :cond_1
    iget-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 37
    add-long/2addr p1, p3

    .line 39
    iput-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 40
    add-int/2addr v0, v1

    .line 42
    iput v0, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 43
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->getTotalAnimCount()I

    .line 45
    move-result p1

    .line 48
    iget-object p2, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    .line 49
    invoke-static {p1, p2}, Lmiuix/animation/internal/ThreadPoolUtil;->getSplitCount(I[I)V

    .line 51
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    .line 54
    const/4 p2, 0x0

    .line 56
    aget v0, p1, p2

    .line 57
    aget p1, p1, v1

    .line 59
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 61
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v2

    .line 66
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 77
    iget-object v3, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 79
    iget-object v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 81
    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 87
    invoke-direct {p0, v2, p1, v0}, Lmiuix/animation/internal/RunnerHandler;->addAnimTask(Ljava/util/List;II)V

    .line 89
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    move-result p1

    .line 97
    xor-int/2addr p1, v1

    .line 98
    iput-boolean p1, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 99
    sget-object p1, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 109
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object p1

    .line 117
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 127
    move-object v3, v0

    .line 128
    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 129
    iget-wide v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 131
    move-wide v6, p3

    .line 133
    move v8, p5

    .line 134
    invoke-virtual/range {v3 .. v8}, Lmiuix/animation/internal/AnimTask;->start(JJZ)V

    .line 135
    goto :goto_1

    .line 138
    :cond_3
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 139
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 141
    move-result p1

    .line 144
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 145
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 147
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 150
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 152
    if-eqz p1, :cond_5

    .line 155
    iget-boolean p0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 157
    if-nez p0, :cond_5

    .line 159
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 161
    move-result p0

    .line 164
    if-eqz p0, :cond_4

    .line 165
    const-string p0, "-- runAnim no transList then clean"

    .line 167
    new-array p1, p2, [Ljava/lang/Object;

    .line 169
    invoke-static {p0, p1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_4
    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 174
    const/4 p1, 0x5

    .line 176
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    :cond_5
    return-void
    .line 180
.end method

.method private setupWaitTrans(Lmiuix/animation/IAnimTarget;)Z
    .locals 2

    .line 1
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 2
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 14
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 16
    invoke-direct {p0, v0, p1, v1}, Lmiuix/animation/internal/RunnerHandler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 18
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
    .line 24
.end method

.method private stopAnimRunner()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "total time = "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-wide v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "frame count = "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget v2, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 47
    const-string v1, "-- stopAnimRunner"

    .line 48
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 54
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 56
    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 60
    iput v0, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 62
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimRunner;->end()V

    .line 68
    :cond_1
    return-void
    .line 71
.end method

.method private updateAnim()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 3
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    move v2, v0

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_2

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Lmiuix/animation/IAnimTarget;

    .line 23
    iget-object v5, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 25
    invoke-direct {p0, v3, v5}, Lmiuix/animation/internal/RunnerHandler;->updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z

    .line 27
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    invoke-direct {p0, v3}, Lmiuix/animation/internal/RunnerHandler;->setupWaitTrans(Lmiuix/animation/IAnimTarget;)Z

    .line 33
    move-result v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    goto :goto_1

    .line 39
    :cond_0
    iget-object v4, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 40
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    move v2, v4

    .line 46
    :goto_2
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    .line 47
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 49
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 53
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 55
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 65
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 67
    move-result v1

    .line 70
    if-nez v1, :cond_4

    .line 71
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    const-string v1, "- updateAnim->doSetup"

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_3
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->doSetup()V

    .line 86
    move v2, v4

    .line 89
    :cond_4
    if-nez v2, :cond_5

    .line 90
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    .line 92
    :cond_5
    return-void
    .line 95
.end method

.method private updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z
    .locals 13

    .line 1
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 2
    invoke-virtual {v0, p2}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lmiuix/animation/internal/AnimOperationInfo;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz v5, :cond_a

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 32
    check-cast v5, Lmiuix/animation/internal/TransitionInfo;

    .line 33
    invoke-direct {p0, v5}, Lmiuix/animation/internal/RunnerHandler;->isInfoInTransMap(Lmiuix/animation/internal/TransitionInfo;)Z

    .line 35
    move-result v7

    .line 38
    if-eqz v7, :cond_1

    .line 39
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    if-eqz v0, :cond_2

    .line 44
    iget-wide v7, v5, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 46
    iget-wide v9, v0, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 48
    cmp-long v7, v7, v9

    .line 50
    if-lez v7, :cond_2

    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 54
    const/4 v7, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move-object v7, v0

    .line 58
    :goto_1
    invoke-virtual {v5}, Lmiuix/animation/internal/TransitionInfo;->getAnimStats()Lmiuix/animation/internal/AnimStats;

    .line 59
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    .line 63
    move-result v9

    .line 66
    if-eqz v9, :cond_3

    .line 67
    invoke-static {v5, v7, v8}, Lmiuix/animation/internal/RunnerHandler;->handleUpdate(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V

    .line 69
    :cond_3
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 72
    move-result v9

    .line 75
    if-eqz v9, :cond_5

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    const-string v10, "---- updateAnim, target = "

    .line 80
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v9

    .line 91
    const/4 v10, 0x7

    .line 92
    new-array v10, v10, [Ljava/lang/Object;

    .line 93
    new-instance v11, Ljava/lang/StringBuilder;

    .line 95
    const-string v12, "id = "

    .line 97
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget v12, v5, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 102
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v11

    .line 110
    aput-object v11, v10, v2

    .line 111
    new-instance v11, Ljava/lang/StringBuilder;

    .line 113
    const-string v12, "key = "

    .line 115
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v12, v5, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v11

    .line 128
    aput-object v11, v10, v6

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    const-string v11, "useOp = "

    .line 133
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v6

    .line 144
    const/4 v7, 0x2

    .line 145
    aput-object v6, v10, v7

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    const-string v7, "info.startTime = "

    .line 150
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    iget-wide v11, v5, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    .line 155
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 163
    const/4 v7, 0x3

    .line 164
    aput-object v6, v10, v7

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    .line 167
    const-string v7, "opInfo.time = "

    .line 169
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    if-eqz v0, :cond_4

    .line 174
    iget-wide v11, v0, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 176
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    move-result-object v7

    .line 181
    goto :goto_2

    .line 182
    :cond_4
    const/4 v7, 0x0

    .line 183
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v6

    .line 190
    const/4 v7, 0x4

    .line 191
    aput-object v6, v10, v7

    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    .line 194
    const-string v11, "stats.isRunning = "

    .line 196
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v8}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 201
    move-result v11

    .line 204
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v6

    .line 211
    const/4 v11, 0x5

    .line 212
    aput-object v6, v10, v11

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    const-string v11, "stats = "

    .line 217
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v6

    .line 228
    const/4 v11, 0x6

    .line 229
    aput-object v6, v10, v11

    .line 230
    invoke-static {v9, v10}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    goto :goto_3

    .line 235
    :cond_5
    const/4 v7, 0x4

    .line 236
    :goto_3
    :try_start_0
    iget-object v6, v5, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 237
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    move-result-object v6

    .line 242
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    move-result v9

    .line 246
    if-eqz v9, :cond_7

    .line 247
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    move-result-object v9

    .line 252
    check-cast v9, Lmiuix/animation/listener/UpdateInfo;

    .line 253
    iget-boolean v9, v9, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    if-nez v9, :cond_6

    .line 257
    goto :goto_4

    .line 259
    :cond_7
    const/4 v6, 0x1

    .line 260
    goto :goto_5

    .line 261
    :catch_0
    move-exception v6

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    .line 263
    const-string v10, "updateList traversal failed "

    .line 265
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    const-string v10, "RunnerHandler"

    .line 270
    invoke-static {v6, v9, v10}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 272
    :goto_4
    move v6, v2

    .line 275
    :goto_5
    invoke-virtual {v8}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    .line 276
    move-result v9

    .line 279
    if-eqz v9, :cond_8

    .line 280
    if-eqz v6, :cond_0

    .line 282
    :cond_8
    iget-object v6, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 284
    iget v9, v8, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 286
    iget v8, v8, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 288
    if-le v9, v8, :cond_9

    .line 290
    const/4 v8, 0x2

    .line 292
    goto :goto_6

    .line 293
    :cond_9
    const/4 v8, 0x2

    .line 294
    const/4 v7, 0x3

    .line 295
    :goto_6
    invoke-virtual {v6, v5, v8, v7}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V

    .line 296
    goto/16 :goto_0

    .line 299
    :cond_a
    if-eqz v0, :cond_c

    .line 301
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 303
    move-result v1

    .line 306
    if-eq v3, v1, :cond_b

    .line 307
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimOperationInfo;->isUsed()Z

    .line 309
    move-result v0

    .line 312
    if-eqz v0, :cond_c

    .line 313
    :cond_b
    iget-object p0, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 315
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_c
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 320
    if-lez v4, :cond_d

    .line 323
    const/4 v2, 0x1

    .line 325
    :cond_d
    return v2
    .line 326
.end method


# virtual methods
.method public addSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/animation/internal/RunnerHandler$SetToInfo;-><init>(Lmiuix/animation/internal/RunnerHandler$1;)V

    .line 5
    iput-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 8
    iget-boolean p1, p2, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    new-instance p1, Lmiuix/animation/controller/AnimState;

    .line 14
    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 16
    iput-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 19
    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    iput-object p2, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 25
    :goto_0
    const/4 p1, 0x4

    .line 27
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    return-void
    .line 35
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_5

    .line 6
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_4

    .line 9
    const/4 v3, 0x3

    .line 11
    if-eq v0, v3, :cond_2

    .line 12
    const/4 v1, 0x4

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v1, 0x5

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    goto/16 :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 24
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    .line 27
    goto/16 :goto_0

    .line 30
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    check-cast v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;

    .line 34
    invoke-direct {p0, v0}, Lmiuix/animation/internal/RunnerHandler;->onSetTo(Lmiuix/animation/internal/RunnerHandler$SetToInfo;)V

    .line 36
    goto/16 :goto_0

    .line 39
    :cond_2
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 41
    if-eqz v0, :cond_7

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v4

    .line 48
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    .line 53
    move-result-wide v6

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    check-cast v0, Ljava/lang/Boolean;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    move-result v8

    .line 64
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 65
    if-nez v0, :cond_3

    .line 67
    iput-boolean v2, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 69
    const-wide/16 v2, 0x0

    .line 71
    iput-wide v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 73
    iput v1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 75
    move-object v3, p0

    .line 77
    invoke-direct/range {v3 .. v8}, Lmiuix/animation/internal/RunnerHandler;->runAnim(JJZ)V

    .line 78
    goto :goto_0

    .line 81
    :cond_3
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 82
    if-nez v0, :cond_7

    .line 84
    iget-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 86
    sub-long v6, v4, v0

    .line 88
    move-object v3, p0

    .line 90
    invoke-direct/range {v3 .. v8}, Lmiuix/animation/internal/RunnerHandler;->runAnim(JJZ)V

    .line 91
    goto :goto_0

    .line 94
    :cond_4
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->updateAnim()V

    .line 95
    goto :goto_0

    .line 98
    :cond_5
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    .line 99
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v2

    .line 106
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 110
    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 111
    if-eqz v0, :cond_7

    .line 113
    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 115
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 117
    invoke-direct {p0, v2, v0, v3}, Lmiuix/animation/internal/RunnerHandler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 119
    iget-object v2, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 122
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 124
    iget-object v2, v2, Lmiuix/animation/internal/AnimManager;->mSetupInfo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    iget v0, v0, Lmiuix/animation/internal/TransitionInfo;->id:I

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 137
    if-nez v0, :cond_7

    .line 139
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 141
    move-result v0

    .line 144
    if-eqz v0, :cond_6

    .line 145
    const-string v0, "- ANIM_MSG_SETUP->doSetup"

    .line 147
    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-static {v0, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_6
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->doSetup()V

    .line 154
    :cond_7
    :goto_0
    const/4 p0, 0x0

    .line 157
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    return-void
    .line 160
.end method

.method public setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    move-result-wide v0

    .line 16
    iput-wide v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 17
    iget-object p0, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 19
    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 21
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    return-void
    .line 26
.end method
