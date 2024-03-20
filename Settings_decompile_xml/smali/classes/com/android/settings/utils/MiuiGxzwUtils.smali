.class public Lcom/android/settings/utils/MiuiGxzwUtils;
.super Ljava/lang/Object;
.source "MiuiGxzwUtils.java"


# static fields
.field private static DENSITY_DPI:I

.field public static GXZW_ANIM_HEIGHT:I

.field private static final GXZW_ANIM_HEIGHT_PRCENT:F

.field public static GXZW_ANIM_WIDTH:I

.field private static final GXZW_ANIM_WIDTH_PRCENT:F

.field public static GXZW_HEIGHT_PRCENT:F

.field public static GXZW_ICON_HEIGHT:I

.field public static GXZW_ICON_WIDTH:I

.field public static GXZW_ICON_X:I

.field public static GXZW_ICON_Y:I

.field private static final GXZW_LOWLIGHT_SENSOR:Z

.field private static final GXZW_POSITION:Ljava/lang/String;

.field private static final GXZW_SENSOR:Z

.field public static GXZW_WIDTH_PRCENT:F

.field private static GXZW_X_PRCENT:F

.field private static GXZW_Y_PRCENT:F

.field private static final MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

.field private static SCREEN_HEIGHT_DP:I

.field public static SCREEN_HEIGHT_PHYSICAL:I

.field public static SCREEN_HEIGHT_PX:I

.field private static SCREEN_WIDTH_DP:I

.field public static SCREEN_WIDTH_PHYSICAL:I

.field public static SCREEN_WIDTH_PX:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_SENSOR:Z

    const-string/jumbo v0, "persist.vendor.sys.fp.expolevel"

    .line 30
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x88

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_LOWLIGHT_SENSOR:Z

    const/16 v0, 0x1c5

    .line 54
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_X:I

    const/16 v0, 0x668

    .line 55
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    const/16 v0, 0xad

    .line 56
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 57
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    const/16 v0, 0x404

    .line 58
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    .line 59
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    const-string/jumbo v0, "ro.hardware.fp.fod.location"

    .line 88
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_POSITION:Ljava/lang/String;

    const-string/jumbo v0, "persist.sys.miui_default_resolution"

    .line 91
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/utils/MiuiGxzwUtils;->MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwLowPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3c0

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    :goto_0
    const/16 v1, 0x438

    invoke-static {v0, v1}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result v0

    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_WIDTH_PRCENT:F

    .line 94
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwLowPosition()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x21c

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    :goto_1
    const/16 v1, 0x960

    invoke-static {v0, v1}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result v0

    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT_PRCENT:F

    const/4 v0, -0x1

    .line 97
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 98
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    .line 104
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->DENSITY_DPI:I

    .line 105
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_DP:I

    .line 106
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_DP:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 108
    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_X_PRCENT:F

    .line 109
    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_Y_PRCENT:F

    .line 110
    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_WIDTH_PRCENT:F

    .line 111
    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_HEIGHT_PRCENT:F

    .line 112
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PX:I

    .line 113
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    return-void
.end method

