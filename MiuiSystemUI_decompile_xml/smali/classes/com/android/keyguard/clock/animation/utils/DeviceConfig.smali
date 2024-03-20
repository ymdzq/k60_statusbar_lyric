.class public Lcom/android/keyguard/clock/animation/utils/DeviceConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEVICE_CETUS:Ljava/lang/String; = "cetus"

.field public static final FOLD_DEVICE:Z

.field public static final PAD_DEVICE:Z

.field private static final TAG:Ljava/lang/String; = "ClockDeviceConfig"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    :cond_0
    sput-boolean v1, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 13
    const-string/jumbo v0, "ro.build.characteristics"

    .line 15
    const-string v1, "default"

    .line 18
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string/jumbo v1, "tablet"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    sput-boolean v0, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 31
    return-void
    .line 33
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScale(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 10
    int-to-float v0, v0

    .line 12
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->getDesignDp(Landroid/content/Context;)F

    .line 13
    move-result p0

    .line 16
    div-float/2addr v0, p0

    .line 17
    return v0
    .line 18
.end method

.method private static getAccessibilityDefaultDisplayDpi(I)I
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "persist.sys.miui_resolution"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    new-instance v1, Landroid/graphics/Point;

    .line 15
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 17
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, p0, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 24
    const-string v2, ","

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    aget-object v0, v0, v2

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result v0

    .line 39
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->getDefaultDisplayDensity(I)I

    .line 40
    move-result p0

    .line 43
    mul-int/2addr p0, v0

    .line 44
    int-to-float p0, p0

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    mul-float/2addr p0, v0

    .line 48
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 49
    int-to-float v0, v0

    .line 51
    div-float/2addr p0, v0

    .line 52
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 53
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->getDefaultDisplayDensity(I)I

    .line 58
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    return p0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    const-string v0, "ClockDeviceConfig"

    .line 64
    const-string v1, "getAccessibilityDefaultDisplayDpi error: "

    .line 66
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 p0, -0x1

    .line 71
    return p0
    .line 72
.end method

.method public static getAccessibilityDelta(Landroid/content/Context;)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->getAccessibilityDefaultDisplayDpi(I)I

    .line 3
    move-result v0

    .line 6
    const/4 v1, -0x1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 15
    const-string v1, "display_density_forced"

    .line 16
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 18
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, "Exception: "

    .line 26
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    const-string v1, "ClockDeviceConfig"

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move p0, v0

    .line 43
    :goto_0
    int-to-float p0, p0

    .line 44
    mul-float/2addr p0, v2

    .line 45
    int-to-float v0, v0

    .line 46
    div-float v2, p0, v0

    .line 47
    :cond_0
    return v2
    .line 49
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 2
    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    .line 6
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    const-string v0, "ClockDeviceConfig"

    .line 12
    const-string v1, "getDefaultDisplayDensity error: "

    .line 14
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    const/4 p0, -0x1

    .line 19
    return p0
    .line 20
.end method

.method private static getDesignDp(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isJ18()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const/high16 p0, 0x43a00000    # 320.0f

    .line 14
    return p0

    .line 16
    :cond_0
    invoke-static {}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->isJ18()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    const/high16 p0, 0x44290000    # 676.0f

    .line 29
    return p0

    .line 31
    :cond_1
    sget-boolean v0, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-static {p0}, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 36
    move-result p0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    const/high16 p0, 0x442e0000    # 696.0f

    .line 42
    return p0

    .line 44
    :cond_2
    sget-boolean p0, Lcom/android/keyguard/clock/animation/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 45
    if-eqz p0, :cond_3

    .line 47
    const p0, 0x4431c000    # 711.0f

    .line 49
    return p0

    .line 52
    :cond_3
    const/high16 p0, 0x43c40000    # 392.0f

    .line 53
    return p0
    .line 55
.end method

.method public static getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    .line 4
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 6
    return-object p0

    .line 9
    :cond_0
    const-class v0, Landroid/view/WindowManager;

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Landroid/view/WindowManager;

    .line 16
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 22
    move-result-object p0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "get bounds = "

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    const-string v1, "ClockDeviceConfig"

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object p0
    .line 45
.end method

.method public static inLargeScreen(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    .line 10
    and-int/lit8 p0, p0, 0xf

    .line 12
    const/4 v0, 0x3

    .line 14
    if-lt p0, v0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public static isJ18()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2
    const-string v1, "cetus"

    .line 4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    return v0
    .line 10
.end method

.method public static isRTL()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
    .line 15
.end method
