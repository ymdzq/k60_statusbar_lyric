.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final APPLICATION_LOCK_NAME:Ljava/lang/String; = "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

.field public static final AUTO_LAYOUT_BASELINE_RATIO:F = 0.138f

.field public static final AUTO_LAYOUT_FREEFORM_EXPAND:I = 0xa

.field public static final AUTO_LAYOUT_FREEFORM_GAP:I = 0x14

.field public static final CORNER_LIMIT:I = 0x1e

.field public static final CORNER_STEP:I = 0x1e

.field public static final DEBUG:Z = false

.field public static final FF_NO_UI_PREFIX:Ljava/lang/String; = "FF_NoUI/"

.field public static final FF_UI_PREFIX:Ljava/lang/String; = "FF_UI/"

.field public static final FREEFORM_ACTION_CLOSE:Ljava/lang/String; = "FREEFORM_ACTION_CLOSE"

.field public static final FREEFORM_ACTION_ELUDE:Ljava/lang/String; = "FREEFORM_ACTION_ELUDE"

.field public static final FREEFORM_ACTION_ENTER_FULL_SCREEN:Ljava/lang/String; = "FREEFORM_ACTION_ENTER_FULL_SCREEN"

.field public static final FREEFORM_ACTION_MOVE:Ljava/lang/String; = "FREEFORM_ACTION_MOVE"

.field public static final FREEFORM_ACTION_RESIZE:Ljava/lang/String; = "FREEFORM_ACTION_RESIZE"

.field public static final FREEFORM_ACTION_SHOW:Ljava/lang/String; = "FREEFORM_ACTION_SHOW"

.field public static final FREEFORM_HOTSPOT_LEFT_BOTTOM:I = 0x3

.field public static final FREEFORM_HOTSPOT_LEFT_TOP:I = 0x1

.field public static final FREEFORM_HOTSPOT_NONE:I = -0x1

.field public static final FREEFORM_HOTSPOT_RIGHT_BOTTOM:I = 0x4

.field public static final FREEFORM_HOTSPOT_RIGHT_TOP:I = 0x2

.field public static final FREEFORM_HOTSPOT_TOP_CENTER:I = 0x5

.field public static final FREEFORM_ROUND_CORNER_DIP:F = 25.8f

.field public static final HOT_SPACE_BOTTOM_OFFSITE_PAD:I

.field public static final MIUI_FREEFORM_SHADOW_RADIUS:F = 400.0f

.field public static final MIUI_FREEFORM_SHADOW_V2_SUPPORTED:Z

.field public static final MULTI_TASK_TYPE_FREE_FORM:Ljava/lang/String; = "MULTI_TASK_TYPE_FREE_FORM"

.field public static final OFFSET_LIMIT:I = 0x1e

.field public static final OFFSET_STEP:I = 0x14

.field public static final PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

.field public static final PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

.field public static final PAD_SMALL_FREEFORM_ROUND_CORNER_DIP:F = 7.1f

.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeUtils"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 12
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    sput v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN:I

    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    move-result-object v0

    .line 26
    const/high16 v2, 0x429c0000    # 78.0f

    .line 27
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    sput v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->PAD_FREEFORM_ACCESSIBLE_AREA_BOTTOM_MARGIN_DESKTOP:I

    .line 34
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    move-result-object v0

    .line 43
    const/high16 v2, 0x41600000    # 14.0f

    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 46
    move-result v0

    .line 49
    float-to-int v0, v0

    .line 50
    sput v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->HOT_SPACE_BOTTOM_OFFSITE_PAD:I

    .line 51
    const-string v0, "persist.sys.mi_shadow_supported"

    .line 53
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    move-result v0

    .line 58
    sput-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->MIUI_FREEFORM_SHADOW_V2_SUPPORTED:Z

    .line 59
    return-void
    .line 61
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterFriction(FF)F
    .locals 3

    .line 1
    div-float/2addr p0, p1

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 5
    move-result p0

    .line 8
    const/high16 v0, 0x41500000    # 13.0f

    .line 9
    mul-float/2addr v0, p0

    .line 11
    mul-float v1, v0, p0

    .line 12
    mul-float/2addr p0, v1

    .line 14
    const/high16 v2, 0x42960000    # 75.0f

    .line 15
    div-float/2addr p0, v2

    .line 17
    const/high16 v2, 0x41c80000    # 25.0f

    .line 18
    div-float/2addr v1, v2

    .line 20
    sub-float/2addr p0, v1

    .line 21
    div-float/2addr v0, v2

    .line 22
    add-float/2addr v0, p0

    .line 23
    mul-float/2addr v0, p1

    .line 24
    return v0
    .line 25
