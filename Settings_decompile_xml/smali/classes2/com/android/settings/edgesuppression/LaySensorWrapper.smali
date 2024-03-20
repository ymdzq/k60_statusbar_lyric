.class public Lcom/android/settings/edgesuppression/LaySensorWrapper;
.super Ljava/lang/Object;
.source "LaySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;
    }
.end annotation


# instance fields
.field private mAttitude:I

.field private mContext:Landroid/content/Context;

.field private mCurttenState:I

.field private mHandler:Landroid/os/Handler;

.field private final mLaySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPerspective:I

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mAttitude:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mCurttenState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/edgesuppression/LaySensorWrapper;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mPerspective:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAttitude(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mAttitude:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurttenState(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mCurttenState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPerspective(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mPerspective:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/settings/edgesuppression/LaySensorWrapper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->notifyListeners(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mCurttenState:I

    .line 53
    iput v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mPerspective:I

    .line 55
    iput v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mAttitude:I

    .line 56
    new-instance v0, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper$1;-><init>(Lcom/android/settings/edgesuppression/LaySensorWrapper;)V

    iput-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 115
    iput-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mContext:Landroid/content/Context;

    .line 116
    new-instance p1, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;

    invoke-direct {p1, p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper$2;-><init>(Lcom/android/settings/edgesuppression/LaySensorWrapper;)V

    iput-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mHandler:Landroid/os/Handler;

    .line 140
    iget-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const v0, 0x1fa2674

    .line 141
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private notifyListeners(I)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;

    .line 147
    invoke-interface {v1, p1}, Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;->onSensorChanged(I)V

    goto :goto_0

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public hasListenerRegistered(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)Z
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/android/settings/edgesuppression/LaySensorWrapper$LaySensorChangeListener;)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LaySensorWrapper"

    const-string/jumbo v2, "register LaySensor at Settings"

    .line 160
    invoke-static {v1, v2}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterAllListener()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    const-string v1, "LaySensorWrapper"

    const-string/jumbo v2, "unregister LaySensor at Settings"

    .line 178
    invoke-static {v1, v2}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/edgesuppression/LaySensorWrapper;->unregisterSensorEventListenerLocked()V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterSensorEventListenerLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 185
    iput v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mCurttenState:I

    .line 186
    iput v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mAttitude:I

    .line 187
    iput v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mPerspective:I

    .line 188
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mLaySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/android/settings/edgesuppression/LaySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method
