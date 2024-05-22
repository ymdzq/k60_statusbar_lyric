.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final MIUI_SHADOW_V2_COLOR:I = 0x60000000

.field public static final MIUI_SHADOW_V2_DISPERSION:F = 1.0f

.field public static final MIUI_SHADOW_V2_OFFSET_X:F = 0.0f

.field public static final MIUI_SHADOW_V2_OFFSET_Y:F = 50.0f

.field public static final MIUI_SHADOW_V2_RADIUS:F = 70.0f

.field public static final MIUI_SHADOW_V2_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String; = "MiuiMultiWinShadowHelper"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "persist.sys.mi_shadow_supported"

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->MIUI_SHADOW_V2_SUPPORTED:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-result-object v0

    .line 6
    invoke-static {v0, p2, p3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 7
    move-result-object p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    const/4 p3, 0x1

    .line 13
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 14
    invoke-virtual {p2, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    move-object p1, p0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :catch_1
    :cond_0
    :goto_0
    return-object p1
    .line 27
.end method

.method public static getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0

    .line 12
    :catch_1
    move-exception p0

    .line 13
    throw p0
    .line 14
.end method

.method public static isSupportMiuiShadow()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->MIUI_SHADOW_V2_SUPPORTED:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    const-class v2, Landroid/view/SurfaceControl;

    .line 8
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 12
    move-object v4, v7

    .line 14
    move-object v5, v7

    .line 15
    move-object v6, v7

    .line 16
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Landroid/view/SurfaceControl$Transaction;

    .line 21
    const-string/jumbo v3, "setMiShadow"

    .line 23
    invoke-static {v2, v3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x1

    .line 32
    return v0

    .line 33
    :catch_0
    :cond_1
    return v1
    .line 34
.end method

.method public static resetShadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .locals 10

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->isSupportMiuiShadow()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    new-instance v9, Landroid/graphics/RectF;

    .line 22
    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 24
    move-object v1, p0

    .line 27
    move-object v2, p1

    .line 28
    move v8, p2

    .line 29
    invoke-static/range {v1 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->setShadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;)V

    .line 30
    :cond_1
    :goto_0
    return-void
    .line 33
.end method

.method public static setCoverLayerShadow(Landroid/content/Context;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
    .locals 10

    .line 1
    if-eqz p0, :cond_1

    .line 2
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->isSupportMiuiShadow()Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    const/high16 v3, 0x60000000

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 22
    move-result v0

    .line 25
    int-to-float v4, v0

    .line 26
    const/16 v0, 0x32

    .line 27
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 29
    move-result v0

    .line 32
    int-to-float v5, v0

    .line 33
    const/16 v0, 0x46

    .line 34
    invoke-static {p0, v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->dpToPx(Landroid/content/Context;I)I

    .line 36
    move-result p0

    .line 39
    int-to-float v6, p0

    .line 40
    const/high16 v7, 0x3f800000    # 1.0f

    .line 41
    new-instance v9, Landroid/graphics/RectF;

    .line 43
    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 45
    move-object v1, p1

    .line 48
    move-object v2, p2

    .line 49
    move v8, p3

    .line 50
    invoke-static/range {v1 .. v9}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->setShadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;)V

    .line 51
    :cond_1
    :goto_0
    return-void
    .line 54
.end method

.method public static setShadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->isSupportMiuiShadow()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-class v1, Landroid/view/SurfaceControl;

    .line 8
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 12
    const-class v8, Landroid/graphics/RectF;

    .line 14
    move-object v3, v7

    .line 16
    move-object v4, v7

    .line 17
    move-object v5, v7

    .line 18
    move-object v6, v7

    .line 19
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 27
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object v3

    .line 31
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object v4

    .line 35
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object v5

    .line 39
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    move-result-object v6

    .line 43
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    move-result-object v7

    .line 47
    move-object v1, p1

    .line 48
    move-object/from16 v8, p8

    .line 49
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 54
    const-class v2, Landroid/view/SurfaceControl$Transaction;

    .line 55
    const-string/jumbo v3, "setMiShadow"

    .line 57
    move-object v4, p0

    .line 60
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinShadowHelper;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void
    .line 64
.end method
