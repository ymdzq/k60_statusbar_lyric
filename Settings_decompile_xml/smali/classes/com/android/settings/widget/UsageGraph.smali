.class public Lcom/android/settings/widget/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field private mAccentColor:I

.field private final mCornerRadius:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerSize:I

.field private final mDottedPaint:Landroid/graphics/Paint;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Landroid/util/SparseIntArray;

.field private final mLocalProjectedPaths:Landroid/util/SparseIntArray;

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private mMiddleDividerTint:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPaths:Landroid/util/SparseIntArray;

.field private final mProjectedPaths:Landroid/util/SparseIntArray;

.field private final mTintedDivider:Landroid/graphics/drawable/Drawable;

.field private mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    .line 59
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    .line 61
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    .line 64
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    .line 66
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 71
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    .line 72
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    const/high16 p2, 0x3f000000    # 0.5f

    .line 74
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    .line 76
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    .line 83
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    sget v2, Lcom/android/settings/R$dimen;->usage_graph_line_corner_radius:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/UsageGraph;->mCornerRadius:I

    .line 88
    new-instance v3, Landroid/graphics/CornerPathEffect;

    int-to-float v2, v2

    invoke-direct {v3, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 89
    sget v2, Lcom/android/settings/R$dimen;->usage_graph_line_width:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    .line 92
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    .line 95
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    sget v0, Lcom/android/settings/R$dimen;->usage_graph_dot_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 97
    sget v3, Lcom/android/settings/R$dimen;->usage_graph_dot_interval:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    .line 98
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v3, v5, v1

    const/4 v0, 0x0

    invoke-direct {v4, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 100
    sget v0, Lcom/android/settings/R$color;->usage_graph_dots:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010214    # @android:attr/listDivider

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const v0, 0x1080014    # @android:drawable/divider_horizontal_dark

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object p1, p0, Lcom/android/settings/widget/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    .line 110
    sget p1, Lcom/android/settings/R$dimen;->usage_graph_divider_size:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    return-void
.end method

.method private addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 150
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    const-string p0, "UsageGraph"

    const-string p1, "addPathAndUpdate"

    .line 156
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private calculateLocalPaths()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    .line 327
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    iget p0, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    add-int/2addr p0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 5

    .line 276
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v1, v0

    .line 281
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 282
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 283
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 285
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object v4, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 292
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getColor(IF)I
    .locals 0

    .line 0
    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p2, p0

    float-to-int p0, p2

    shl-int/lit8 p0, p0, 0x18

    const p2, 0xffffff

    or-int/2addr p0, p2

    and-int/2addr p0, p1

    return p0
.end method

.method private getX(F)I
    .locals 1

    .line 229
    iget v0, p0, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    div-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getY(F)I
    .locals 1

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private hasDiff(II)Z
    .locals 0

    sub-int/2addr p2, p1

    .line 225
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/android/settings/widget/UsageGraph;->mCornerRadius:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateGradient()V
    .locals 10

    .line 237
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/android/settings/widget/UsageGraph;->mAccentColor:I

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v1, v6}, Lcom/android/settings/widget/UsageGraph;->getColor(IF)I

    move-result v6

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 237
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 11

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 191
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 192
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 193
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v2, :cond_3

    if-ne v4, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    .line 196
    invoke-direct {p0, v8}, Lcom/android/settings/widget/UsageGraph;->getX(F)I

    move-result v8

    sub-int/2addr v8, v10

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/widget/UsageGraph;->getY(F)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v4, v8, :cond_2

    if-eqz v5, :cond_2

    .line 201
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v5, v6, 0x1

    .line 204
    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_3
    int-to-float v5, v8

    .line 206
    invoke-direct {p0, v5}, Lcom/android/settings/widget/UsageGraph;->getX(F)I

    move-result v6

    int-to-float v5, v9

    .line 207
    invoke-direct {p0, v5}, Lcom/android/settings/widget/UsageGraph;->getY(F)I

    move-result v7

    .line 209
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 210
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 211
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-eq v8, v2, :cond_4

    .line 212
    invoke-direct {p0, v5, v6}, Lcom/android/settings/widget/UsageGraph;->hasDiff(II)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, v8, v7}, Lcom/android/settings/widget/UsageGraph;->hasDiff(II)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v10

    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    move v5, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "UsageGraph"

    const-string p1, "calculateLocalPaths"

    .line 221
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method clearPaths()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 117
    iget-object p0, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 6

    .line 297
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    .line 302
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v2, v0

    .line 303
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 304
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 305
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 307
    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 308
    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    add-int/lit8 v2, v2, 0x1

    .line 310
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 311
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    .line 312
    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 315
    :cond_1
    iget-object v5, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    .line 318
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    iget v2, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 251
    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    invoke-direct {p0, v2, p1, v4}, Lcom/android/settings/widget/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    .line 253
    invoke-direct {p0, v2, p1, v4}, Lcom/android/settings/widget/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v4

    const/4 v4, -0x1

    invoke-direct {p0, v2, p1, v4}, Lcom/android/settings/widget/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 259
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 263
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 266
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 269
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "UsageGraph"

    const-string/jumbo p1, "onDraw"

    .line 272
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->updateGradient()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths()V

    const-string p0, "UsageGraph"

    const-string/jumbo p1, "onSizeChanged"

    .line 172
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method setAccentColor(I)V
    .locals 1

    .line 160
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mAccentColor:I

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->updateGradient()V

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method setDividerColors(II)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    .line 135
    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    return-void
.end method

.method setDividerLoc(I)V
    .locals 1

    int-to-float p1, p1

    .line 130
    iget v0, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    return-void
.end method

.method setMax(II)V
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-float p1, p1

    .line 122
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    int-to-float p1, p2

    .line 123
    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    .line 124
    invoke-direct {p0}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths()V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    const-string p0, "UsageGraph"

    const-string/jumbo p1, "setMax"

    .line 126
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
