.class public abstract Lcom/miui/systemui/util/MiBlurCompat;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BACKGROUND_BLUR_SUPPORTED:Z

.field public static final CONFIG_BLUR:I

.field public static final addMiBackgroundBlendColorMethod$delegate:Lkotlin/Lazy;

.field public static final blurField$delegate:Lkotlin/Lazy;

.field public static final clearMiBackgroundBlendColorMethod$delegate:Lkotlin/Lazy;

.field public static final getMiBackgroundBlurModeMethod$delegate:Lkotlin/Lazy;

.field public static final getMiBackgroundBlurRadiusMethod$delegate:Lkotlin/Lazy;

.field public static final getPassWindowBlurEnabledMethod$delegate:Lkotlin/Lazy;

.field public static final setMiBackgroundBlurModeMethod$delegate:Lkotlin/Lazy;

.field public static final setMiBackgroundBlurRadiusMethod$delegate:Lkotlin/Lazy;

.field public static final setMiBackgroundBlurScaleRatioMethod$delegate:Lkotlin/Lazy;

.field public static final setMiViewBlurModeMethod$delegate:Lkotlin/Lazy;

.field public static final setPassWindowBlurEnabledMethod$delegate:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.sys.background_blur_supported"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/miui/systemui/util/MiBlurCompat;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 9
    :try_start_0
    const-class v0, Landroid/content/pm/ActivityInfo;

    .line 11
    const-string v1, "CONFIG_BLUR"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    const/high16 v0, 0x100000

    .line 31
    :goto_0
    sput v0, Lcom/miui/systemui/util/MiBlurCompat;->CONFIG_BLUR:I

    .line 33
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$setMiBackgroundBlurModeMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMiBackgroundBlurModeMethod$2;

    .line 35
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    move-result-object v0

    .line 40
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeMethod$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$setMiBackgroundBlurRadiusMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMiBackgroundBlurRadiusMethod$2;

    .line 43
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    move-result-object v0

    .line 48
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurRadiusMethod$delegate:Lkotlin/Lazy;

    .line 49
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMiViewBlurModeMethod$2;

    .line 51
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    move-result-object v0

    .line 56
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiViewBlurModeMethod$delegate:Lkotlin/Lazy;

    .line 57
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$addMiBackgroundBlendColorMethod$2;

    .line 59
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    move-result-object v0

    .line 64
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->addMiBackgroundBlendColorMethod$delegate:Lkotlin/Lazy;

    .line 65
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$clearMiBackgroundBlendColorMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$clearMiBackgroundBlendColorMethod$2;

    .line 67
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 69
    move-result-object v0

    .line 72
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->clearMiBackgroundBlendColorMethod$delegate:Lkotlin/Lazy;

    .line 73
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$getMiBackgroundBlurModeMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$getMiBackgroundBlurModeMethod$2;

    .line 75
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 77
    move-result-object v0

    .line 80
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->getMiBackgroundBlurModeMethod$delegate:Lkotlin/Lazy;

    .line 81
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$getMiBackgroundBlurRadiusMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$getMiBackgroundBlurRadiusMethod$2;

    .line 83
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    move-result-object v0

    .line 88
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->getMiBackgroundBlurRadiusMethod$delegate:Lkotlin/Lazy;

    .line 89
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$getMiBackgroundBlendColorMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$getMiBackgroundBlendColorMethod$2;

    .line 91
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 93
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$setPassWindowBlurEnabledMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setPassWindowBlurEnabledMethod$2;

    .line 96
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 98
    move-result-object v0

    .line 101
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledMethod$delegate:Lkotlin/Lazy;

    .line 102
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$getPassWindowBlurEnabledMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$getPassWindowBlurEnabledMethod$2;

    .line 104
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 106
    move-result-object v0

    .line 109
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->getPassWindowBlurEnabledMethod$delegate:Lkotlin/Lazy;

    .line 110
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$setMixEffectEnabledMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMixEffectEnabledMethod$2;

    .line 112
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 114
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$getMixEffectEnabledMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$getMixEffectEnabledMethod$2;

    .line 117
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 119
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$blurField$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$blurField$2;

    .line 122
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 124
    move-result-object v0

    .line 127
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->blurField$delegate:Lkotlin/Lazy;

    .line 128
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat$setMiBackgroundBlurScaleRatioMethod$2;->INSTANCE:Lcom/miui/systemui/util/MiBlurCompat$setMiBackgroundBlurScaleRatioMethod$2;

    .line 130
    invoke-static {v0}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 132
    move-result-object v0

    .line 135
    sput-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurScaleRatioMethod$delegate:Lkotlin/Lazy;

    .line 136
    return-void
    .line 138
.end method

