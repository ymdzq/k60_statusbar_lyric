.class public final Lcom/android/systemui/util/sensors/ProximityCheck;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mListener:Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;

.field public final mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mCallbacks:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 19
    const-string v0, "prox_check"

    .line 21
    check-cast p1, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->setTag(Ljava/lang/String;)V

    .line 25
    iput-object p2, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 28
    new-instance p1, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/sensors/ProximityCheck;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public final onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mCallbacks:Ljava/util/List;

    .line 2
    new-instance v1, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda1;

    .line 4
    invoke-direct {v1, p1}, Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 11
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mCallbacks:Ljava/util/List;

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 21
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;

    .line 23
    invoke-interface {p1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    return-void
    .line 39
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mSensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mListener:Lcom/android/systemui/util/sensors/ProximityCheck$$ExternalSyntheticLambda0;

    .line 4
    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/util/sensors/ProximityCheck;->mRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/sensors/ProximityCheck;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensorEvent;)V

    .line 16
    return-void
    .line 19
.end method
