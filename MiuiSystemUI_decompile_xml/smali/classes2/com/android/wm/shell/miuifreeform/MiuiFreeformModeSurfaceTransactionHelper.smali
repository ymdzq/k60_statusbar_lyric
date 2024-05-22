.class public Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFreeformModeSurfaceTransactionHelper"


# instance fields
.field private mTipsColors:[F

.field private mTipsColorsAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_0

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColors:[F

    .line 11
    const v0, 0x3f4ccccd    # 0.8f

    .line 13
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColorsAlpha:F

    .line 16
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x3d978d50    # 0.074f
        0x3d978d50    # 0.074f
        0x3d978d50    # 0.074f
    .end array-data
    .line 20
.end method


# virtual methods
.method public defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->deferAnimation(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3
    return-object p0
    .line 6
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 5
.end method

.method public loadColors(Landroid/content/Context;)V
    .locals 3

    .line 1
    const v0, 0x7f060130    # @color/freeform_corner_tip_color '#cc808080'

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 5
    move-result p1

    .line 8
    shr-int/lit8 v0, p1, 0x18

    .line 9
    and-int/lit16 v0, v0, 0xff

    .line 11
    int-to-float v0, v0

    .line 13
    const/high16 v1, 0x437f0000    # 255.0f

    .line 14
    div-float/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColorsAlpha:F

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColors:[F

    .line 19
    shr-int/lit8 v0, p1, 0x10

    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 23
    int-to-float v0, v0

    .line 25
    div-float/2addr v0, v1

    .line 26
    const/4 v2, 0x0

    .line 27
    aput v0, p0, v2

    .line 28
    shr-int/lit8 v0, p1, 0x8

    .line 30
    and-int/lit16 v0, v0, 0xff

    .line 32
    int-to-float v0, v0

    .line 34
    div-float/2addr v0, v1

    .line 35
    const/4 v2, 0x1

    .line 36
    aput v0, p0, v2

    .line 37
    and-int/lit16 p1, p1, 0xff

    .line 39
    int-to-float p1, p1

    .line 41
    div-float/2addr p1, v1

    .line 42
    const/4 v0, 0x2

    .line 43
    aput p1, p0, v0

    .line 44
    return-void
    .line 46
.end method

.method public setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 5
.end method

.method public setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 5
.end method

.method public setLeftBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 8

    .line 1
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColors:[F

    .line 2
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColorsAlpha:F

    .line 4
    mul-float v4, p4, v0

    .line 6
    move-object v0, p1

    .line 8
    move-object v1, p2

    .line 9
    move v2, p3

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    move v7, p7

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/view/SurfaceControl$Transaction;->setLeftBottomCornerTip(Landroid/view/SurfaceControl;F[FFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 14
    return-object p0
    .line 17
.end method

.method public setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 5
.end method

.method public setRightBottomCornerTip(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FFFFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 8

    .line 1
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColors:[F

    .line 2
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->mTipsColorsAlpha:F

    .line 4
    mul-float v4, p4, v0

    .line 6
    move-object v0, p1

    .line 8
    move-object v1, p2

    .line 9
    move v2, p3

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    move v7, p7

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/view/SurfaceControl$Transaction;->setRightBottomCornerTip(Landroid/view/SurfaceControl;F[FFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 14
    return-object p0
    .line 17
.end method

.method public setScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    move-object v0, p1

    .line 4
    move-object v1, p2

    .line 5
    move v2, p3

    .line 6
    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 8
    return-object p0
    .line 11
.end method

.method public setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    move-object v0, p1

    .line 4
    move-object v1, p2

    .line 5
    move v2, p3

    .line 6
    move v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 8
    return-object p0
    .line 11
.end method

.method public setShadowAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FZLandroid/content/Context;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 13

    .line 1
    move-object/from16 v0, p5

    .line 2
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadowV2()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    const/high16 v1, 0x437f0000    # 255.0f

    .line 11
    mul-float v1, v1, p3

    .line 13
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 15
    move-result v1

    .line 18
    shl-int/lit8 v4, v1, 0x18

    .line 19
    if-eqz p4, :cond_0

    .line 21
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 23
    move-result v5

    .line 26
    const/high16 v1, 0x41c80000    # 25.0f

    .line 27
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 29
    move-result v6

    .line 32
    const/high16 v1, 0x42a00000    # 80.0f

    .line 33
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 35
    move-result v7

    .line 38
    const/high16 v8, 0x3f800000    # 1.0f

    .line 39
    const/4 v10, 0x0

    .line 41
    move-object v3, p2

    .line 42
    move-object v9, p1

    .line 43
    invoke-static/range {v3 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->setMiShadow(Landroid/view/SurfaceControl;IFFFFLandroid/view/SurfaceControl$Transaction;Z)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v0, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 48
    move-result v5

    .line 51
    const/high16 v1, 0x42200000    # 40.0f

    .line 52
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 54
    move-result v6

    .line 57
    const/high16 v1, 0x42700000    # 60.0f

    .line 58
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->applyDip2Px(Landroid/content/Context;F)F

    .line 60
    move-result v7

    .line 63
    const/high16 v8, 0x3f800000    # 1.0f

    .line 64
    const/4 v10, 0x0

    .line 66
    move-object v3, p2

    .line 67
    move-object v9, p1

    .line 68
    invoke-static/range {v3 .. v10}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeShadowHelper;->setMiShadow(Landroid/view/SurfaceControl;IFFFFLandroid/view/SurfaceControl$Transaction;Z)V

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->isSupportMiuiShadow()Z

    .line 73
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x4

    .line 79
    new-array v5, v0, [F

    .line 80
    const/4 v0, 0x0

    .line 82
    aput v2, v5, v0

    .line 83
    const/4 v1, 0x1

    .line 85
    aput v2, v5, v1

    .line 86
    const/4 v3, 0x2

    .line 88
    aput v2, v5, v3

    .line 89
    const/4 v2, 0x3

    .line 91
    aput p3, v5, v2

    .line 92
    const-class v6, Landroid/view/SurfaceControl;

    .line 94
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 96
    const-class v8, [F

    .line 98
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 100
    move-object v7, v11

    .line 102
    move-object v9, v11

    .line 103
    move-object v10, v11

    .line 104
    filled-new-array/range {v6 .. v12}, [Ljava/lang/Class;

    .line 105
    move-result-object v2

    .line 108
    const/high16 v3, 0x43c80000    # 400.0f

    .line 109
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 111
    move-result-object v4

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v6

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v7

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v8

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v9

    .line 130
    move-object v3, p2

    .line 131
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 135
    const-class v1, Landroid/view/SurfaceControl$Transaction;

    .line 136
    const-string/jumbo v3, "setShadowSettings"

    .line 138
    move-object v4, p1

    .line 141
    invoke-static {p1, v1, v3, v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2
    :goto_0
    return-object p0
    .line 145
.end method

.method public setStrokeThickness(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/view/SurfaceControl$Transaction;->setSurfaceStroke(Landroid/view/SurfaceControl;[FFF)Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 5
.end method

.method public setSurfaceRotation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;[F[F[FFF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 7

    .line 1
    const-class v0, Landroid/view/SurfaceControl;

    .line 2
    const-class v1, [F

    .line 4
    const-class v2, [F

    .line 6
    const-class v3, [F

    .line 8
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 10
    move-object v4, v5

    .line 12
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    .line 13
    move-result-object v0

    .line 16
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    move-result-object v5

    .line 20
    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 21
    move-result-object v6

    .line 24
    move-object v1, p2

    .line 25
    move-object v2, p3

    .line 26
    move-object v3, p4

    .line 27
    move-object v4, p5

    .line 28
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 32
    const-class p3, Landroid/view/SurfaceControl$Transaction;

    .line 33
    const-string/jumbo p4, "setSurfaceRotation"

    .line 35
    invoke-static {p1, p3, p4, v0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object p0
    .line 41
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public show(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2
    return-object p0
    .line 5
.end method
