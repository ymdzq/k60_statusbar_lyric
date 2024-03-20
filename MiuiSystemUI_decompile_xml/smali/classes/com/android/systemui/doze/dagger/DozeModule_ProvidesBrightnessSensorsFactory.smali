.class public abstract Lcom/android/systemui/doze/dagger/DozeModule_ProvidesBrightnessSensorsFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesBrightnessSensors(Lcom/android/systemui/util/sensors/AsyncSensorManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)[Ljava/util/Optional;
    .locals 7

    .line 1
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 2
    const v0, 0x7f03007c    # @array/doze_brightness_sensor_name_posture_mapping

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 10
    array-length v0, p2

    .line 11
    const v1, 0x7f1303a5    # @string/doze_brightness_sensor_type ''

    .line 12
    if-eqz v0, :cond_1

    .line 15
    const/4 v0, 0x5

    .line 17
    new-array v0, v0, [Ljava/util/Optional;

    .line 18
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 20
    move-result-object v2

    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    new-instance v2, Ljava/util/HashMap;

    .line 27
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    const/4 v3, 0x0

    .line 32
    :goto_0
    array-length v4, p2

    .line 33
    if-ge v3, v4, :cond_2

    .line 34
    aget-object v4, p2, v3

    .line 36
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 47
    aget-object v6, p2, v3

    .line 48
    invoke-static {p0, v5, v6}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 50
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 54
    move-result-object v5

    .line 57
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 64
    check-cast v4, Ljava/util/Optional;

    .line 65
    aput-object v4, v0, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-static {p0, p1, p2}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 77
    move-result-object p0

    .line 80
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 81
    move-result-object p0

    .line 84
    filled-new-array {p0}, [Ljava/util/Optional;

    .line 85
    move-result-object v0

    .line 88
    :cond_2
    return-object v0
    .line 89
.end method
