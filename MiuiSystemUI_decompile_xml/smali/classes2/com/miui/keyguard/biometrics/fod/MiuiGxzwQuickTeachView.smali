.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCicleRadius:F

.field public final mItemRadius:F

.field public final mPaint:Landroid/graphics/Paint;

.field public mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mItemRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 14
    const v0, 0x7f0703b7    # @dimen/gxzw_quick_open_circle_radius '103.0dp'

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mCicleRadius:F

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 29
    const/4 p0, 0x1

    .line 31
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 35
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    const/high16 p0, 0x40000000    # 2.0f

    .line 40
    mul-float/2addr p2, p0

    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    return-void
    .line 46
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 7
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 17
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Float;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 25
    move-result v1

    .line 28
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mCicleRadius:F

    .line 29
    const/high16 v3, 0x40000000    # 2.0f

    .line 31
    mul-float v4, v2, v3

    .line 33
    cmpl-float v4, v1, v4

    .line 35
    if-lez v4, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    cmpl-float v4, v1, v2

    .line 40
    const/4 v5, 0x0

    .line 42
    if-lez v4, :cond_1

    .line 43
    move v1, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    cmpg-float v2, v1, v5

    .line 47
    if-gez v2, :cond_2

    .line 49
    move v1, v5

    .line 51
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 52
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 54
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    .line 59
    iget v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mItemRadius:F

    .line 61
    add-float v6, v1, v4

    .line 63
    mul-float/2addr v3, v4

    .line 65
    iget v7, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mCicleRadius:F

    .line 66
    add-float/2addr v7, v4

    .line 68
    invoke-direct {v2, v5, v6, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 69
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 72
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 74
    move-result v9

    .line 77
    iget v10, v2, Landroid/graphics/RectF;->top:F

    .line 78
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 80
    move-result v11

    .line 83
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 84
    iget v5, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mItemRadius:F

    .line 86
    add-float v12, v4, v5

    .line 88
    const v13, -0xca6801

    .line 90
    const v14, 0x3597ff

    .line 93
    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 96
    move-object v8, v3

    .line 98
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 99
    iget-object v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 104
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 107
    move-result v6

    .line 110
    iget v7, v2, Landroid/graphics/RectF;->top:F

    .line 111
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 113
    move-result v8

    .line 116
    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    .line 117
    iget-object v10, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 119
    move-object/from16 v5, p1

    .line 121
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 126
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 132
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 134
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 139
    const v3, -0xca6801

    .line 141
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mItemRadius:F

    .line 147
    add-float/2addr v1, v2

    .line 149
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mPaint:Landroid/graphics/Paint;

    .line 150
    move-object/from16 v3, p1

    .line 152
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    :cond_3
    return-void
    .line 157
.end method
