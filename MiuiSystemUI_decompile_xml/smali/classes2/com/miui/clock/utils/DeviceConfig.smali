.class public abstract Lcom/miui/clock/utils/DeviceConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BACKGROUND_BLUR_KEYGUARD_DISABLED:Z

.field public static final BACKGROUND_BLUR_SUPPORTED_2:Z

.field public static final BACKGROUND_BLUR_VERSION:I

.field public static final FOLD_DEVICE:Z

.field public static final NO_SUPPORT_BLUR_DEVICE:Ljava/util/ArrayList;

.field public static final PAD_DEVICE:Z

.field public static mBackgroundBlurEnabled:I


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
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    sput-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 15
    const-string v0, "ro.build.characteristics"

    .line 17
    const-string v2, "default"

    .line 19
    invoke-static {v0, v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const-string/jumbo v2, "tablet"

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 31
    sput-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 32
    const/4 v0, -0x1

    .line 34
    sput v0, Lcom/miui/clock/utils/DeviceConfig;->mBackgroundBlurEnabled:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    sput-object v0, Lcom/miui/clock/utils/DeviceConfig;->NO_SUPPORT_BLUR_DEVICE:Ljava/util/ArrayList;

    .line 42
    const-string v2, "persist.sys.background_blur_keyguard_disabled"

    .line 44
    invoke-static {v2, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 46
    move-result v2

    .line 49
    sput-boolean v2, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_KEYGUARD_DISABLED:Z

    .line 50
    const-string/jumbo v2, "yudi"

    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v2, "corot"

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const-string v0, "persist.sys.background_blur_supported"

    .line 63
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    move-result v0

    .line 68
    sput-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_SUPPORTED_2:Z

    .line 69
    const-string v0, "persist.sys.background_blur_version"

    .line 71
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 73
    move-result v0

    .line 76
    sput v0, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_VERSION:I

    .line 77
    return-void
    .line 79
.end method

.method public static calculateScale(Landroid/content/Context;)F
    .locals 2

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
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 19
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    const/high16 p0, 0x43a00000    # 320.0f

    .line 25
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    const/high16 p0, 0x44290000    # 676.0f

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    sget-boolean v1, Lcom/miui/clock/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 43
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 51
    move-result-object p0

    .line 54
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 55
    const/16 v1, 0x258

    .line 57
    if-lt p0, v1, :cond_2

    .line 59
    const/4 p0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    :goto_0
    if-eqz p0, :cond_3

    .line 64
    const/high16 p0, 0x442e0000    # 696.0f

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    sget-boolean p0, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 69
    if-eqz p0, :cond_4

    .line 71
    const p0, 0x4431c000    # 711.0f

    .line 73
    goto :goto_1

    .line 76
    :cond_4
    const/high16 p0, 0x43c40000    # 392.0f

    .line 77
    :goto_1
    div-float/2addr v0, p0

    .line 79
    return v0
    .line 80
.end method

.method public static getAccessibilityDelta(Landroid/content/Context;)V
    .locals 14

    .line 1
    const-string v0, "ClockDeviceConfig"

    .line 2
    const/4 v1, -0x1

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    :try_start_0
    const-string v3, "persist.sys.miui_resolution"

    .line 7
    const/4 v4, 0x0

    .line 9
    invoke-static {v3, v4}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 13
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    new-instance v5, Landroid/graphics/Point;

    .line 20
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 22
    const-string v6, "android.view.WindowManagerGlobal"

    .line 25
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    move-result-object v6

    .line 30
    const-string v7, "getWindowManagerService"

    .line 31
    const/4 v8, 0x0

    .line 33
    new-array v9, v8, [Ljava/lang/Class;

    .line 34
    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v6

    .line 39
    const/4 v7, 0x1

    .line 40
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 41
    new-array v9, v8, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v6, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 49
    const-string v6, "android.view.IWindowManager"

    .line 50
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    move-result-object v6

    .line 55
    const-string v9, "getInitialDisplaySize"

    .line 56
    const/4 v10, 0x2

    .line 58
    new-array v11, v10, [Ljava/lang/Class;

    .line 59
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 61
    aput-object v12, v11, v8

    .line 63
    const-class v13, Landroid/graphics/Point;

    .line 65
    aput-object v13, v11, v7

    .line 67
    invoke-virtual {v6, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    move-result-object v9

    .line 72
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    new-array v10, v10, [Ljava/lang/Object;

    .line 76
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v11

    .line 81
    aput-object v11, v10, v8

    .line 82
    aput-object v5, v10, v7

    .line 84
    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v9, ","

    .line 89
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 91
    move-result-object v3

    .line 94
    aget-object v3, v3, v8

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 97
    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 101
    move-result v3

    .line 104
    const-string v9, "getInitialDisplayDensity"

    .line 105
    filled-new-array {v12}, [Ljava/lang/Class;

    .line 107
    move-result-object v10

    .line 110
    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    move-result-object v6

    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    new-array v7, v7, [Ljava/lang/Object;

    .line 118
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v9

    .line 123
    aput-object v9, v7, v8

    .line 124
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 132
    move-result v4

    .line 135
    mul-int/2addr v4, v3

    .line 136
    int-to-float v3, v4

    .line 137
    mul-float/2addr v3, v2

    .line 138
    iget v4, v5, Landroid/graphics/Point;->x:I

    .line 139
    int-to-float v4, v4

    .line 141
    div-float/2addr v3, v4

    .line 142
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 143
    move-result v3

    .line 146
    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->getDefaultDisplayDensity()I

    .line 148
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v3

    .line 153
    const-string v4, "getAccessibilityDefaultDisplayDpi error: "

    .line 154
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    move v3, v1

    .line 159
    :goto_0
    const-string v4, "default dpi: "

    .line 160
    invoke-static {v4, v3, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    if-eq v3, v1, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 167
    move-result-object p0

    .line 170
    const-string v1, "display_density_forced"

    .line 171
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 173
    move-result p0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    goto :goto_1

    .line 177
    :catch_0
    move-exception p0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    const-string v4, "Exception: "

    .line 181
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p0

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move p0, v3

    .line 196
    :goto_1
    int-to-float v1, p0

    .line 197
    mul-float/2addr v1, v2

    .line 198
    int-to-float v2, v3

    .line 199
    div-float/2addr v1, v2

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "accessibility dpi: "

    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string p0, ", delta: "

    .line 211
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object p0

    .line 222
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-void
    .line 226
.end method

.method public static getDefaultDisplayDensity()I
    .locals 7

    .line 1
    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "getWindowManagerService"

    .line 8
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 21
    const/4 v4, 0x0

    .line 23
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    const-string v3, "android.view.IWindowManager"

    .line 28
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    move-result-object v3

    .line 33
    const-string v4, "getInitialDisplayDensity"

    .line 34
    new-array v5, v1, [Ljava/lang/Class;

    .line 36
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 38
    aput-object v6, v5, v2

    .line 40
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v4

    .line 54
    aput-object v4, v1, v2

    .line 55
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 63
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    return v0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    const-string v1, "ClockDeviceConfig"

    .line 69
    const-string v2, "getDefaultDisplayDensity error: "

    .line 71
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v0, -0x1

    .line 76
    return v0
    .line 77
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

.method public static isBackgroundBlurEnabled(Landroid/content/Context;)I
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isSystemUI(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "background_blur_enable"

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 11
    move-result v0

    .line 14
    const-class v3, Landroid/provider/Settings$Secure;

    .line 15
    const-string v4, "getIntForUser"

    .line 17
    const/4 v5, 0x4

    .line 19
    new-array v6, v5, [Ljava/lang/Class;

    .line 20
    const-class v7, Landroid/content/ContentResolver;

    .line 22
    aput-object v7, v6, v2

    .line 24
    const-class v7, Ljava/lang/String;

    .line 26
    const/4 v8, 0x1

    .line 28
    aput-object v7, v6, v8

    .line 29
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    const/4 v9, 0x2

    .line 33
    aput-object v7, v6, v9

    .line 34
    const/4 v10, 0x3

    .line 36
    aput-object v7, v6, v10

    .line 37
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v3

    .line 42
    new-array v4, v5, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object p0

    .line 48
    aput-object p0, v4, v2

    .line 49
    aput-object v1, v4, v8

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p0

    .line 56
    aput-object p0, v4, v9

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p0

    .line 62
    aput-object p0, v4, v10

    .line 63
    const/4 p0, 0x0

    .line 65
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Integer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string v0, "ClockDeviceConfig"

    .line 78
    const-string v1, "getIntForUser fail"

    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :goto_0
    return v2

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    move-result-object p0

    .line 89
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 90
    move-result p0

    .line 93
    return p0
    .line 94
.end method

.method public static isHighTextContrastEnabled(Landroid/content/Context;)Z
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isSystemUI(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "high_text_contrast_enabled"

    .line 6
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    :try_start_0
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 12
    move-result v0

    .line 15
    const-class v4, Landroid/provider/Settings$Secure;

    .line 16
    const-string v5, "getIntForUser"

    .line 18
    const/4 v6, 0x4

    .line 20
    new-array v7, v6, [Ljava/lang/Class;

    .line 21
    const-class v8, Landroid/content/ContentResolver;

    .line 23
    aput-object v8, v7, v3

    .line 25
    const-class v8, Ljava/lang/String;

    .line 27
    aput-object v8, v7, v2

    .line 29
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    const/4 v9, 0x2

    .line 33
    aput-object v8, v7, v9

    .line 34
    const/4 v10, 0x3

    .line 36
    aput-object v8, v7, v10

    .line 37
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v4

    .line 42
    new-array v5, v6, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    move-result-object p0

    .line 48
    aput-object p0, v5, v3

    .line 49
    aput-object v1, v5, v2

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p0

    .line 56
    aput-object p0, v5, v9

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object p0

    .line 62
    aput-object p0, v5, v10

    .line 63
    const/4 p0, 0x0

    .line 65
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Integer;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    const-string v0, "ClockDeviceConfig"

    .line 78
    const-string v1, "getIntForUser fail"

    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    move p0, v3

    .line 85
    :goto_0
    if-ne p0, v2, :cond_0

    .line 86
    goto :goto_1

    .line 88
    :cond_0
    move v2, v3

    .line 89
    :goto_1
    return v2

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    move-result-object p0

    .line 94
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 95
    move-result p0

    .line 98
    if-ne p0, v2, :cond_2

    .line 99
    goto :goto_2

    .line 101
    :cond_2
    move v2, v3

    .line 102
    :goto_2
    return v2
    .line 103
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

.method public static supportBackgroundBlur(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget v0, Lcom/miui/clock/utils/DeviceConfig;->mBackgroundBlurEnabled:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->isBackgroundBlurEnabled(Landroid/content/Context;)I

    .line 7
    move-result p0

    .line 10
    sput p0, Lcom/miui/clock/utils/DeviceConfig;->mBackgroundBlurEnabled:I

    .line 11
    :cond_0
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/miui/clock/utils/DeviceConfig;->NO_SUPPORT_BLUR_DEVICE:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result p0

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p0, :cond_2

    .line 23
    sget p0, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_VERSION:I

    .line 25
    const/4 v2, 0x2

    .line 27
    if-lt p0, v2, :cond_1

    .line 28
    move p0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move p0, v0

    .line 32
    :goto_0
    if-nez p0, :cond_2

    .line 33
    move p0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move p0, v0

    .line 37
    :goto_1
    sget-boolean v2, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_KEYGUARD_DISABLED:Z

    .line 38
    if-eqz v2, :cond_4

    .line 40
    const-string v2, "persist.sys.miui_resolution"

    .line 42
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v3

    .line 52
    const-string v4, "WQHD+"

    .line 53
    if-nez v3, :cond_3

    .line 55
    const-string v3, ","

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 62
    aget-object v2, v2, v0

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    move-result v2

    .line 68
    const/16 v3, 0x5a0

    .line 69
    if-ne v2, v3, :cond_3

    .line 71
    move-object v2, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const-string v2, "FHD+"

    .line 75
    :goto_2
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    move v2, v1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move v2, v0

    .line 85
    :goto_3
    sget-boolean v3, Lcom/miui/clock/utils/DeviceConfig;->BACKGROUND_BLUR_SUPPORTED_2:Z

    .line 86
    if-eqz v3, :cond_5

    .line 88
    sget v3, Lcom/miui/clock/utils/DeviceConfig;->mBackgroundBlurEnabled:I

    .line 90
    if-ne v3, v1, :cond_5

    .line 92
    if-nez p0, :cond_5

    .line 94
    if-nez v2, :cond_5

    .line 96
    move v0, v1

    .line 98
    :cond_5
    return v0
    .line 99
.end method
