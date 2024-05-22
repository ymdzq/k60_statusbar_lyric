.class Lcom/miui/maml/data/MamlSensorManager$MamlSensor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mCallbacks:Ljava/util/WeakHashMap;

.field private mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor$1;-><init>(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 24
    const/4 v0, -0x1

    .line 26
    const-string v1, "MAML_SensorManager"

    .line 27
    if-ne p2, v0, :cond_0

    .line 29
    const-string p0, "Wront sensor type: "

    .line 31
    invoke-static {p0, p2, v1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    return-void

    .line 36
    :cond_0
    iput p2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 37
    iput p3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 39
    const-string/jumbo p3, "sensor"

    .line 41
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/hardware/SensorManager;

    .line 48
    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 50
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 56
    if-nez p1, :cond_1

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    const-string p2, "Fail to get sensor! TYPE: "

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    iget p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 75
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_1
    return-void
    .line 79
.end method

.method public static synthetic access$100(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Landroid/hardware/Sensor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/data/MamlSensorManager$MamlSensor;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 2
    return-object p0
    .line 4
.end method

.method private registerListener()Z
    .locals 5

    .line 1
    const-string v0, "registerListener "

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-boolean v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 8
    if-nez v2, :cond_0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    iget-object v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 14
    iget v4, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 16
    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 18
    move-result v1

    .line 21
    iput-boolean v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 22
    const-string v1, "MAML_SensorManager"

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_0
    :goto_0
    iget-boolean p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 48
    return p0
    .line 50
.end method

.method private unRegisterListener()V
    .locals 4

    .line 1
    const-string/jumbo v0, "unregisterListener "

    .line 2
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensor:Landroid/hardware/Sensor;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-boolean v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 9
    if-eqz v2, :cond_0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 13
    iget-object v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 17
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 21
    const-string v1, "MAML_SensorManager"

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget p0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mType:I

    .line 30
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_0
    :goto_0
    return-void
    .line 47
.end method


# virtual methods
.method public addCallback(ILandroid/hardware/SensorEventListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 10
    invoke-virtual {v1, p2, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget p2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 15
    if-ge p2, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 19
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    iget-boolean p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRegistered:Z

    .line 26
    if-eqz p1, :cond_1

    .line 28
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 30
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    .line 33
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
    .line 39
.end method

.method public removeCallback(Landroid/hardware/SensorEventListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    if-nez v1, :cond_0

    .line 13
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 17
    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v2

    .line 27
    if-ne p1, v2, :cond_3

    .line 28
    const/4 p1, 0x3

    .line 30
    iput p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 31
    iget-object p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 33
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 35
    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object p1

    .line 42
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Integer;

    .line 53
    iget v3, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v4

    .line 60
    if-le v3, v4, :cond_1

    .line 61
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v2

    .line 66
    iput v2, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 67
    goto :goto_0

    .line 69
    :cond_2
    iget p1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mRate:I

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v1

    .line 75
    if-eq p1, v1, :cond_3

    .line 76
    const/4 p1, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 p1, 0x0

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->mCallbacks:Ljava/util/WeakHashMap;

    .line 81
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    .line 83
    move-result v1

    .line 86
    if-nez v1, :cond_4

    .line 87
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 89
    goto :goto_2

    .line 92
    :cond_4
    if-eqz p1, :cond_5

    .line 93
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->unRegisterListener()V

    .line 95
    invoke-direct {p0}, Lcom/miui/maml/data/MamlSensorManager$MamlSensor;->registerListener()Z

    .line 98
    :cond_5
    :goto_2
    monitor-exit v0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
    .line 105
.end method
