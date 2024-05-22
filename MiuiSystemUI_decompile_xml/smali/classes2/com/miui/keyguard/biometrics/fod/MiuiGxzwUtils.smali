.class public abstract Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static DENSITY_DPI:I = 0x0

.field public static GXZW_ANIM_HEIGHT:I = 0x2d0

.field public static final GXZW_ANIM_HEIGHT_PRCENT:F

.field public static GXZW_ANIM_SCALE:F = 0.0f

.field public static GXZW_ANIM_WIDTH:I = 0x2d0

.field public static final GXZW_ANIM_WIDTH_PRCENT:F

.field public static GXZW_ICON_HEIGHT:I = 0xad

.field public static GXZW_ICON_WIDTH:I = 0xad

.field public static GXZW_ICON_X:I = 0x1c5

.field public static GXZW_ICON_Y:I = 0x668

.field public static final GXZW_LHBM_FINGER:Z

.field public static final GXZW_LOWLIGHT_SENSOR:Z

.field public static final GXZW_POSITION:Ljava/lang/String;

.field public static GXZW_WIDTH_PRCENT:F

.field public static GXZW_X_PRCENT:F

.field public static GXZW_Y_PRCENT:F

.field public static final MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

.field public static final PRIVATE_FLAG_IS_HBM_OVERLAY:I

.field public static SCREEN_HEIGHT_DP:I

.field public static SCREEN_HEIGHT_PHYSICAL:I

.field public static SCREEN_HEIGHT_PX:I

.field public static SCREEN_WIDTH_DP:I

.field public static SCREEN_WIDTH_PHYSICAL:I

.field public static SCREEN_WIDTH_PX:I

.field public static final SUPPORT_NO_TOUCH_MODE:Z

