.class public abstract Lcom/android/systemui/util/sensors/SensorModule_ProvideProximitySensorFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideProximitySensor(Landroid/content/res/Resources;Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/util/sensors/ProximitySensor;
    .locals 4

    .line 1
    const v0, 0x7f0300a2    # @array/proximity_sensor_posture_mapping

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    array-length v1, p0

    .line 12
    if-nez v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    array-length v1, p0

    .line 16
    move v2, v0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    aget-object v3, p0, v2

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 33
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 39
    goto :goto_2

    .line 41
    :cond_3
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 46
    :goto_2
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 48
    return-object p0
    .line 51
.end method
