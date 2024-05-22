.class public abstract Lmiuix/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FLAT_ONESHOT:J = 0x1L

.field static final sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animManager:Lmiuix/animation/internal/AnimManager;

.field public final handler:Lmiuix/animation/internal/TargetHandler;

.field public final id:I

.field mDefaultMinVisible:F

.field mFlags:J

.field mFlagsSetTime:J

.field mMinVisibleChanges:Ljava/util/Map;

.field mShouldCheckValue:Z

.field final mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

.field notifyManager:Lmiuix/animation/internal/NotifyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    const v1, 0x7fffffff

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/internal/TargetHandler;

    .line 5
    invoke-direct {v0, p0}, Lmiuix/animation/internal/TargetHandler;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 7
    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 10
    new-instance v0, Lmiuix/animation/internal/AnimManager;

    .line 12
    invoke-direct {v0}, Lmiuix/animation/internal/AnimManager;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 17
    new-instance v1, Lmiuix/animation/internal/NotifyManager;

    .line 19
    invoke-direct {v1, p0}, Lmiuix/animation/internal/NotifyManager;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 21
    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    .line 24
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    iput v1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 29
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    .line 36
    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 39
    sget-object v1, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 43
    move-result v1

    .line 46
    iput v1, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 47
    new-instance v1, Lmiuix/animation/internal/TargetVelocityTracker;

    .line 49
    invoke-direct {v1}, Lmiuix/animation/internal/TargetVelocityTracker;-><init>()V

    .line 51
    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 54
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 56
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    const-string v2, "IAnimTarget create ! "

    .line 65
    invoke-static {v2, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    invoke-virtual {v0, p0}, Lmiuix/animation/internal/AnimManager;->setTarget(Lmiuix/animation/IAnimTarget;)V

    .line 70
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    .line 73
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    .line 75
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 77
    filled-new-array {v0, v1, v2}, [Lmiuix/animation/property/FloatProperty;

    .line 79
    move-result-object v0

    .line 82
    const v1, 0x3dcccccd    # 0.1f

    .line 83
    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 86
    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 89
    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 91
    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 93
    sget-object v3, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    .line 95
    filled-new-array {v0, v1, v2, v3}, [Lmiuix/animation/property/FloatProperty;

    .line 97
    move-result-object v0

    .line 100
    const/high16 v1, 0x3b800000    # 0.00390625f

    .line 101
    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 103
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 106
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 108
    filled-new-array {v0, v1}, [Lmiuix/animation/property/FloatProperty;

    .line 110
    move-result-object v0

    .line 113
    const v1, 0x3b03126f    # 0.002f

    .line 114
    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 117
    return-void
    .line 120
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public abstract clean()V
.end method

.method public enableCheckValue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 2
    return-void
    .line 4
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public finalize()V
    .locals 2

    .line 1
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const-string v1, "IAnimTarget was destroyed \uff01"

    .line 11
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 16
    return-void
    .line 19
.end method

.method public getDefaultMinVisible()F
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    return p0
    .line 4
.end method

.method public getId()I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 2
    return p0
    .line 4
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p1, p0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const p0, 0x7fffffff

    .line 13
    return p0
    .line 16
.end method

.method public getLocationOnScreen([I)V
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    aput v0, p1, p0

    .line 4
    aput v0, p1, v0

    .line 6
    return-void
    .line 8
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Float;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    iget p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 17
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    cmpl-float v0, p1, v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    return p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getDefaultMinVisible()F

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    .line 2
    invoke-virtual {p0}, Lmiuix/animation/internal/NotifyManager;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
.end method

.method public getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/styles/PropertyStyle;->getVelocityThreshold()F

    .line 2
    move-result p0

    .line 5
    float-to-double p0, p0

    .line 6
    return-wide p0
    .line 7
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 13
    return p0
    .line 16
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    .line 4
    move-result-wide p0

    .line 7
    return-wide p0
    .line 8
.end method

.method public hasFlags(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 2
    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 2
    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public isValid()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public isValidFlag()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    .line 6
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x3

    .line 9
    cmp-long p0, v0, v2

    .line 11
    if-lez p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
    .line 18
.end method

.method public onFrameEnd(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 2
    iget-wide v0, v0, Lmiuix/animation/internal/TargetHandler;->threadId:J

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    .line 10
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 22
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 2
    return-object p0
    .line 4
.end method

.method public setFlags(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    .line 8
    return-void
    .line 10
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 8
    move-result v0

    .line 11
    const v1, 0x7fffffff

    .line 12
    if-eq v0, v1, :cond_0

    .line 15
    invoke-interface {p1, p0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/IAnimTarget;
    .locals 4

    .line 4
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 5
    new-instance v3, Lmiuix/animation/property/ValueProperty;

    invoke-direct {v3, v2}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;
    .locals 5

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    iget-object v3, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    .line 2
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/NotifyManager;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 4
    return-void
    .line 7
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 8
    move-result v0

    .line 11
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    cmpl-float v0, v0, v1

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, p0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 2

    .line 1
    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 2
    cmpl-double v0, p2, v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 11
    double-to-float p2, p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setVelocity(Lmiuix/animation/property/FloatProperty;F)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public shouldCheckValue()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 2
    return p0
    .line 4
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lmiuix/animation/property/IIntValueProperty;

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "IAnimTarget{"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "}"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public trackVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TargetVelocityTracker;->trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    .line 4
    return-void
    .line 7
.end method
