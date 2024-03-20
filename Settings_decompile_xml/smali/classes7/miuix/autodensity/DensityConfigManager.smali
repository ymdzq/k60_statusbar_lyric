.class public Lmiuix/autodensity/DensityConfigManager;
.super Ljava/lang/Object;
.source "DensityConfigManager.java"


# static fields
.field private static sInstance:Lmiuix/autodensity/DensityConfigManager;


# instance fields
.field private mAutoDensityEnable:Z

.field private mOriginConfig:Lmiuix/autodensity/DensityConfig;

.field private mScreenSize:Landroid/graphics/Point;

.field private mTargetConfig:Lmiuix/autodensity/DensityConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    return-void
.end method

.method private calcPadScale(Landroid/content/Context;)F
    .locals 2

    .line 182
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getMaxSizeInch(Landroid/content/Context;)F

    move-result p0

    const p1, 0x4114cccd    # 9.3f

    div-float/2addr p0, p1

    const-string p1, "dagu"

    .line 184
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x3f87ae14    # 1.06f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    mul-float/2addr p0, v0

    .line 186
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_0
    mul-float/2addr p0, v0

    const p1, 0x3f933333    # 1.15f

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private calcPhoneScale(Landroid/content/Context;)F
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getMinSizeInch(Landroid/content/Context;)F

    move-result p0

    const p1, 0x402ccccd    # 2.7f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_0

    const p1, 0x40333333    # 2.8f

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private getAccessibilityDelta(Landroid/content/Context;)F
    .locals 3

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lmiuix/autodensity/DensityConfigManager;->getAccessibilityDefaultDisplayDpi(I)I

    move-result p0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default dpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p0, v0, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_density_forced"

    invoke-static {p1, v0}, Lmiuix/provider/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    move p1, p0

    :goto_0
    int-to-float v0, p1

    mul-float/2addr v0, v1

    int-to-float p0, p0

    div-float v1, v0, p0

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accessibility dpi: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", delta: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method private getDebugScale()F
    .locals 0

    .line 129
    invoke-static {}, Lmiuix/autodensity/RootUtil;->isDeviceRooted()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lmiuix/autodensity/DebugUtil;->getAutoDensityScaleInDebugMode()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDefaultDisplayDensity(I)I
    .locals 0

    .line 220
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    .line 221
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x1

    return p0
.end method

.method private getDeviceScale(Landroid/content/Context;)F
    .locals 2

    .line 134
    invoke-static {}, Lmiuix/autodensity/SkuScale;->hasSkuScale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Lmiuix/autodensity/SkuScale;->getSkuScale(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    .line 136
    :cond_0
    sget-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    if-eqz v0, :cond_2

    const-string v0, "cetus"

    .line 138
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPhoneScale(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    .line 144
    :cond_2
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 145
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPadScale(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    .line 147
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->calcPhoneScale(Landroid/content/Context;)F

    move-result p0

    .line 149
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceScale "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return p0
.end method

.method public static getInstance()Lmiuix/autodensity/DensityConfigManager;
    .locals 1

    .line 36
    sget-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lmiuix/autodensity/DensityConfigManager;

    invoke-direct {v0}, Lmiuix/autodensity/DensityConfigManager;-><init>()V

    sput-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    .line 39
    :cond_0
    sget-object v0, Lmiuix/autodensity/DensityConfigManager;->sInstance:Lmiuix/autodensity/DensityConfigManager;

    return-object v0
.end method

.method private getMaxSizeInch(Landroid/content/Context;)F
    .locals 3

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 209
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 210
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 211
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 212
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, v0

    div-float/2addr p0, p1

    .line 215
    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getMinSizeInch(Landroid/content/Context;)F
    .locals 3

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 198
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 199
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 200
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 201
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v2, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, v0

    div-float/2addr p0, p1

    .line 204
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private updateDeviceScale(Landroid/content/Context;)F
    .locals 4

    .line 116
    invoke-direct {p0}, Lmiuix/autodensity/DensityConfigManager;->getDebugScale()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    .line 118
    iput-boolean v2, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    const-string v2, "AutoDensity"

    const-string v3, "disable auto density in debug mode"

    .line 119
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 121
    iput-boolean v2, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    :goto_0
    if-gtz v1, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getDeviceScale(Landroid/content/Context;)F

    move-result v0

    .line 125
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getAccessibilityDelta(Landroid/content/Context;)F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method private updatePPIOfDevice(Landroid/content/Context;)I
    .locals 9

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "physical size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", display xdpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ydpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 95
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 96
    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget p1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 97
    iget-object v1, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 98
    iget-object v2, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v0

    div-float p1, v2, p1

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 102
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, p1

    .line 103
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    float-to-double v7, v1

    .line 106
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v1, v2

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen inches : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", ppi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",physicalX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",physicalY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",min size inches: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v0, 0x40333333    # 2.8f

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", real point:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return v1
.end method

.method private updatePhysicalSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "display"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 88
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityDefaultDisplayDpi(I)I
    .locals 4

    :try_start_0
    const-string v0, "persist.sys.miui_resolution"

    const/4 v1, 0x0

    .line 229
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 232
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 233
    invoke-interface {v1, v2, p0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    const-string v3, ","

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p1

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    .line 236
    iget p0, p0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 238
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->getDefaultDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, -0x1

    return p0
.end method

.method public getOriginConfig()Lmiuix/autodensity/DensityConfig;
    .locals 0

    .line 50
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    return-object p0
.end method

.method public getTargetConfig()Lmiuix/autodensity/DensityConfig;
    .locals 0

    .line 46
    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 58
    new-instance v0, Lmiuix/autodensity/DensityConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiuix/autodensity/DensityConfigManager;->updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public isAutoDensityEnabled()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lmiuix/autodensity/DensityConfigManager;->mAutoDensityEnable:Z

    return p0
.end method

.method public updateConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 2

    .line 63
    new-instance v0, Lmiuix/autodensity/DensityConfig;

    invoke-direct {v0, p2}, Lmiuix/autodensity/DensityConfig;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    .line 64
    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->updateOriginConfig(Lmiuix/view/DisplayConfig;)V

    .line 66
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updatePhysicalSize(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updatePPIOfDevice(Landroid/content/Context;)I

    move-result v0

    .line 68
    invoke-direct {p0, p1}, Lmiuix/autodensity/DensityConfigManager;->updateDeviceScale(Landroid/content/Context;)F

    move-result p1

    int-to-float v0, v0

    const v1, 0x3f91e820

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 70
    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 72
    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    iput p1, p2, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    .line 73
    iput p1, p2, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 74
    iget-object p1, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    iget v1, p1, Lmiuix/view/DisplayConfig;->density:F

    mul-float/2addr v1, v0

    iput v1, p2, Lmiuix/view/DisplayConfig;->density:F

    .line 75
    iget v1, p1, Lmiuix/view/DisplayConfig;->scaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p2, Lmiuix/view/DisplayConfig;->scaledDensity:F

    .line 76
    iget p1, p1, Lmiuix/view/DisplayConfig;->fontScale:F

    mul-float/2addr p1, v0

    iput p1, p2, Lmiuix/view/DisplayConfig;->fontScale:F

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Config changed. Raw config("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/autodensity/DensityConfigManager;->mOriginConfig:Lmiuix/autodensity/DensityConfig;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") TargetConfig("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/autodensity/DensityConfigManager;->mTargetConfig:Lmiuix/autodensity/DensityConfig;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method