.method public static final clearMiBackgroundBlendColorCompat(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat;->clearMiBackgroundBlendColorMethod$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Method;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    :cond_0
    return-void
    .line 18
.end method

.method public static final getBackgroundBlurOpened(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static final getBackgroundBlurOpened(Landroid/content/res/Configuration;)Z
    .locals 3

    .line 2
    sget-boolean v0, Lcom/miui/systemui/util/MiBlurCompat;->BACKGROUND_BLUR_SUPPORTED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat;->blurField$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v2, p0

    check-cast v2, Ljava/lang/Integer;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    move p0, v1

    :goto_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method public static final getPassWindowBlurEnabledCompat(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/miui/systemui/util/MiBlurCompat;->getPassWindowBlurEnabledMethod$delegate:Lkotlin/Lazy;

    .line 3
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 5
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/reflect/Method;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    new-array v3, v0, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, v2

    .line 21
    :goto_0
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    move-object v2, p0

    .line 26
    check-cast v2, Ljava/lang/Boolean;

    .line 27
    :cond_1
    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    move v0, p0

    .line 35
    :catchall_0
    :cond_2
    return v0
    .line 36
.end method

.method public static final setMiBackgroundBlendColors(Landroid/view/View;[IF)V
    .locals 9

    .line 1
    invoke-static {p0}, Lcom/miui/systemui/util/MiBlurCompat;->clearMiBackgroundBlendColorCompat(Landroid/view/View;)V

    .line 2
    array-length v0, p1

    .line 5
    const/4 v1, 0x2

    .line 6
    div-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v0, :cond_3

    .line 10
    mul-int/lit8 v4, v3, 0x2

    .line 12
    aget v5, p1, v4

    .line 14
    const/high16 v6, 0x3f800000    # 1.0f

    .line 16
    cmpg-float v6, p2, v6

    .line 18
    const/4 v7, 0x1

    .line 20
    if-nez v6, :cond_0

    .line 21
    move v6, v7

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v6, v2

    .line 25
    :goto_1
    if-eqz v6, :cond_1

    .line 26
    goto :goto_2

    .line 28
    :cond_1
    shr-int/lit8 v6, v5, 0x18

    .line 29
    and-int/lit16 v6, v6, 0xff

    .line 31
    shl-int/lit8 v8, v6, 0x18

    .line 33
    not-int v8, v8

    .line 35
    and-int/2addr v5, v8

    .line 36
    int-to-float v6, v6

    .line 37
    mul-float/2addr v6, p2

    .line 38
    float-to-int v6, v6

    .line 39
    shl-int/lit8 v6, v6, 0x18

    .line 40
    or-int/2addr v5, v6

    .line 42
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 43
    aget v4, p1, v4

    .line 45
    :try_start_0
    sget-object v6, Lcom/miui/systemui/util/MiBlurCompat;->addMiBackgroundBlendColorMethod$delegate:Lkotlin/Lazy;

    .line 47
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 52
    check-cast v6, Ljava/lang/reflect/Method;

    .line 53
    if-eqz v6, :cond_2

    .line 55
    new-array v8, v1, [Ljava/lang/Object;

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v5

    .line 62
    aput-object v5, v8, v2

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v4

    .line 68
    aput-object v4, v8, v7

    .line 69
    invoke-virtual {v6, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    return-void
    .line 77
.end method

.method public static final setMiBackgroundBlurModeCompat(ILandroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurModeMethod$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Method;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p0

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p0, v2, v3

    .line 21
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p0, v1

    .line 28
    :goto_0
    instance-of p1, p0, Ljava/lang/Boolean;

    .line 29
    if-eqz p1, :cond_1

    .line 31
    move-object v1, p0

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    :cond_2
    return-void
    .line 41
.end method

.method public static final setMiBackgroundBlurRadiusCompat(ILandroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiBackgroundBlurRadiusMethod$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Method;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p0, v1, v2

    .line 20
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    :cond_0
    return-void
    .line 25
.end method

.method public static final setMiViewBlurModeCompat(ILandroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setMiViewBlurModeMethod$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Method;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p0, v1, v2

    .line 20
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :catchall_0
    :cond_0
    return-void
    .line 25
.end method

.method public static final setPassWindowBlurEnabledCompat(Landroid/view/View;Z)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/miui/systemui/util/MiBlurCompat;->setPassWindowBlurEnabledMethod$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Method;

    .line 8
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object p1

    .line 19
    const/4 v3, 0x0

    .line 20
    aput-object p1, v2, v3

    .line 21
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p0, v1

    .line 28
    :goto_0
    instance-of p1, p0, Ljava/lang/Boolean;

    .line 29
    if-eqz p1, :cond_1

    .line 31
    move-object v1, p0

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    .line 34
    :cond_1
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    :cond_2
    return-void
    .line 41
.end method
