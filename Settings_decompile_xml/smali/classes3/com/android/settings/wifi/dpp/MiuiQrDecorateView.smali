.class public Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;
.super Landroid/view/View;
.source "MiuiQrDecorateView.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderThickness:F

.field private final mCornerColor:I

.field private mCornerLength:F

.field private mCornerPaint:Landroid/graphics/Paint;

.field private mCornerThickness:F

.field private mFocused:Z

.field private final mFocusedCornerColor:I

.field private mGuideLinePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mInnerBottom:F

.field private mInnerFrame:Landroid/graphics/RectF;

.field private mInnerLeft:F

.field private final mInnerRidus:F

.field private mInnerRight:F

.field private mInnerTop:F

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mOuterFrame:Landroid/graphics/RectF;

.field private final mRadius:F

.field private final mStrokePaint:Landroid/graphics/Paint;

.field private final mTransparentPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mWidth:I

    .line 59
    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mHeight:I

    const/4 p2, 0x0

    .line 89
    iput-boolean p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mFocused:Z

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 p4, 0x41800000    # 16.0f

    .line 90
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mRadius:F

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x41700000    # 15.0f

    .line 93
    invoke-static {p3, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerRidus:F

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$color;->qr_code_corner_line_color:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerColor:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$color;->qr_code_focused_corner_line_color:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mFocusedCornerColor:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->qr_code_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBackgroundColor:I

    .line 100
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mTransparentPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x106000d    # @android:color/transparent

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->dpp_corner_thickness:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerThickness:F

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$dimen;->dpp_border_thickness:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBorderThickness:F

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$dimen;->dpp_corner_length:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    .line 112
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    .line 113
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->qr_scanner_corner:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBorderPaint:Landroid/graphics/Paint;

    .line 118
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBorderPaint:Landroid/graphics/Paint;

    iget p3, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBorderThickness:F

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->qr_scanner_border:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mGuideLinePaint:Landroid/graphics/Paint;

    .line 123
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mGuideLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$dimen;->dpp_guideline_thickness:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mGuideLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->qr_scanner_guide_line:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private calculateFramePos()V
    .locals 7

    .line 160
    iget v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    .line 161
    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x43840000    # 264.0f

    .line 162
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 164
    invoke-static {v3, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 167
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v5, v0, v2

    int-to-float v1, v1

    sub-float v6, v1, v2

    add-float/2addr v0, v2

    add-float/2addr v1, v2

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    .line 169
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v3

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerFrame:Landroid/graphics/RectF;

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerLeft:F

    .line 173
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    iput v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerTop:F

    .line 174
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerRight:F

    .line 175
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerBottom:F

    return-void
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    .line 190
    iget v1, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerLeft:F

    .line 191
    iget v2, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerTop:F

    .line 192
    iget v3, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerRight:F

    .line 193
    iget v4, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerBottom:F

    .line 195
    iget v5, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerThickness:F

    iget v6, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBorderThickness:F

    sub-float v7, v5, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    sub-float v6, v1, v7

    sub-float v14, v2, v5

    .line 199
    iget v8, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    add-float v12, v2, v8

    iget-object v13, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v6

    move v10, v14

    move v11, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v21, v1, v5

    sub-float v22, v2, v7

    .line 201
    iget v8, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    add-float v18, v1, v8

    iget-object v8, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v19, v22

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v26, v3, v7

    .line 203
    iget v8, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    add-float v12, v2, v8

    iget-object v13, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move/from16 v9, v26

    move/from16 v11, v26

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v2, v3, v5

    .line 205
    iget v8, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    sub-float v11, v3, v8

    iget-object v13, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v2

    move/from16 v10, v22

    move/from16 v12, v22

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v25, v4, v5

    .line 207
    iget v5, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    sub-float v12, v4, v5

    iget-object v13, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move v9, v6

    move/from16 v10, v25

    move v11, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v5, v4, v7

    .line 209
    iget v6, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    add-float v18, v1, v6

    iget-object v1, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move/from16 v17, v5

    move/from16 v19, v5

    move-object/from16 v20, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 211
    iget v1, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    sub-float v27, v4, v1

    iget-object v1, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move-object/from16 v23, p1

    move/from16 v24, v26

    move-object/from16 v28, v1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget v1, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerLength:F

    sub-float v18, v3, v1

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerPaint:Landroid/graphics/Paint;

    move/from16 v16, v2

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mFocused:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mFocusedCornerColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mCornerColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mOuterFrame:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mRadius:F

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mInnerFrame:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mTransparentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->drawCorners(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 133
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mWidth:I

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mHeight:I

    .line 137
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->calculateFramePos()V

    .line 138
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mMaskCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiQrDecorateView;->mFocused:Z

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
