.class public abstract Lcom/android/systemui/biometrics/dagger/UdfpsModule_Companion_ProvidesOverlapDetectorFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesOverlapDetector(Lcom/android/systemui/flags/FeatureFlags;)Lcom/android/systemui/biometrics/udfps/OverlapDetector;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_ELLIPSE_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_3

    .line 10
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 12
    move-result-object p0

    .line 15
    const v0, 0x10e00fe    # @android:integer/config_stableDeviceDisplayHeight

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 19
    move-result p0

    .line 22
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 26
    const v1, 0x10700cc    # @android:array/demo_device_provisioning_known_signers

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    aget-object p0, v0, p0

    .line 34
    const-string v0, ","

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 42
    move-result-object p0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 48
    move-result v1

    .line 51
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 68
    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 71
    move-result v1

    .line 74
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    goto :goto_0

    .line 82
    :cond_0
    const/4 p0, 0x0

    .line 83
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 87
    check-cast v1, Ljava/lang/Number;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 90
    move-result v1

    .line 93
    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    cmpg-float v1, v1, v2

    .line 96
    if-nez v1, :cond_1

    .line 98
    const/4 p0, 0x1

    .line 100
    :cond_1
    if-eqz p0, :cond_2

    .line 101
    new-instance p0, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;

    .line 103
    new-instance v1, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;

    .line 105
    const/4 v2, 0x3

    .line 107
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/Number;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 114
    move-result v2

    .line 117
    const/4 v3, 0x2

    .line 118
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/Number;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 125
    move-result v3

    .line 128
    const/4 v4, 0x4

    .line 129
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Ljava/lang/Number;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 136
    move-result v0

    .line 139
    float-to-int v0, v0

    .line 140
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;-><init>(FFI)V

    .line 141
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/udfps/EllipseOverlapDetector;-><init>(Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;)V

    .line 144
    goto :goto_1

    .line 147
    :cond_2
    new-instance p0, Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;-><init>()V

    .line 150
    goto :goto_1

    .line 153
    :cond_3
    new-instance p0, Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/biometrics/udfps/BoundingBoxOverlapDetector;-><init>()V

    .line 156
    :goto_1
    return-object p0
    .line 159
.end method
