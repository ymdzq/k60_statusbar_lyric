.class public abstract Lcom/android/systemui/biometrics/SideFpsControllerKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static final addOverlayDynamicColor$update(ILandroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    move p0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p0, v2

    .line 9
    :goto_0
    const-string v0, ".black"

    .line 10
    const-string v3, ".blue400"

    .line 12
    const-string v4, ".blue600"

    .line 14
    const-string v5, "**"

    .line 16
    if-eqz p0, :cond_1

    .line 18
    const p0, 0x11200a6    # @android:^attr-private/materialColorPrimaryFixedDim

    .line 20
    invoke-static {p1, p0, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 23
    move-result p0

    .line 26
    const v6, 0x11200a7    # @android:^attr-private/materialColorPrimaryInverse

    .line 27
    invoke-static {p1, v6, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 30
    move-result v6

    .line 33
    const v7, 0x1120095    # @android:^attr-private/materialColorOnPrimaryFixedVariant

    .line 34
    invoke-static {p1, v7, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 37
    move-result p1

    .line 40
    new-instance v7, Lcom/airbnb/lottie/model/KeyPath;

    .line 41
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 46
    invoke-direct {v7, v4}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 47
    sget-object v4, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 50
    new-instance v8, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;

    .line 52
    invoke-direct {v8, p0, v2}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;-><init>(II)V

    .line 54
    invoke-virtual {p2, v7, v4, v8}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 57
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    .line 60
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 65
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;

    .line 69
    invoke-direct {v2, v6, v1}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;-><init>(II)V

    .line 71
    invoke-virtual {p2, p0, v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 74
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    .line 77
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;

    .line 86
    const/4 v1, 0x2

    .line 88
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$1;-><init>(II)V

    .line 89
    invoke-virtual {p2, p0, v4, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 92
    goto :goto_3

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 100
    move-result-object p0

    .line 103
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 104
    and-int/lit8 p0, p0, 0x30

    .line 106
    const/16 v6, 0x20

    .line 108
    if-ne p0, v6, :cond_2

    .line 110
    goto :goto_1

    .line 112
    :cond_2
    move v1, v2

    .line 113
    :goto_1
    if-nez v1, :cond_3

    .line 114
    new-instance p0, Lcom/airbnb/lottie/model/KeyPath;

    .line 116
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 125
    sget-object v1, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;->INSTANCE:Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$4;

    .line 127
    invoke-virtual {p2, p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 129
    :cond_3
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 135
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    move-result-object p0

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    move-result-object p0

    .line 143
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    move-result v0

    .line 147
    if-eqz v0, :cond_4

    .line 148
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 153
    check-cast v0, Ljava/lang/String;

    .line 154
    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 156
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 161
    invoke-direct {v1, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 165
    new-instance v2, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$5;

    .line 167
    invoke-direct {v2, p1}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$update$5;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p2, v1, v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 172
    goto :goto_2

    .line 175
    :cond_4
    :goto_3
    return-void
    .line 176
.end method
