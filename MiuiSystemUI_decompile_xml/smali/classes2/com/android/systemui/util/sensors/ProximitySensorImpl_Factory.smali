.class public abstract Lcom/android/systemui/util/sensors/ProximitySensorImpl_Factory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/ExecutionImpl;)Lcom/android/systemui/util/sensors/ProximitySensorImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/sensors/ThresholdSensor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/ExecutionImpl;)V

    .line 4
    return-object v0
    .line 7
.end method
