.class public abstract Lcom/android/settingslib/widget/LottieColorUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DARK_TO_LIGHT_THEME_COLOR_MAP:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const v1, 0x7f060832    # @color/settingslib_color_grey400 '#bdc1c6'

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, ".grey600"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const v1, 0x7f060834    # @color/settingslib_color_grey500 '#9aa0a6'

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 25
    const-string v2, ".grey700"

    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const v1, 0x7f060831    # @color/settingslib_color_grey300 '#dadce0'

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 37
    const-string v2, ".grey800"

    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const v1, 0x7f060833    # @color/settingslib_color_grey50 '#f8f9fa'

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v1

    .line 49
    const-string v2, ".grey900"

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const v1, 0x7f060848    # @color/settingslib_color_red600 '#d93025'

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 61
    const-string v2, ".red400"

    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const v1, 0x106000b    # @android:color/white

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v1

    .line 73
    const-string v2, ".black"

    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const v1, 0x7f060826    # @color/settingslib_color_blue600 '#1a73e8'

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 85
    const-string v2, ".blue400"

    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const v1, 0x7f06082e    # @color/settingslib_color_green600 '#1e8e3e'

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v1

    .line 97
    const-string v2, ".green400"

    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 103
    move-result-object v0

    .line 106
    sput-object v0, Lcom/android/settingslib/widget/LottieColorUtils;->DARK_TO_LIGHT_THEME_COLOR_MAP:Ljava/util/Map;

    .line 107
    return-void
    .line 109
.end method

.method public static applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 10
    and-int/lit8 v0, v0, 0x30

    .line 12
    const/16 v1, 0x20

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    sget-object v0, Lcom/android/settingslib/widget/LottieColorUtils;->DARK_TO_LIGHT_THEME_COLOR_MAP:Ljava/util/Map;

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 33
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Integer;

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v3

    .line 55
    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    .line 56
    move-result v3

    .line 59
    new-instance v4, Lcom/airbnb/lottie/model/KeyPath;

    .line 60
    const-string v5, "**"

    .line 62
    filled-new-array {v5, v2, v5}, [Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 67
    invoke-direct {v4, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 71
    new-instance v5, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticLambda0;

    .line 73
    invoke-direct {v5, v3}, Lcom/android/settingslib/widget/LottieColorUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 75
    invoke-virtual {p1, v4, v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 78
    goto :goto_1

    .line 81
    :cond_2
    return-void
    .line 82
.end method
