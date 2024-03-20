.class public abstract Lcom/android/keyguard/utils/MiuiKeyguardUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

.field public static sRegionSupportMiHomeList:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sput-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sput-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

    .line 14
    return-void
    .line 16
.end method

.method public static isDefaultKeyguardNotTheme()Z
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/miui/systemui/SettingsManager;

    .line 16
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/miui/systemui/SettingsManager;

    .line 22
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 24
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 31
    :goto_1
    return v0
    .line 32
.end method

.method public static isRegionSupportMiHome(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    const v0, 0x7f0300a6    # @array/region_support_mihome

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    array-length v0, p0

    .line 21
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 29
    sput-object p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 30
    :cond_0
    sget-object p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "ro.miui.region"

    .line 36
    const-string v1, "CN"

    .line 39
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    return p0
    .line 49
.end method

.method public static setMemberBlendColor(ILandroid/view/View;Z)V
    .locals 7

    .line 1
    const-string/jumbo v0, "setMemberBlendColor: view:"

    .line 2
    const-string v1, "MiuiKeyguardUtils"

    .line 5
    if-eqz p1, :cond_2

    .line 7
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 9
    if-nez v2, :cond_0

    .line 11
    goto/16 :goto_1

    .line 13
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMiBackgroundBlendColor(Landroid/view/View;)V

    .line 15
    const/4 v2, 0x3

    .line 18
    invoke-static {v2, p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiViewBlurMode(ILandroid/view/View;)V

    .line 19
    const/16 v2, 0xff

    .line 22
    invoke-static {v2, v2}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v3

    .line 32
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 33
    move-result v5

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 37
    move-result v6

    .line 40
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 41
    move-result p0

    .line 44
    invoke-static {v3, v5, v6, p0}, Landroid/graphics/Color;->argb(IIII)I

    .line 45
    move-result p0

    .line 48
    invoke-static {v2, v2}, Ljava/lang/Math;->min(II)I

    .line 49
    move-result v2

    .line 52
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 53
    move-result v2

    .line 56
    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 57
    move-result v2

    .line 60
    const/16 v3, 0x65

    .line 61
    invoke-static {p1, p0, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 63
    if-eqz p2, :cond_1

    .line 66
    const/16 v3, 0x69

    .line 68
    invoke-static {p1, v2, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 70
    goto :goto_0

    .line 73
    :cond_1
    const/16 v3, 0x67

    .line 74
    invoke-static {p1, v2, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 76
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, ",colorDark:"

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string p2, ",color:"

    .line 103
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string p0, ",labColor:"

    .line 111
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_2

    .line 126
    :catch_0
    move-exception p0

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v0, "setMemberBlendColor error , view :"

    .line 130
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 142
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    goto :goto_2

    .line 149
    :cond_2
    :goto_1
    const-string/jumbo p0, "setMemberBlendColor view is null"

    .line 150
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_2
    return-void
    .line 156
.end method

.method public static setViewTouchDelegate(ILandroid/view/View;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    new-instance v1, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;

    .line 11
    invoke-direct {v1, p1, v0, p0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils$setViewTouchDelegate$1;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
    .line 19
.end method
