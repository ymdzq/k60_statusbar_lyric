.class public Lcom/android/settings/EqualizerView;
.super Landroid/view/View;
.source "EqualizerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EqualizerView$Biquad;,
        Lcom/android/settings/EqualizerView$Complex;
    }
.end annotation


# static fields
.field public static MAX_FREQ:I = 0x4e20

.field public static MIN_FREQ:I = 0x14

.field public static SAMPLING_RATE:I = 0xac44

.field public static SCALE:I = 0x1


# instance fields
.field private final mCurveColor:I

.field private final mCurvePaint:Landroid/graphics/Paint;

.field private final mCurveShadowColor:I

.field private final mCurveShadowRadius:F

.field private mHeight:I

.field private final mLevels:[F

.field private mMaxRank:I

.field private mMinRank:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    .line 31
    iput-object v0, p0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    .line 35
    iput v0, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v1, 0x0

    const v2, 0xffae00

    if-eqz p2, :cond_0

    .line 44
    sget-object v3, Lcom/android/settings/R$styleable;->EqualizerView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 45
    sget p2, Lcom/android/settings/R$styleable;->EqualizerView_curve_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/EqualizerView;->mCurveColor:I

    .line 46
    sget p2, Lcom/android/settings/R$styleable;->EqualizerView_curve_shadow_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    .line 47
    sget p2, Lcom/android/settings/R$styleable;->EqualizerView_curve_shadow_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 50
    :cond_0
    iput v2, p0, Lcom/android/settings/EqualizerView;->mCurveColor:I

    .line 51
    iput v0, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    .line 52
    iput v1, p0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    .line 55
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    .line 56
    iget p0, p0, Lcom/android/settings/EqualizerView;->mCurveColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object p0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p0, 0x1

    .line 59
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private lin2dB(F)F
    .locals 2

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    float-to-double p0, p1

    .line 204
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    mul-double/2addr p0, v0

    double-to-float p0, p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x3d3a0000    # -99.0f

    :goto_0
    return p0
.end method

.method private projectX(F)F
    .locals 4

    float-to-double p0, p1

    .line 185
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    .line 186
    sget v0, Lcom/android/settings/EqualizerView;->MIN_FREQ:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 187
    sget v2, Lcom/android/settings/EqualizerView;->MAX_FREQ:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr p0, v0

    sub-double/2addr v2, v0

    div-double/2addr p0, v2

    double-to-float p0, p0

    return p0
.end method

.method private projectY(F)F
    .locals 2

    .line 193
    iget v0, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    iget p0, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    sub-int v1, v0, p0

    if-gtz v1, :cond_0

    const-string p0, "EqualizerView"

    const-string/jumbo p1, "rank is unint"

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float v1, p0

    sub-float/2addr p1, v1

    sub-int/2addr v0, p0

    int-to-float p0, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    return p0
.end method

.method private setPanitAlpha(F)V
    .locals 2

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    iget v0, p0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    if-eqz v0, :cond_2

    .line 180
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    mul-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1, p1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxLevel()I
    .locals 1

    .line 326
    iget p0, p0, Lcom/android/settings/EqualizerView;->mMaxRank:I

    sget v0, Lcom/android/settings/EqualizerView;->SCALE:I

    mul-int/2addr p0, v0

    return p0
.end method

.method public getMinLevel()I
    .locals 1

    .line 330
    iget p0, p0, Lcom/android/settings/EqualizerView;->mMinRank:I

    sget v0, Lcom/android/settings/EqualizerView;->SCALE:I

    mul-int/2addr p0, v0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    .line 103
    new-instance v1, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v1}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    new-instance v2, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v2}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    new-instance v3, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v3}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    new-instance v4, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v4}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    new-instance v5, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v5}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    new-instance v6, Lcom/android/settings/EqualizerView$Biquad;

    invoke-direct {v6}, Lcom/android/settings/EqualizerView$Biquad;-><init>()V

    filled-new-array/range {v1 .. v6}, [Lcom/android/settings/EqualizerView$Biquad;

    move-result-object v1

    .line 116
    iget-object v2, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v2, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 117
    aget-object v4, v1, v3

    sget v5, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v7, 0x1

    aget v8, v6, v7

    aget v6, v6, v3

    sub-float/2addr v8, v6

    const/high16 v6, 0x42960000    # 75.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v5, v8, v9}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 118
    aget-object v4, v1, v7

    sget v5, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v8, 0x2

    aget v10, v6, v8

    aget v6, v6, v7

    sub-float/2addr v10, v6

    const/high16 v6, 0x432f0000    # 175.0f

    invoke-virtual {v4, v6, v5, v10, v9}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 119
    aget-object v4, v1, v8

    sget v5, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v10, 0x3

    aget v11, v6, v10

    aget v6, v6, v8

    sub-float/2addr v11, v6

    const/high16 v6, 0x43af0000    # 350.0f

    invoke-virtual {v4, v6, v5, v11, v9}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 120
    aget-object v4, v1, v10

    sget v5, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v11, 0x4

    aget v12, v6, v11

    aget v6, v6, v10

    sub-float/2addr v12, v6

    const/high16 v6, 0x44610000    # 900.0f

    invoke-virtual {v4, v6, v5, v12, v9}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 121
    aget-object v4, v1, v11

    sget v5, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v12, 0x5

    aget v13, v6, v12

    aget v6, v6, v11

    sub-float/2addr v13, v6

    const v6, 0x44dac000    # 1750.0f

    invoke-virtual {v4, v6, v5, v13, v9}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 122
    aget-object v4, v1, v12

    sget v5, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/EqualizerView;->mLevels:[F

    const/4 v13, 0x6

    aget v13, v6, v13

    aget v6, v6, v12

    sub-float/2addr v13, v6

    const v6, 0x455ac000    # 3500.0f

    invoke-virtual {v4, v6, v5, v13, v9}, Lcom/android/settings/EqualizerView$Biquad;->setHighShelf(FFFF)V

    .line 128
    sget v4, Lcom/android/settings/EqualizerView;->MIN_FREQ:I

    int-to-float v4, v4

    const v5, 0x3f933333    # 1.15f

    div-float/2addr v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    move v13, v6

    const/4 v14, 0x0

    :goto_0
    sget v15, Lcom/android/settings/EqualizerView;->MAX_FREQ:I

    int-to-float v15, v15

    mul-float/2addr v15, v5

    cmpg-float v15, v4, v15

    if-gez v15, :cond_4

    .line 129
    sget v15, Lcom/android/settings/EqualizerView;->SAMPLING_RATE:I

    int-to-float v15, v15

    div-float v15, v4, v15

    const v16, 0x40490fdb    # (float)Math.PI

    mul-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v15, v15, v16

    .line 130
    new-instance v5, Lcom/android/settings/EqualizerView$Complex;

    move/from16 v18, v13

    float-to-double v12, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v10, v12

    invoke-direct {v5, v9, v10}, Lcom/android/settings/EqualizerView$Complex;-><init>(FF)V

    .line 133
    invoke-virtual {v5, v2}, Lcom/android/settings/EqualizerView$Complex;->mul(F)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v9

    .line 134
    aget-object v10, v1, v3

    invoke-virtual {v10, v5}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v10

    .line 135
    aget-object v12, v1, v7

    invoke-virtual {v12, v5}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v12

    .line 136
    aget-object v13, v1, v8

    invoke-virtual {v13, v5}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v13

    const/4 v15, 0x3

    .line 137
    aget-object v3, v1, v15

    invoke-virtual {v3, v5}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v3

    .line 138
    aget-object v7, v1, v11

    invoke-virtual {v7, v5}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v7

    const/16 v17, 0x5

    .line 139
    aget-object v8, v1, v17

    invoke-virtual {v8, v5}, Lcom/android/settings/EqualizerView$Biquad;->evaluateTransfer(Lcom/android/settings/EqualizerView$Complex;)Lcom/android/settings/EqualizerView$Complex;

    move-result-object v5

    .line 142
    invoke-virtual {v9}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v8

    invoke-virtual {v10}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v12}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v13}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v3}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v3

    mul-float/2addr v8, v3

    invoke-virtual {v7}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v3

    mul-float/2addr v8, v3

    invoke-virtual {v5}, Lcom/android/settings/EqualizerView$Complex;->rho()F

    move-result v3

    mul-float/2addr v8, v3

    invoke-direct {v0, v8}, Lcom/android/settings/EqualizerView;->lin2dB(F)F

    move-result v3

    .line 143
    invoke-direct {v0, v3}, Lcom/android/settings/EqualizerView;->projectY(F)F

    move-result v3

    iget v5, v0, Lcom/android/settings/EqualizerView;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    .line 144
    invoke-direct {v0, v4}, Lcom/android/settings/EqualizerView;->projectX(F)F

    move-result v5

    iget v7, v0, Lcom/android/settings/EqualizerView;->mWidth:I

    int-to-float v8, v7

    mul-float/2addr v5, v8

    cmpl-float v8, v18, v6

    if-eqz v8, :cond_3

    .line 146
    div-int/lit8 v8, v7, 0x5

    int-to-float v8, v8

    cmpg-float v9, v18, v8

    if-gez v9, :cond_1

    div-float v13, v18, v8

    .line 148
    invoke-direct {v0, v13}, Lcom/android/settings/EqualizerView;->setPanitAlpha(F)V

    :cond_0
    :goto_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_1
    int-to-float v7, v7

    sub-float v7, v7, v18

    cmpl-float v9, v8, v7

    if-lez v9, :cond_2

    div-float/2addr v7, v8

    .line 152
    invoke-direct {v0, v7}, Lcom/android/settings/EqualizerView;->setPanitAlpha(F)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v7, v0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget v7, v0, Lcom/android/settings/EqualizerView;->mCurveShadowColor:I

    if-eqz v7, :cond_0

    .line 156
    iget-object v8, v0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/android/settings/EqualizerView;->mCurveShadowRadius:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v10, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 161
    :goto_2
    iget v7, v0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v8, v7

    add-float v20, v8, v18

    iget v8, v0, Landroid/view/View;->mPaddingTop:I

    int-to-float v9, v8

    add-float v21, v9, v14

    int-to-float v7, v7

    add-float v22, v7, v5

    int-to-float v7, v8

    add-float v23, v7, v3

    iget-object v7, v0, Lcom/android/settings/EqualizerView;->mCurvePaint:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v7

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    const v7, 0x3f933333    # 1.15f

    mul-float/2addr v4, v7

    move v14, v3

    move v13, v5

    move v5, v7

    move v10, v15

    move/from16 v12, v17

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 79
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 80
    iget p1, p0, Landroid/view/View;->mPaddingLeft:I

    iget p2, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr p1, p2

    sub-int/2addr p4, p1

    iput p4, p0, Lcom/android/settings/EqualizerView;->mWidth:I

    sub-int/2addr p5, p3

    .line 81
    iget p1, p0, Landroid/view/View;->mPaddingTop:I

    iget p2, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr p1, p2

    sub-int/2addr p5, p1

    iput p5, p0, Lcom/android/settings/EqualizerView;->mHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setBands([F)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/EqualizerView;->setBands([FI)V

    return-void
.end method

.method public setBands([FI)V
    .locals 4

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/android/settings/EqualizerView;->mLevels:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int v2, p2, v0

    .line 95
    aget v2, p1, v2

    sget v3, Lcom/android/settings/EqualizerView;->SCALE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