.field public static sVibrateSwitchStatus:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "ro.hardware.fp.fod.location"

    .line 2
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_POSITION:Ljava/lang/String;

    .line 8
    const-string v0, "persist.sys.miui_default_resolution"

    .line 10
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/16 v0, 0x3c0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    .line 27
    :goto_0
    const/16 v1, 0x438

    .line 29
    invoke-static {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 31
    move-result v0

    .line 34
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_WIDTH_PRCENT:F

    .line 35
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    const/16 v0, 0x21c

    .line 43
    goto :goto_1

    .line 45
    :cond_1
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    .line 46
    :goto_1
    const/16 v1, 0x960

    .line 48
    invoke-static {v0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 50
    move-result v0

    .line 53
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT_PRCENT:F

    .line 54
    const/4 v0, -0x1

    .line 56
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 57
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 59
    const-string v1, "persist.vendor.sys.fp.expolevel"

    .line 61
    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 64
    move-result v1

    .line 67
    const/16 v3, 0x88

    .line 68
    const/4 v4, 0x1

    .line 70
    if-ne v1, v3, :cond_2

    .line 71
    move v1, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v1, v2

    .line 75
    :goto_2
    sput-boolean v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_LOWLIGHT_SENSOR:Z

    .line 76
    const-string v1, "ro.vendor.localhbm.enable"

    .line 78
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 80
    move-result v1

    .line 83
    sput-boolean v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_LHBM_FINGER:Z

    .line 84
    sput-boolean v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->sVibrateSwitchStatus:Z

    .line 86
    const-string v1, "ro.hardware.fp.fod.touch.ctl.version"

    .line 88
    const-string v2, ""

    .line 90
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    const-string v2, "2.0"

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result v1

    .line 101
    sput-boolean v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SUPPORT_NO_TOUCH_MODE:Z

    .line 102
    const/high16 v1, -0x80000000

    .line 104
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->PRIVATE_FLAG_IS_HBM_OVERLAY:I

    .line 106
    :try_start_0
    const-string v1, "android.view.WindowManager$LayoutParams"

    .line 108
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 110
    move-result-object v1

    .line 113
    const-string v2, "PRIVATE_FLAG_IS_HBM_OVERLAY"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 116
    move-result-object v1

    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 121
    move-result v1

    .line 124
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->PRIVATE_FLAG_IS_HBM_OVERLAY:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_3

    .line 127
    :catch_0
    const-string v1, "MiuiGxzwUtils"

    .line 128
    const-string v2, "WindowManager.LayoutParams does not have this field: PRIVATE_FLAG_IS_HBM_OVERLAY"

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_3

    .line 135
    :catch_1
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 137
    goto :goto_3

    .line 140
    :catch_2
    move-exception v1

    .line 141
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 142
    :goto_3
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->DENSITY_DPI:I

    .line 145
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_DP:I

    .line 147
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_DP:I

    .line 149
    const/high16 v1, -0x40800000    # -1.0f

    .line 151
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_X_PRCENT:F

    .line 153
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_Y_PRCENT:F

    .line 155
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_WIDTH_PRCENT:F

    .line 157
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PX:I

    .line 159
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    .line 161
    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    sput v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_SCALE:F

    .line 165
    return-void
    .line 167
.end method

.method public static caculateGxzwIconSize(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, ","

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v1

    .line 11
    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    move-result-object v2

    .line 21
    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    move-result-object v3

    .line 31
    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 32
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->DENSITY_DPI:I

    .line 34
    if-ne v1, v4, :cond_0

    .line 36
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_DP:I

    .line 38
    if-ne v2, v4, :cond_0

    .line 40
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_DP:I

    .line 42
    if-ne v3, v4, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->DENSITY_DPI:I

    .line 47
    sput v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_DP:I

    .line 49
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_DP:I

    .line 51
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 53
    const/4 v2, -0x1

    .line 55
    const-string v3, "display"

    .line 56
    const/4 v4, 0x1

    .line 58
    const/4 v5, 0x0

    .line 59
    if-ne v1, v2, :cond_2

    .line 60
    sget-object v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 74
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    .line 80
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 84
    move-result v2

    .line 87
    sput v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 88
    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 94
    move-result v1

    .line 97
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 98
    goto :goto_0

    .line 100
    :cond_1
    const-string/jumbo v2, "x"

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 107
    aget-object v6, v6, v5

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    move-result v6

    .line 113
    sput v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 119
    aget-object v1, v1, v4

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    move-result v1

    .line 125
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 126
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    move-result-object v1

    .line 131
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 132
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 134
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 139
    move-result-object v1

    .line 142
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 150
    move-result-object p0

    .line 153
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 154
    if-ne p0, v4, :cond_3

    .line 156
    move p0, v4

    .line 158
    goto :goto_1

    .line 159
    :cond_3
    move p0, v5

    .line 160
    :goto_1
    if-eqz p0, :cond_4

    .line 161
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 163
    goto :goto_2

    .line 165
    :cond_4
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 166
    :goto_2
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PX:I

    .line 168
    if-eqz p0, :cond_5

    .line 170
    iget p0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 172
    goto :goto_3

    .line 174
    :cond_5
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    :goto_3
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    .line 177
    const/16 p0, 0x438

    .line 179
    invoke-static {v1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 181
    move-result p0

    .line 184
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_SCALE:F

    .line 185
    const-string p0, "persist.vendor.sys.fp.fod.location.X_Y"

    .line 187
    const-string v1, ""

    .line 189
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 194
    const-string v2, "persist.vendor.sys.fp.fod.size.width_height"

    .line 195
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 201
    move-result v2

    .line 204
    const/16 v3, 0xad

    .line 205
    const/16 v6, 0x668

    .line 207
    const/16 v7, 0x1c5

    .line 209
    if-nez v2, :cond_7

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 213
    move-result v2

    .line 216
    if-eqz v2, :cond_6

    .line 217
    goto/16 :goto_5

    .line 219
    :cond_6
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 224
    aget-object v2, v2, v5

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 227
    move-result v2

    .line 230
    sput v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 231
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 233
    move-result-object p0

    .line 236
    aget-object p0, p0, v4

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 239
    move-result p0

    .line 242
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 245
    move-result-object p0

    .line 248
    aget-object p0, p0, v5

    .line 249
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 251
    move-result p0

    .line 254
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 257
    move-result-object p0

    .line 260
    aget-object p0, p0, v4

    .line 261
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 263
    move-result p0

    .line 266
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 267
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 269
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 271
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 273
    move-result p0

    .line 276
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_X_PRCENT:F

    .line 277
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 279
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 281
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 283
    move-result p0

    .line 286
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_Y_PRCENT:F

    .line 287
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 289
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 291
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 293
    move-result p0

    .line 296
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_WIDTH_PRCENT:F

    .line 297
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 299
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 301
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 303
    move-result p0

    .line 306
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_WIDTH_PX:I

    .line 307
    int-to-float v0, v0

    .line 309
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_X_PRCENT:F

    .line 310
    mul-float/2addr v1, v0

    .line 312
    float-to-int v1, v1

    .line 313
    sput v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 314
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    .line 316
    int-to-float v1, v1

    .line 318
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_Y_PRCENT:F

    .line 319
    mul-float/2addr v2, v1

    .line 321
    float-to-int v2, v2

    .line 322
    sput v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 323
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_WIDTH_PRCENT:F

    .line 325
    mul-float/2addr v4, v0

    .line 327
    float-to-int v4, v4

    .line 328
    sput v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 329
    mul-float/2addr p0, v1

    .line 331
    float-to-int p0, p0

    .line 332
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 333
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_WIDTH_PRCENT:F

    .line 335
    mul-float/2addr v0, p0

    .line 337
    float-to-int p0, v0

    .line 338
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    .line 339
    sget p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT_PRCENT:F

    .line 341
    mul-float/2addr v1, p0

    .line 343
    float-to-int p0, v1

    .line 344
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    .line 345
    int-to-float p0, v2

    .line 347
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 348
    invoke-static {v0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getPrcent(II)F

    .line 350
    move-result v0

    .line 353
    mul-float/2addr p0, v0

    .line 354
    float-to-int p0, p0

    .line 355
    sput p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    goto :goto_4

    .line 358
    :catch_0
    move-exception p0

    .line 359
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    sput v7, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 363
    sput v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 365
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 367
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 369
    :goto_4
    return-void

    .line 371
    :cond_7
    :goto_5
    sput v7, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 372
    sput v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 374
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 376
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 378
    return-void
    .line 380
.end method

.method public static getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 2
    new-instance p0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 10
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 12
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 14
    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 16
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 18
    add-int/2addr v0, v2

    .line 20
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 21
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 23
    add-int/2addr v1, v0

    .line 25
    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 26
    return-object p0
    .line 28
.end method

.method public static getPrcent(II)F
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 7
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    .line 9
    new-instance p0, Ljava/math/BigDecimal;

    .line 12
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 14
    const/16 p1, 0xa

    .line 17
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 29
    return p0
    .line 31
.end method

.method public static isFodAodShowEnable(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "gxzw_icon_aod_show_enable"

    .line 6
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 10
    move-result p0

    .line 13
    if-ne p0, v1, :cond_0

    .line 14
    const-class p0, Lmiui/stub/MiuiStub$15;

    .line 16
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lmiui/stub/MiuiStub$15;

    .line 22
    invoke-virtual {p0}, Lmiui/stub/MiuiStub$15;->getInvertColorsEnable()Z

    .line 24
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move v1, v2

    .line 31
    :goto_0
    return v1
.end method

.method public static isGxzwLowPosition()Z
    .locals 2

    .line 1
    const-string v0, "low"

    .line 2
    sget-object v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_POSITION:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    return v0
    .line 10
.end method

.method public static notifySurfaceFlinger(II)V
    .locals 3

    .line 1
    const-string v0, "SurfaceFlinger"

    .line 2
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "android.ui.ISurfaceComposer"

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    const/4 p1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :try_start_0
    invoke-interface {v0, p0, v1, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 27
    goto :goto_2

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p0

    .line 33
    :try_start_1
    const-string p1, "MiuiGxzwUtils"

    .line 34
    const-string v0, "Failed to notifySurfaceFlinger"

    .line 36
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_0

    .line 41
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw p0

    .line 45
    :cond_0
    :goto_2
    return-void
    .line 46
.end method

.method public static setTouchMode(II)V
    .locals 3

    .line 1
    const-string v0, "MiuiGxzwUtils"

    .line 2
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-static {}, Lmiui/util/ITouchFeature;->getInstance()Lmiui/util/ITouchFeature;

    .line 5
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lmiui/util/ITouchFeature;->getSupportTouchFeatureVersion()I

    .line 9
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move v2, v1

    .line 22
    :goto_0
    if-ne v1, v2, :cond_0

    .line 23
    :try_start_1
    invoke-static {}, Lmiui/util/ITouchFeature;->getInstance()Lmiui/util/ITouchFeature;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v1, p0, p1}, Lmiui/util/ITouchFeature;->setTouchMode(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    goto :goto_1

    .line 32
    :catch_1
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_1
    return-void

    .line 41
    :cond_0
    :try_start_2
    invoke-static {}, Lmiui/util/ITouchFeature;->getInstance()Lmiui/util/ITouchFeature;

    .line 42
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {v1, v2, p0, p1}, Lmiui/util/ITouchFeature;->setTouchMode(III)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 47
    goto :goto_2

    .line 50
    :catch_2
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_2
    return-void
    .line 59
.end method