.method public static caculateGxzwIconSize(Landroid/content/Context;)V
    .locals 5

    const-string v0, ","

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 123
    sget v4, Lcom/android/settings/utils/MiuiGxzwUtils;->DENSITY_DPI:I

    if-ne v1, v4, :cond_0

    sget v4, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_DP:I

    if-ne v2, v4, :cond_0

    sget v4, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_DP:I

    if-ne v3, v4, :cond_0

    return-void

    .line 127
    :cond_0
    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->DENSITY_DPI:I

    .line 128
    sput v2, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_DP:I

    .line 129
    sput v3, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_DP:I

    .line 131
    sget v1, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 132
    invoke-static {p0}, Lcom/android/settings/utils/MiuiGxzwUtils;->phySicalScreenPx(Landroid/content/Context;)V

    .line 134
    :cond_1
    invoke-static {p0}, Lcom/android/settings/utils/MiuiGxzwUtils;->screenWhPx(Landroid/content/Context;)V

    const-string/jumbo p0, "persist.vendor.sys.fp.fod.location.X_Y"

    const-string v1, ""

    .line 136
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "persist.vendor.sys.fp.fod.size.width_height"

    .line 137
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 145
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 150
    sget p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_X:I

    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    invoke-static {p0, v0}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_X_PRCENT:F

    .line 151
    sget p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    invoke-static {p0, v0}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_Y_PRCENT:F

    .line 152
    sget p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    invoke-static {p0, v0}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_WIDTH_PRCENT:F

    .line 153
    sget p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    invoke-static {p0, v0}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_HEIGHT_PRCENT:F

    .line 155
    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PX:I

    int-to-float v1, v0

    sget v2, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_X_PRCENT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 156
    sget v1, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    int-to-float v2, v1

    sget v3, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_Y_PRCENT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    int-to-float v3, v0

    .line 157
    sget v4, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_WIDTH_PRCENT:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    int-to-float v3, v1

    mul-float/2addr v3, p0

    float-to-int p0, v3

    .line 158
    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    int-to-float p0, v0

    .line 160
    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_WIDTH_PRCENT:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_WIDTH:I

    int-to-float p0, v1

    .line 161
    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT_PRCENT:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ANIM_HEIGHT:I

    int-to-float p0, v2

    .line 162
    sget v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    invoke-static {v0, v0}, Lcom/android/settings/utils/MiuiGxzwUtils;->getPrcent(II)F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->resetDefaultValue()V

    :goto_0
    return-void

    .line 140
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->resetDefaultValue()V

    return-void
.end method

.method public static getPrcent(II)F
    .locals 2

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(I)V

    const/16 p1, 0xa

    const/4 v1, 0x5

    invoke-virtual {v0, p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static isGxzwLowPosition()Z
    .locals 2

    const-string v0, "low"

    .line 101
    sget-object v1, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_POSITION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGxzwSensor()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_SENSOR:Z

    return v0
.end method

.method public static isLargeFod()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHapticFeedback(Landroid/content/Context;)Z
    .locals 4

    const/16 v0, 0xa0

    const/16 v1, 0x9d

    const/16 v2, 0x9f

    const/16 v3, 0x9e

    .line 76
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 77
    new-instance v1, Lmiui/util/HapticFeedbackUtil;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    move p0, v2

    :goto_0
    const/4 v3, 0x4

    if-ge p0, v3, :cond_1

    .line 78
    aget v3, v0, p0

    .line 79
    invoke-virtual {v1, v3}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportLowlight()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_LOWLIGHT_SENSOR:Z

    return v0
.end method

.method public static isSupportQuickOpen()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_SENSOR:Z

    return v0
.end method

.method public static isSupportfodVibrateSwitch(Landroid/content/Context;)Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_NEW_HAPTIC_VERSION:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/android/settings/utils/MiuiGxzwUtils;->isSupportHapticFeedback(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static phySicalScreenPx(Landroid/content/Context;)V
    .locals 3

    .line 181
    sget-object v0, Lcom/android/settings/utils/MiuiGxzwUtils;->MIUI_DEFAULT_RESOLUTION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "display"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 183
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 185
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "x"

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PHYSICAL:I

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PHYSICAL:I

    :goto_0
    return-void
.end method

.method private static resetDefaultValue()V
    .locals 1

    const/16 v0, 0x1c5

    .line 208
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_X:I

    const/16 v0, 0x668

    .line 209
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_Y:I

    const/16 v0, 0xad

    .line 210
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 211
    sput v0, Lcom/android/settings/utils/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    return-void
.end method

.method private static screenWhPx(Landroid/content/Context;)V
    .locals 3

    const-string v0, "display"

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 200
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    .line 201
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 203
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_1
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_WIDTH_PX:I

    if-eqz v2, :cond_2

    .line 204
    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_2
    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    sput p0, Lcom/android/settings/utils/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    return-void
.end method
