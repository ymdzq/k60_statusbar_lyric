.class public Lmiuix/smooth/SmoothCornerHelper;
.super Ljava/lang/Object;
.source "SmoothCornerHelper.java"


# static fields
.field public static FORCE_USE_SMOOTH:Ljava/lang/Boolean;

.field public static IS_SUPPORT_SMOOTH_CORNER:Z

.field private static sEnableAppSmoothCorner:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.support_view_smoothcorner"

    const-string v1, "false"

    .line 18
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-nez v0, :cond_0

    const-string v0, "SmoothCornerHelper"

    const-string v1, "this device is not support system smooth corner"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static isEnableAppSmoothCorner()Z
    .locals 3

    .line 39
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 41
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "sAppSmoothCornerEnabled"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableAppSmoothCorner fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmoothCornerHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    :goto_0
    sget-object v0, Lmiuix/smooth/SmoothCornerHelper;->sEnableAppSmoothCorner:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setDrawableSmoothCornerEnable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 6

    .line 68
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lmiuix/smooth/SmoothCornerHelper;->isEnableAppSmoothCorner()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 75
    :cond_1
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v1, "setSmoothCornerEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDrawableSmoothCornerEnable fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmoothCornerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setViewSmoothCornerEnable(Landroid/view/View;Z)V
    .locals 6

    .line 54
    sget-boolean v0, Lmiuix/smooth/SmoothCornerHelper;->IS_SUPPORT_SMOOTH_CORNER:Z

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lmiuix/smooth/SmoothCornerHelper;->isEnableAppSmoothCorner()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 61
    :cond_1
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSmoothCornerEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, p0, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setViewSmoothCornerEnable fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmoothCornerHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
