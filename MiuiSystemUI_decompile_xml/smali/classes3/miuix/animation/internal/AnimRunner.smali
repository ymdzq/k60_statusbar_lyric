.class public Lmiuix/animation/internal/AnimRunner;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final MAX_DELTA:J = 0x10L

.field private static final MAX_RECORD:I = 0x5

.field private static final MSG_END:I = 0x1

.field private static final MSG_START:I

.field static volatile sMainHandler:Landroid/os/Handler;

.field public static final sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

.field private static final sRunnerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile mAverageDelta:J

.field private mDeltaRecord:[J

.field private volatile mIsRunning:Z

.field private mLastFrameTime:J

.field private mRatio:F

.field private mRecordCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    const-string v1, "AnimRunnerThread"

    .line 4
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    .line 9
    invoke-static {}, Lmiuix/animation/Folme;->getLooper()Landroid/os/Looper;

    .line 11
    move-result-object v1

    .line 14
    invoke-static {v1}, Lmiuix/animation/internal/AnimRunner;->createMainHandler(Landroid/os/Looper;)V

    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance v1, Lmiuix/animation/internal/RunnerHandler;

    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 23
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Lmiuix/animation/internal/RunnerHandler;-><init>(Landroid/os/Looper;)V

    .line 27
    sput-object v1, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 30
    return-void
    .line 32
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x10

    .line 3
    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    const/4 v0, 0x5

    new-array v0, v0, [J

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lmiuix/animation/internal/AnimRunner$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/internal/AnimRunner;-><init>()V

    return-void
.end method

.method public static synthetic access$100()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$200()V
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    .line 2
    return-void
    .line 5
.end method

.method private average([J)J
    .locals 8

    .line 1
    array-length p0, p1

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 5
    move-wide v4, v0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v2, p0, :cond_1

    .line 8
    aget-wide v6, p1, v2

    .line 10
    add-long/2addr v4, v6

    .line 12
    cmp-long v6, v6, v0

    .line 13
    if-lez v6, :cond_0

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    if-lez v3, :cond_2

    .line 22
    int-to-long p0, v3

    .line 24
    div-long v0, v4, p0

    .line 25
    :cond_2
    return-wide v0
    .line 27
.end method

.method private calculateAverageDelta(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    .line 2
    invoke-direct {p0, v0}, Lmiuix/animation/internal/AnimRunner;->average([J)J

    .line 4
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    cmp-long v4, v0, v2

    .line 10
    if-lez v4, :cond_0

    .line 12
    move-wide p1, v0

    .line 14
    :cond_0
    cmp-long v0, p1, v2

    .line 15
    const-wide/16 v1, 0x10

    .line 17
    if-eqz v0, :cond_1

    .line 19
    cmp-long v0, p1, v1

    .line 21
    if-lez v0, :cond_2

    .line 23
    :cond_1
    move-wide p1, v1

    .line 25
    :cond_2
    long-to-float p1, p1

    .line 26
    iget p0, p0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    .line 27
    div-float/2addr p1, p0

    .line 29
    float-to-double p0, p1

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 31
    move-result-wide p0

    .line 34
    double-to-long p0, p0

    .line 35
    return-wide p0
    .line 36
.end method

.method public static createMainHandler(Landroid/os/Looper;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance v0, Lmiuix/animation/internal/AnimRunner$1;

    .line 5
    invoke-direct {v0, p0}, Lmiuix/animation/internal/AnimRunner$1;-><init>(Landroid/os/Looper;)V

    .line 7
    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    .line 10
    return-void
    .line 12
.end method

.method private static endAnimation()V
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    const-string v1, "AnimRunner.endAnimation"

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v1, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_1
    iput-boolean v2, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 25
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {v1, v0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    .line 31
    return-void
    .line 34
.end method

.method public static getInst()Lmiuix/animation/internal/AnimRunner;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner$Holder;->inst:Lmiuix/animation/internal/AnimRunner;

    .line 2
    return-object v0
    .line 4
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    .line 2
    return-object v0
    .line 4
.end method

.method public static setThreadPriority(I)V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 4
    move-result v0

    .line 7
    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 8
    return-void
    .line 11
.end method

.method private static startAnimRunner()V
    .locals 4

    .line 1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const-string v2, "AnimRunner.start"

    .line 20
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_1
    invoke-static {}, Lmiuix/animation/Folme;->getTimeRatio()F

    .line 25
    move-result v1

    .line 28
    iput v1, v0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    .line 29
    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 32
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 34
    move-result-object v1

    .line 37
    const-wide/16 v2, 0x0

    .line 38
    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    .line 40
    return-void
    .line 43
.end method

.method private static updateAnimRunner(Ljava/util/Collection;Z)V
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 8
    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lmiuix/animation/IAnimTarget;

    .line 28
    iget-object v1, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 30
    const/4 v2, 0x0

    .line 32
    new-array v2, v2, [Lmiuix/animation/property/FloatProperty;

    .line 33
    invoke-virtual {v1, v2}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 35
    move-result v1

    .line 38
    iget-object v2, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 39
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->isAnimSetup()Z

    .line 41
    move-result v2

    .line 44
    invoke-virtual {v0}, Lmiuix/animation/IAnimTarget;->isValidFlag()Z

    .line 45
    move-result v3

    .line 48
    if-eqz v1, :cond_2

    .line 49
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 51
    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->update(Z)V

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    if-nez v2, :cond_1

    .line 57
    if-nez v1, :cond_1

    .line 59
    const-wide/16 v1, 0x1

    .line 61
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    .line 63
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    if-eqz v3, :cond_1

    .line 69
    filled-new-array {v0}, [Lmiuix/animation/IAnimTarget;

    .line 71
    move-result-object v0

    .line 74
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    return-void
    .line 79
.end method

.method private updateRunningTime(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v4, v0, v2

    .line 6
    if-nez v4, :cond_0

    .line 8
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    sub-long v2, p1, v0

    .line 13
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 15
    :goto_0
    iget p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    .line 17
    rem-int/lit8 p2, p1, 0x5

    .line 19
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    .line 21
    aput-wide v2, v0, p2

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 25
    iput p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    .line 27
    invoke-direct {p0, v2, v3}, Lmiuix/animation/internal/AnimRunner;->calculateAverageDelta(J)J

    .line 29
    move-result-wide p1

    .line 32
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v0, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {p0, v0}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 3

    .line 2
    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v0, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {p0, v0}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimRunner;->updateRunningTime(J)V

    .line 2
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 5
    if-eqz p1, :cond_6

    .line 7
    invoke-static {}, Lmiuix/animation/Folme;->getTargets()Ljava/util/Collection;

    .line 9
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    move v1, v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 29
    iget-object v3, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 31
    new-array v4, v0, [Lmiuix/animation/property/FloatProperty;

    .line 33
    invoke-virtual {v3, v4}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 35
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 41
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    .line 43
    move-result v2

    .line 46
    add-int/2addr v1, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 p2, 0x1f4

    .line 49
    if-le v1, p2, :cond_2

    .line 51
    const/4 v0, 0x1

    .line 53
    :cond_2
    if-nez v0, :cond_3

    .line 54
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 56
    move-result p2

    .line 59
    if-gtz p2, :cond_4

    .line 60
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 62
    move-result p2

    .line 65
    if-nez p2, :cond_5

    .line 66
    :cond_4
    invoke-static {p1, v0}, Lmiuix/animation/internal/AnimRunner;->updateAnimRunner(Ljava/util/Collection;Z)V

    .line 68
    :cond_5
    sget-object p2, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 71
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 73
    move-result-object v1

    .line 76
    const/4 v2, 0x3

    .line 77
    iput v2, v1, Landroid/os/Message;->what:I

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object v2

    .line 83
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 84
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 86
    if-eqz v0, :cond_6

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 91
    move-result p2

    .line 94
    if-lez p2, :cond_6

    .line 95
    invoke-static {p1, v0}, Lmiuix/animation/internal/AnimRunner;->updateAnimRunner(Ljava/util/Collection;Z)V

    .line 97
    :cond_6
    iget-boolean p0, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 100
    return p0
    .line 102
.end method

.method public end()V
    .locals 1

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 8
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "AnimRunner.end handler is null! looper: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miuix_anim"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    :cond_0
    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p2, v2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {p0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 3

    .line 4
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x3

    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    :cond_0
    sget-object p0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {p0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public getAverageDelta()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public run(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 1

    .line 3
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "- AnimManager.run"

    .line 4
    invoke-static {v0, p0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->startAnim(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getMainHandler()Landroid/os/Handler;

    .line 16
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    const-string v0, "AnimRunner.start handler is null! looper: "

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    const-string v0, "miuix_anim"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void
    .line 50
.end method
