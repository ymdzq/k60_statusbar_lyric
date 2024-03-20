.class public abstract Lcom/miui/keyguardtemplate/utils/DeviceConfig;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FOLD_DEVICE:Z

.field public static final PAD_DEVICE:Z


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
    sput-boolean v0, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->FOLD_DEVICE:Z

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
    sput-boolean v0, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 32
    const-string v0, "persist.sys.background_blur_supported"

    .line 34
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    return-void
    .line 39
.end method

.method public static calculateScale(Landroid/content/Context;)F
    .locals 4

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
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 13
    const-string v2, "cetus"

    .line 15
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 17
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    invoke-static {p0}, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 23
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    const/high16 p0, 0x43a00000    # 320.0f

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    invoke-static {p0}, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    const/high16 p0, 0x44290000    # 676.0f

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    sget-boolean v1, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 47
    if-eqz v1, :cond_2

    .line 49
    invoke-static {p0}, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    const/high16 p0, 0x442e0000    # 696.0f

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    sget-boolean p0, Lcom/miui/keyguardtemplate/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 60
    if-eqz p0, :cond_3

    .line 62
    const p0, 0x4431c000    # 711.0f

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    const/high16 p0, 0x43c40000    # 392.0f

    .line 68
    :goto_0
    div-float/2addr v0, p0

    .line 70
    return v0
    .line 71
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
