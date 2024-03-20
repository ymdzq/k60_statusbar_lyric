.class public Lcom/android/systemui/util/sensors/ProximitySensorImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/util/sensors/ProximitySensor;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mCancelSecondaryRunnable:Ljava/lang/Runnable;

.field public final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mDevicePosture:I

.field public final mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

.field public final mIsFactoryBuild:Z

.field mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

.field public mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

.field public final mListeners:Ljava/util/List;

.field protected mPaused:Z

.field public final mPrimaryEventListener:Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;

.field public mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

.field public final mSecondaryEventListener:Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;

.field public mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

.field public mTag:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ProxSensor"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->DEBUG:Z

    .line 19
    return-void
    .line 21
.end method

.method public constructor <init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/ExecutionImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mListeners:Ljava/util/List;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mTag:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    const-string v0, "ro.boot.factorybuild"

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mIsFactoryBuild:Z

    .line 29
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/ProximitySensorImpl;)V

    .line 33
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryEventListener:Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda0;

    .line 36
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;-><init>(Lcom/android/systemui/util/sensors/ProximitySensorImpl;)V

    .line 40
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryEventListener:Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 51
    return-void
    .line 53
.end method


# virtual methods
.method public final isLoaded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 2
    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->isLoaded()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isNear()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isLoaded()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 12
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return-object p0
    .line 20
.end method

.method public final logDebug(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mTag:Ljava/lang/String;

    .line 11
    if-eqz v1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "["

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mTag:Ljava/lang/String;

    .line 22
    const-string v2, "] "

    .line 24
    invoke-static {v1, p0, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, ""

    .line 31
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    const-string p1, "ProxSensor"

    .line 43
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    return-void
    .line 48
.end method

.method public final onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-boolean v2, p1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 11
    iget-boolean v1, v1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 13
    if-ne v2, v1, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 18
    if-nez v1, :cond_1

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 25
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mAlerting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mLastEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 40
    if-eqz v0, :cond_3

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mListeners:Ljava/util/List;

    .line 46
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    new-instance p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda1;

    .line 51
    invoke-direct {p0, v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    .line 53
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 59
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    :goto_0
    return-void
    .line 63
.end method

.method public final pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPaused:Z

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregisterInternal()V

    .line 10
    return-void
    .line 13
.end method

.method public register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mIsFactoryBuild:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isLoaded()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mListeners:Ljava/util/List;

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "ProxListener registered multiple times: "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_0
    return-void
    .line 50
.end method

.method public final resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPaused:Z

    .line 8
    return-void
    .line 10
.end method

.method public final setDelay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 7
    invoke-interface {v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay()V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 12
    invoke-interface {p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setDelay()V

    .line 14
    return-void
    .line 17
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mTag:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, ":primary"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ":secondary"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-interface {p0, p1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->setTag(Ljava/lang/String;)V

    .line 45
    return-void
    .line 48
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPaused:Z

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->isNear()Ljava/lang/Boolean;

    .line 10
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPrimaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 20
    iget-object v5, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mSecondaryThresholdSensor:Lcom/android/systemui/util/sensors/ThresholdSensor;

    .line 22
    move-object v0, v6

    .line 24
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    const-string/jumbo v0, "{registered=%s, paused=%s, near=%s, posture=%s, primarySensor=%s, secondarySensor=%s secondarySafe=%s}"

    .line 29
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method

.method public unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mIsFactoryBuild:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mListeners:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->unregisterInternal()V

    .line 25
    :cond_1
    return-void
    .line 28
.end method

.method public final unregisterInternal()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 4
    return-void
    .line 7
.end method