.end method

.method public static afterFrictionValue(FF)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-gtz v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    cmpl-float v1, p0, v0

    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    if-ltz v1, :cond_1

    .line 12
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    .line 16
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 18
    move-result p0

    .line 21
    div-float/2addr p0, p1

    .line 22
    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result p0

    .line 26
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result p0

    .line 30
    mul-float v0, p0, p0

    .line 31
    mul-float v2, v0, p0

    .line 33
    const/high16 v3, 0x40400000    # 3.0f

    .line 35
    div-float/2addr v2, v3

    .line 37
    sub-float/2addr v2, v0

    .line 38
    add-float/2addr v2, p0

    .line 39
    mul-float/2addr v2, v1

    .line 40
    mul-float/2addr v2, p1

    .line 41
    return v2
    .line 42
.end method

.method public static applyDip2Px(Landroid/content/Context;F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    return-object v0
    .line 7
.end method

.method private static calPredict(FFF)F
    .locals 1

    .line 1
    neg-float p1, p1

    .line 2
    const v0, -0x3f79999a    # -4.2f

    .line 3
    mul-float/2addr p2, v0

    .line 6
    div-float/2addr p1, p2

    .line 7
    add-float/2addr p1, p0

    .line 8
    return p1
    .line 9
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
    invoke-static {v0, p2, p3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

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

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    move-result v1

    .line 20
    if-lez v1, :cond_3

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v1

    .line 26
    if-lez v1, :cond_3

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 33
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 37
    move-result v2

    .line 40
    const/4 v3, -0x1

    .line 41
    if-eq v2, v3, :cond_2

    .line 42
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 47
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 49
    move-result-object v0

    .line 52
    new-instance v1, Landroid/graphics/Canvas;

    .line 53
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 58
    move-result v2

    .line 61
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 62
    move-result v3

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    :cond_3
    return-object v0
    .line 73
.end method

.method public static frictionPer(FF)F
    .locals 1

    .line 1
    cmpg-float v0, p1, p0

    .line 2
    if-gtz v0, :cond_0

    .line 4
    return p1

    .line 6
    :cond_0
    sub-float/2addr p1, p0

    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->afterFrictionValue(FF)F

    .line 10
    move-result p1

    .line 13
    add-float/2addr p1, p0

    .line 14
    return p1
    .line 15
.end method

.method public static getActivityIcon(Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 6
    move-result-object v1

    .line 9
    const-wide/16 v2, 0x80

    .line 10
    invoke-interface {v1, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :catch_0
    return-object v0
    .line 21
.end method

.method private static getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 3
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo p1, "user "

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p1, "icon not load!"

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    const-string p1, "MiuiFreeformModeUtils"

    .line 28
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public static getClipRect(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;FF)Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 8
    move-result v1

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    int-to-float v1, v1

    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    div-float/2addr p1, v2

    .line 17
    sub-float/2addr v1, p1

    .line 18
    const/high16 v3, 0x3f000000    # 0.5f

    .line 19
    add-float/2addr v1, v3

    .line 21
    float-to-int v1, v1

    .line 22
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 27
    move-result v4

    .line 30
    div-int/lit8 v4, v4, 0x2

    .line 31
    int-to-float v4, v4

    .line 33
    div-float/2addr p2, v2

    .line 34
    sub-float/2addr v4, p2

    .line 35
    add-float/2addr v4, v3

    .line 36
    float-to-int v2, v4

    .line 37
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 38
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 42
    move-result v4

    .line 45
    div-int/lit8 v4, v4, 0x2

    .line 46
    int-to-float v4, v4

    .line 48
    add-float/2addr v4, p1

    .line 49
    add-float/2addr v4, v3

    .line 50
    float-to-int p1, v4

    .line 51
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 56
    move-result p0

    .line 59
    div-int/lit8 p0, p0, 0x2

    .line 60
    int-to-float p0, p0

    .line 62
    add-float/2addr p0, p2

    .line 63
    add-float/2addr p0, v3

    .line 64
    float-to-int p0, p0

    .line 65
    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    return-object v0
    .line 69
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

.method public static getPredictXY(FFFFF)[F
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p2, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->calPredict(FFF)F

    .line 6
    move-result p0

    .line 9
    aput p0, v0, v1

    .line 10
    const/4 p0, 0x1

    .line 12
    invoke-static {p1, p3, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->calPredict(FFF)F

    .line 13
    move-result p1

    .line 16
    aput p1, v0, p0

    .line 17
    return-object v0
    .line 19
.end method

.method public static getPredictY(FFFFI)F
    .locals 3

    .line 1
    sub-float/2addr p2, p0

    .line 2
    sub-float v0, p3, p1

    .line 3
    const/4 v1, 0x0

    .line 5
    cmpl-float v2, p2, v1

    .line 6
    if-lez v2, :cond_0

    .line 8
    int-to-float p3, p4

    .line 10
    sub-float/2addr p3, p0

    .line 11
    div-float/2addr v0, p2

    .line 12
    mul-float/2addr v0, p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    cmpg-float p4, p2, v1

    .line 15
    if-gez p4, :cond_1

    .line 17
    sub-float/2addr v1, p0

    .line 19
    div-float/2addr v0, p2

    .line 20
    mul-float/2addr v0, v1

    .line 21
    :goto_0
    add-float p3, v0, p1

    .line 22
    :cond_1
    return p3
    .line 24
.end method

.method public static getRawAppIcon(Landroid/content/Context;Ljava/lang/String;IZLandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_7

    .line 11
    if-nez p0, :cond_0

    .line 13
    goto :goto_2

    .line 15
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    if-eqz p2, :cond_1

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getAppInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 25
    move-result-object v0

    .line 28
    :cond_1
    if-eqz v0, :cond_3

    .line 29
    iget p1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 31
    if-nez p1, :cond_2

    .line 33
    invoke-static {p0, p2, p4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getActivityIcon(Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    move-object p1, v1

    .line 45
    :goto_0
    if-nez p1, :cond_4

    .line 46
    const-string p0, "MiuiFreeformModeUtils"

    .line 48
    const-string p2, "getAppIcon failed, cause iconDrawable is null!"

    .line 50
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object p1

    .line 55
    :cond_4
    new-instance p4, Landroid/os/UserHandle;

    .line 56
    invoke-direct {p4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 58
    if-eqz p3, :cond_5

    .line 61
    invoke-virtual {p0, p1, p4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 63
    move-result-object v1

    .line 66
    :cond_5
    if-nez v1, :cond_6

    .line 67
    goto :goto_1

    .line 69
    :cond_6
    move-object p1, v1

    .line 70
    :goto_1
    return-object p1

    .line 71
    :cond_7
    :goto_2
    return-object v1
    .line 72
.end method

.method public static getRunningTaskPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 6
    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->mBehindAppLockPkg:Ljava/lang/String;

    .line 8
    if-eqz v1, :cond_1

    .line 10
    if-eqz v2, :cond_1

    .line 12
    const-string v2, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    .line 14
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->mBehindAppLockPkg:Ljava/lang/String;

    .line 26
    return-object p0

    .line 28
    :cond_1
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 29
    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 38
    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 47
    if-eqz p0, :cond_4

    .line 49
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_4
    return-object v0
    .line 56
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez p2, :cond_0

    .line 9
    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 15
    new-array p2, v2, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    array-length v4, p2

    .line 25
    new-array v4, v4, [Ljava/lang/Class;

    .line 26
    :goto_0
    array-length v5, p2

    .line 28
    if-ge v2, v5, :cond_4

    .line 29
    aget-object v5, p2, v2

    .line 31
    instance-of v6, v5, Ljava/lang/Integer;

    .line 33
    if-eqz v6, :cond_1

    .line 35
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    aput-object v5, v4, v2

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 42
    if-eqz v6, :cond_2

    .line 44
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 46
    aput-object v5, v4, v2

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    instance-of v6, v5, Ljava/lang/Float;

    .line 51
    if-eqz v6, :cond_3

    .line 53
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 55
    aput-object v5, v4, v2

    .line 57
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v5

    .line 63
    aput-object v5, v4, v2

    .line 64
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v1, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    move-result-object p1

    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-object p0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    const-string p2, "getDeclaredMethod:"

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    const-string p1, "MiuiFreeformModeUtils"

    .line 100
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v0
    .line 105
.end method

.method private static isFullscreenNavBar(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, "force_fsg_nav_bar"

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
    .line 16
.end method

.method public static isInFullScreenNavHotArea(Landroid/content/Context;FFII)Z
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isFullscreenNavBar(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isInFullScreenNavHotArea(Landroid/content/Context;FFIIZ)Z

    move-result p0

    return p0
.end method

.method public static isInFullScreenNavHotArea(Landroid/content/Context;FFIIZ)Z
    .locals 7

    .line 3
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getScreenType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    if-nez p5, :cond_1

    return v0

    .line 4
    :cond_1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    int-to-float v2, p3

    const v3, 0x3f570a3d    # 0.84f

    mul-float/2addr v3, v2

    const/high16 v4, 0x420c0000    # 35.0f

    .line 6
    invoke-static {v1, v4, p5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p5

    sub-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v6, p4

    sub-float p5, v6, p5

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 7
    invoke-virtual {p0, v4, p5, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p5

    if-eqz p5, :cond_2

    const-string p5, "is inFullScreenNavHotArea displayWidth:"

    const-string v0, " displayHeight:"

    const-string v2, " x:"

    .line 9
    invoke-static {p5, p3, v0, p4, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " y:"

    const-string p5, " homeHandleHotArea:"

    .line 10
    invoke-static {p3, p1, p4, p2, p5}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    .line 11
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiFreeformModeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0
.end method

.method public static isOrientationLandscape(I)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    const/4 v0, 0x6

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/16 v0, 0x8

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/16 v0, 0xb

    .line 11
    if-ne p0, v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
    .line 19
.end method

.method public static isOrientationPortrait(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    const/4 v1, 0x7

    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    const/16 v1, 0x9

    .line 8
    if-eq p0, v1, :cond_1

    .line 10
    const/16 v1, 0xc

    .line 12
    if-ne p0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :cond_1
    :goto_0
    return v0
    .line 18
.end method

.method public static isSupportMiuiShadow()Z
    .locals 7

    .line 1
    const-class v0, Landroid/view/SurfaceControl;

    .line 2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 4
    const-class v2, [F

    .line 6
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 8
    move-object v1, v5

    .line 10
    move-object v3, v5

    .line 11
    move-object v4, v5

    .line 12
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 16
    :try_start_0
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    .line 17
    const-string/jumbo v2, "setShadowSettings"

    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
    .line 31
.end method

.method public static isSupportMiuiShadowV2()Z
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->MIUI_FREEFORM_SHADOW_V2_SUPPORTED:Z

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
    invoke-static {v2, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

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

.method public static loadDimensionPixelSize(Landroid/content/res/Resources;I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static perFromValue(FFF)F
    .locals 1

    .line 1
    cmpl-float v0, p2, p1

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sub-float/2addr p0, p1

    .line 8
    sub-float/2addr p2, p1

    .line 9
    div-float/2addr p0, p2

    .line 10
    return p0
    .line 11
.end method

.method public static scaleBounds(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-object p0
.end method

.method public static scaleBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2

    .line 5
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 6
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->scale(F)V

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object p0
.end method

.method public static shouldIgnoreRequestOrientation(I)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    const/16 v0, 0xd

    .line 5
    if-eq p0, v0, :cond_1

    .line 7
    const/16 v0, 0xa

    .line 9
    if-eq p0, v0, :cond_1

    .line 11
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    const/4 v0, -0x2

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    const/16 v0, 0xe

    .line 22
    if-ne p0, v0, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
    .line 30
.end method

.method public static showingStatusBar(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 19
    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 23
    move-result-object p0

    .line 26
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 27
    invoke-virtual {v0, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 32
    xor-int/lit8 p0, p0, 0x1

    .line 33
    return p0
    .line 35
.end method

.method public static valueFromPer(FFF)F
    .locals 0

    .line 1
    invoke-static {p2, p1, p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
