.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final MIUI_FREEFORM_AMBIENT_COLOR:[F

.field public static final MIUI_FREEFORM_RESET_COLOR:[F

.field public static final MIUI_FREEFORM_SHADOW_RADIUS:F = 400.0f

.field public static final MIUI_FREEFORM_SHADOW_V2_ALPHA:F = 0.375f

.field public static final MIUI_FREEFORM_SHADOW_V2_ALPHA_PHONE:F = 0.35f

.field public static final MIUI_FREEFORM_SHADOW_V2_COLOR:I = 0x60000000

.field public static final MIUI_FREEFORM_SHADOW_V2_COLOR_PHONE:I = 0x59000000

.field public static final MIUI_FREEFORM_SHADOW_V2_DISPERSION:F = 1.0f

.field public static final MIUI_FREEFORM_SHADOW_V2_OFFSET_X:F = 0.0f

.field public static final MIUI_FREEFORM_SHADOW_V2_OFFSET_Y:F = 40.0f

.field public static final MIUI_FREEFORM_SHADOW_V2_RADIUS:F = 120.0f

.field public static final MIUI_SMALL_FREEFORM_SHADOW_V2_ALPHA:F = 0.41f

.field public static final MIUI_SMALL_FREEFORM_SHADOW_V2_COLOR:I = 0x69000000

.field public static final MIUI_SMALL_FREEFORM_SHADOW_V2_DISPERSION:F = 1.0f

.field public static final MIUI_SMALL_FREEFORM_SHADOW_V2_OFFSET_X:F = 0.0f

.field public static final MIUI_SMALL_FREEFORM_SHADOW_V2_OFFSET_Y:F = 120.0f

.field public static final MIUI_SMALL_FREEFORM_SHADOW_V2_RADIUS:F = 200.0f

.field private static final TAG:Ljava/lang/String; = "MiuiFreeFormShadowHelper"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    .line 5
    sput-object v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_RESET_COLOR:[F

    .line 8
    new-array v0, v0, [F

    .line 10
    fill-array-data v0, :array_1

    .line 12
    sput-object v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 15
    return-void

    .line 17
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 18
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3ecccccd    # 0.4f
    .end array-data
    .line 30
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMiShadow(Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 15
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    move-result v1

    const-string v2, "MiuiFreeFormShadowHelper"

    if-nez v1, :cond_0

    const-string v0, "MiuiShadowV2 not supported."

    .line 16
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v0, :cond_4

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p8, :cond_2

    .line 18
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v9, v1

    goto :goto_0

    :cond_2
    move-object/from16 v9, p8

    .line 19
    :goto_0
    const-class v10, Landroid/view/SurfaceControl;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v18, Landroid/graphics/RectF;

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    filled-new-array/range {v10 .. v18}, [Ljava/lang/Class;

    move-result-object v10

    .line 20
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 21
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 22
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 23
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 24
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 25
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 26
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object/from16 v8, p7

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 27
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    const-string/jumbo v2, "setMiShadow"

    invoke-static {v9, v1, v2, v10, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p9, :cond_3

    .line 28
    invoke-virtual {v9}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3
    return-void

    .line 29
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "invalid SurfaceControl = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMiShadow(Landroid/view/SurfaceControl;IFFFFLandroid/view/SurfaceControl$Transaction;Z)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    move-result v0

    const-string v1, "MiuiFreeFormShadowHelper"

    if-nez v0, :cond_0

    const-string p0, "MiuiShadowV2 not supported."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p6, :cond_2

    .line 4
    new-instance p6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p6}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 5
    :cond_2
    const-class v0, Landroid/view/SurfaceControl;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 8
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 9
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 10
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 11
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, p0

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 12
    const-class p1, Landroid/view/SurfaceControl$Transaction;

    const-string/jumbo p2, "setMiShadow"

    invoke-static {p6, p1, p2, v0, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p7, :cond_3

    .line 13
    invoke-virtual {p6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3
    return-void

    .line 14
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid SurfaceControl = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMiuiFreeformShadowV2(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/content/Context;)V
    .locals 11

    .line 1
    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 10
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 18
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 37
    move-result-object v0

    .line 40
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 41
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPadScreen(Landroid/content/Context;)Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    const/high16 v0, 0x60000000

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    const/high16 v0, 0x59000000

    .line 56
    :goto_0
    move v2, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 60
    move-result v3

    .line 63
    const/high16 v0, 0x42200000    # 40.0f

    .line 64
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 66
    move-result v4

    .line 69
    const/high16 v0, 0x42f00000    # 120.0f

    .line 70
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 72
    move-result v5

    .line 75
    const/high16 v6, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 78
    move-result p0

    .line 81
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 82
    move-result v7

    .line 85
    new-instance v8, Landroid/graphics/RectF;

    .line 86
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 88
    const/4 v9, 0x0

    .line 91
    const/4 v10, 0x1

    .line 92
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->setMiShadow(Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 93
    :cond_2
    :goto_1
    return-void
    .line 96
.end method

.method public static setMiuiSmallFreeformShadowV2(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/content/Context;)V
    .locals 11

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 10
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 18
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 37
    move-result-object v0

    .line 40
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 41
    const/high16 v2, 0x69000000

    .line 43
    const/4 v0, 0x0

    .line 45
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 46
    move-result v3

    .line 49
    const/high16 v0, 0x42f00000    # 120.0f

    .line 50
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 52
    move-result v4

    .line 55
    const/high16 v0, 0x43480000    # 200.0f

    .line 56
    invoke-static {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 58
    move-result v5

    .line 61
    const/high16 v6, 0x3f800000    # 1.0f

    .line 62
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 64
    move-result p0

    .line 67
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 68
    move-result v7

    .line 71
    new-instance v8, Landroid/graphics/RectF;

    .line 72
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 74
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x1

    .line 78
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->setMiShadow(Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 79
    :cond_1
    :goto_0
    return-void
    .line 82
.end method

.method public static unsetMiuiFreeformShadowV2(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Landroid/content/Context;)V
    .locals 11

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 10
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 18
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 37
    move-result-object v0

    .line 40
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 41
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getCornerRadius()F

    .line 48
    move-result p0

    .line 51
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 52
    move-result v7

    .line 55
    new-instance v8, Landroid/graphics/RectF;

    .line 56
    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 58
    const/4 v9, 0x0

    .line 61
    const/4 v10, 0x1

    .line 62
    invoke-static/range {v1 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->setMiShadow(Landroid/view/SurfaceControl;IFFFFFLandroid/graphics/RectF;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public resetMiuiFreeformShadow(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 10
    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 18
    move-result-object p0

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 24
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setHasSetShadow(Z)V

    .line 32
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadow()Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 41
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 43
    const-class v1, Landroid/view/SurfaceControl;

    .line 46
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 48
    const-class v3, [F

    .line 50
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 52
    move-object v2, v6

    .line 54
    move-object v4, v6

    .line 55
    move-object v5, v6

    .line 56
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 61
    move-result-object p1

    .line 64
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 65
    const/4 p1, 0x0

    .line 67
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 68
    move-result-object v3

    .line 71
    sget-object v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_RESET_COLOR:[F

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v5

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v6

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v7

    .line 85
    const/4 p0, 0x1

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v8

    .line 90
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 94
    const-class p1, Landroid/view/SurfaceControl$Transaction;

    .line 95
    const-string/jumbo v2, "setShadowSettings"

    .line 97
    invoke-static {v0, p1, v2, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 103
    :cond_1
    :goto_0
    return-void
    .line 106
.end method

.method public setMiuiFreeformShadow(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 10
    move-result-object p0

    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 14
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 18
    move-result-object p0

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 24
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->hasSetShadow()Z

    .line 31
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    const/4 p0, 0x1

    .line 37
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setHasSetShadow(Z)V

    .line 38
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadow()Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 47
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 49
    const-class v1, Landroid/view/SurfaceControl;

    .line 52
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 54
    const-class v3, [F

    .line 56
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 58
    move-object v2, v6

    .line 60
    move-object v4, v6

    .line 61
    move-object v5, v6

    .line 62
    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    .line 63
    move-result-object v1

    .line 66
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 67
    move-result-object p1

    .line 70
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 71
    const/high16 p1, 0x43c80000    # 400.0f

    .line 73
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    move-result-object v3

    .line 78
    sget-object v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->MIUI_FREEFORM_AMBIENT_COLOR:[F

    .line 79
    const/4 p1, 0x0

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v5

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v6

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v7

    .line 93
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v8

    .line 97
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    const-class p1, Landroid/view/SurfaceControl$Transaction;

    .line 102
    const-string/jumbo v2, "setShadowSettings"

    .line 104
    invoke-static {v0, p1, v2, v1, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 110
    :cond_1
    :goto_0
    return-void
    .line 113
.end method
