.class public final Lcom/miui/systemui/util/ProximitySensorWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mHandler:Lcom/miui/systemui/util/ProximitySensorWrapper$2;

.field public final mProximitySensorChangeListeners:Ljava/util/List;

.field public mProximitySensorState:I

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorListener:Lcom/miui/systemui/util/ProximitySensorWrapper$1;

.field public final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public static -$$Nest$mnotifyListeners(Lcom/miui/systemui/util/ProximitySensorWrapper;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

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
    check-cast v1, Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;

    .line 23
    invoke-virtual {v1, p1}, Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;->onSensorChanged(Z)V

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
    .line 33
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/miui/systemui/util/ProximitySensorWrapper$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/systemui/util/ProximitySensorWrapper$1;-><init>(Lcom/miui/systemui/util/ProximitySensorWrapper;)V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensorListener:Lcom/miui/systemui/util/ProximitySensorWrapper$1;

    .line 17
    new-instance v0, Lcom/miui/systemui/util/ProximitySensorWrapper$2;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/systemui/util/ProximitySensorWrapper$2;-><init>(Lcom/miui/systemui/util/ProximitySensorWrapper;)V

    .line 21
    iput-object v0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mHandler:Lcom/miui/systemui/util/ProximitySensorWrapper$2;

    .line 24
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorState:I

    .line 27
    const-string/jumbo v0, "sensor"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    check-cast p1, Landroid/hardware/SensorManager;

    .line 36
    iput-object p1, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 38
    const v0, 0x1fa2697

    .line 40
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 47
    if-nez v0, :cond_0

    .line 49
    const/16 v0, 0x8

    .line 51
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 53
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 57
    :cond_0
    return-void
    .line 59
.end method
