.class public abstract Lmiuix/core/util/MiuiBlurUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

.field public static METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

.field public static METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

.field public static METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

.field public static final SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;

    .line 2
    const-string v1, "setMiBackgroundBlurMode"

    .line 4
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Class;

    .line 7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 9
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 24
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 27
    :goto_0
    return-void
    .line 29
.end method

.method public static addBackgroundBlenderColor(Landroid/view/View;II)V
    .locals 7

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 11
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    const-class v0, Landroid/view/View;

    .line 18
    const-string v4, "addMiBackgroundBlendColor"

    .line 20
    new-array v5, v2, [Ljava/lang/Class;

    .line 22
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    aput-object v6, v5, v1

    .line 26
    aput-object v6, v5, v3

    .line 28
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v0

    .line 33
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 34
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 43
    aput-object p1, v2, v1

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 49
    aput-object p1, v2, v3

    .line 50
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-void

    .line 55
    :catch_0
    const/4 p0, 0x0

    .line 56
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_ADD_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 57
    return-void
    .line 59
.end method

.method public static clearBackgroundBlenderColor(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 11
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    const-class v0, Landroid/view/View;

    .line 16
    const-string v2, "clearMiBackgroundBlendColor"

    .line 18
    new-array v3, v1, [Ljava/lang/Class;

    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 26
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-void

    .line 35
    :catch_0
    const/4 p0, 0x0

    .line 36
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_CLEAR_BG_BLEND_COLOR:Ljava/lang/reflect/Method;

    .line 37
    return-void
    .line 39
.end method

.method public static clearBackgroundBlur(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 11
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    const-class v0, Landroid/view/View;

    .line 17
    const-string v3, "setMiBackgroundBlurMode"

    .line 19
    new-array v4, v2, [Ljava/lang/Class;

    .line 21
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    aput-object v5, v4, v1

    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    move-result-object v0

    .line 30
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 31
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 40
    aput-object v3, v2, v1

    .line 41
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 46
    :catch_0
    const/4 p0, 0x0

    .line 47
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 48
    :goto_0
    return-void
    .line 50
.end method

.method public static setBackgroundBlur(Landroid/view/View;Z)Z
    .locals 6

    .line 1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->SUPPORT_MIUI_BLUR:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    :try_start_0
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 12
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    const-class v0, Landroid/view/View;

    .line 17
    const-string v3, "setMiBackgroundBlurMode"

    .line 19
    new-array v4, v2, [Ljava/lang/Class;

    .line 21
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    aput-object v5, v4, v1

    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    move-result-object v0

    .line 30
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 31
    :cond_1
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 33
    if-nez v0, :cond_2

    .line 35
    const-class v0, Landroid/view/View;

    .line 37
    const-string v3, "setMiBackgroundBlurRadius"

    .line 39
    new-array v4, v2, [Ljava/lang/Class;

    .line 41
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    aput-object v5, v4, v1

    .line 45
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    move-result-object v0

    .line 50
    sput-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 51
    :cond_2
    sget-object v0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 53
    new-array v3, v2, [Ljava/lang/Object;

    .line 55
    if-eqz p1, :cond_3

    .line 57
    const/4 p1, 0x2

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move p1, v2

    .line 61
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p1

    .line 65
    aput-object p1, v3, v1

    .line 66
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object p1, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 71
    new-array v0, v2, [Ljava/lang/Object;

    .line 73
    const/16 v3, 0x50

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v3

    .line 80
    aput-object v3, v0, v1

    .line 81
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return v2

    .line 86
    :catch_0
    const/4 p0, 0x0

    .line 87
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_MODE:Ljava/lang/reflect/Method;

    .line 88
    sput-object p0, Lmiuix/core/util/MiuiBlurUtils;->METHOD_SET_BG_BLUR_RADIUS:Ljava/lang/reflect/Method;

    .line 90
    return v1
    .line 92
.end method
