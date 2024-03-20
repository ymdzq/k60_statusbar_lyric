.class public abstract Lcom/android/keyguard/utils/ViewBlurUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static hasAddMiBackgroundBlendColor:Z = false

.field public static viewBlurRadius:I


# direct methods
.method public static setMiBackgroundBlur(ILandroid/view/View;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "setBackgroundRenderEffect radius="

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    const-string/jumbo v2, "setBackgroundRenderEffect target="

    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, ", radius="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, ", viewBlurRadius="

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget v2, Lcom/android/keyguard/utils/ViewBlurUtils;->viewBlurRadius:I

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 48
    const-string v2, "ViewBlur"

    .line 49
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    sget v1, Lcom/android/keyguard/utils/ViewBlurUtils;->viewBlurRadius:I

    .line 54
    if-eq v1, p0, :cond_5

    .line 56
    sput p0, Lcom/android/keyguard/utils/ViewBlurUtils;->viewBlurRadius:I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-lez p0, :cond_3

    .line 75
    const/4 v0, 0x1

    .line 77
    invoke-static {p1, v0}, Lcom/android/keyguard/utils/ViewBlurUtils;->setPassWindowBlurEnabled(Landroid/view/View;Z)V

    .line 78
    invoke-static {v0, p1}, Lcom/android/keyguard/utils/ViewBlurUtils;->setMiBackgroundBlurMode(ILandroid/view/View;)V

    .line 81
    const-class v3, Landroid/view/View;

    .line 84
    const-string/jumbo v5, "setMiBackgroundBlurRadius"

    .line 86
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 89
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 91
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 93
    move-result-object v7

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p0

    .line 100
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 101
    move-result-object v8

    .line 104
    move-object v4, p1

    .line 105
    invoke-static/range {v3 .. v8}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 109
    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 113
    move-result p0

    .line 116
    if-nez p0, :cond_1

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    const-string/jumbo p0, "setMiViewBlurMode, mode=1"

    .line 120
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {v0, p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiViewBlurMode(ILandroid/view/View;)V

    .line 126
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    move-result-object p0

    .line 132
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 133
    move-result p0

    .line 136
    if-nez p0, :cond_2

    .line 137
    goto :goto_1

    .line 139
    :cond_2
    sget-boolean p0, Lcom/android/keyguard/utils/ViewBlurUtils;->hasAddMiBackgroundBlendColor:Z

    .line 140
    if-nez p0, :cond_5

    .line 142
    const-string p0, "addMiBackgroundBlendColor"

    .line 144
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/high16 p0, 0x4d000000    # 1.34217728E8f

    .line 149
    const/4 v1, 0x3

    .line 151
    invoke-static {p1, p0, v1}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 152
    sput-boolean v0, Lcom/android/keyguard/utils/ViewBlurUtils;->hasAddMiBackgroundBlendColor:Z

    .line 155
    goto :goto_1

    .line 157
    :cond_3
    const/4 p0, 0x0

    .line 158
    invoke-static {p1, p0}, Lcom/android/keyguard/utils/ViewBlurUtils;->setPassWindowBlurEnabled(Landroid/view/View;Z)V

    .line 159
    invoke-static {p0, p1}, Lcom/android/keyguard/utils/ViewBlurUtils;->setMiBackgroundBlurMode(ILandroid/view/View;)V

    .line 162
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    .line 165
    if-nez v0, :cond_4

    .line 167
    goto :goto_1

    .line 169
    :cond_4
    invoke-static {p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMiBackgroundBlendColor(Landroid/view/View;)V

    .line 170
    sput-boolean p0, Lcom/android/keyguard/utils/ViewBlurUtils;->hasAddMiBackgroundBlendColor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_1

    .line 175
    :catch_0
    move-exception p0

    .line 176
    const-string/jumbo p1, "setBackgroundRenderEffect error"

    .line 177
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_5
    :goto_1
    return-void
    .line 183
.end method

.method public static setMiBackgroundBlurMode(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "setMiBackgroundBlurMode, mode="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "ViewBlur"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p0, p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMiBackgroundBlurMode(ILandroid/view/View;)V

    .line 33
    return-void
    .line 36
.end method

.method public static setPassWindowBlurEnabled(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "setPassWindowBlurEnabled, enable="

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    const-string v1, "ViewBlur"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p0, p1}, Lcom/miui/clock/utils/MiuiBlurUtils;->setPassWindowBlurEnabled(Landroid/view/View;Z)Z

    .line 33
    return-void
    .line 36
.end method
