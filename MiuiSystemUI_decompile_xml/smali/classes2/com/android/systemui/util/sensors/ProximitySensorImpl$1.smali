.class public final Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onThresholdCrossed(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;->this$0:Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-boolean v1, v1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    iget-boolean v1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 15
    if-nez v1, :cond_2

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mExecution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 19
    invoke-virtual {v1}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 21
    iget-object v1, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mLastPrimaryEvent:Lcom/android/systemui/util/sensors/ThresholdSensorEvent;

    .line 24
    if-eqz v1, :cond_4

    .line 26
    iget-boolean v1, v1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 28
    if-nez v1, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/ProximitySensorImpl$1;)V

    .line 35
    const-wide/16 v2, 0x1388

    .line 38
    iget-object p0, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 40
    invoke-interface {p0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 42
    move-result-object p0

    .line 45
    iput-object p0, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "Secondary sensor event: "

    .line 50
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-boolean v1, p1, Lcom/android/systemui/util/sensors/ThresholdSensorEvent;->mBelow:Z

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "."

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->logDebug(Ljava/lang/String;)V

    .line 69
    iget-boolean p0, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mPaused:Z

    .line 72
    if-nez p0, :cond_3

    .line 74
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->onSensorEvent(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    .line 76
    :cond_3
    return-void

    .line 79
    :cond_4
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    .line 80
    if-eqz p0, :cond_5

    .line 82
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 84
    const/4 p0, 0x0

    .line 87
    iput-object p0, v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mCancelSecondaryRunnable:Ljava/lang/Runnable;

    .line 88
    :cond_5
    return-void
    .line 90
.end method
