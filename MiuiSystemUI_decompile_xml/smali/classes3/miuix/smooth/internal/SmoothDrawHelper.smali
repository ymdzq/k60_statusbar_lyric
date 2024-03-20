.class public final Lmiuix/smooth/internal/SmoothDrawHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mClipPaint:Landroid/graphics/Paint;

.field public mClipPath:Landroid/graphics/Path;

.field public final mLayer:Landroid/graphics/RectF;

.field public mOutterPath:Landroid/graphics/Path;

.field public final mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

.field public mRadii:[F

.field public mRadius:F

.field public mStrokeColor:I

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 6
    iput v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 13
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 20
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 23
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    new-instance v0, Landroid/graphics/Path;

    .line 30
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 35
    new-instance v0, Landroid/graphics/Path;

    .line 37
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 39
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 42
    new-instance v0, Lmiuix/smooth/SmoothPathProvider2;

    .line 44
    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2;-><init>()V

    .line 46
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    .line 51
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    iput-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    .line 56
    return-void
    .line 58
.end method


# virtual methods
.method public final drawMask(Landroid/graphics/Canvas;Landroid/graphics/Xfermode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 7
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    const/4 p0, 0x0

    .line 12
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 13
    return-void
    .line 16
.end method

.method public final drawStroke(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 2
    iget-object v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 30
    int-to-float v0, v0

    .line 32
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 36
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 41
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    :cond_1
    return-void
    .line 49
.end method

.method public final getSmoothPath(Landroid/graphics/Rect;)Landroid/graphics/Path;
    .locals 9

    .line 1
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget v0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 29
    int-to-float v0, v0

    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    div-float/2addr v0, v2

    .line 34
    add-float/2addr v1, v0

    .line 35
    :cond_1
    move v8, v1

    .line 36
    new-instance v3, Landroid/graphics/Path;

    .line 37
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 39
    new-instance v4, Landroid/graphics/RectF;

    .line 42
    invoke-direct {v4, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 44
    iget-object v5, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 47
    iget v6, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 49
    move-object v2, p0

    .line 51
    move v7, v8

    .line 52
    invoke-virtual/range {v2 .. v8}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method

.method public final getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;
    .locals 15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v8, p0

    .line 1
    iget-object v8, v8, Lmiuix/smooth/internal/SmoothDrawHelper;->mPathProvider:Lmiuix/smooth/SmoothPathProvider2;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    new-array v1, v1, [F

    aput p4, v1, v7

    aput p4, v1, v6

    aput p4, v1, v5

    aput p4, v1, v4

    const/4 v9, 0x4

    aput p4, v1, v9

    const/4 v9, 0x5

    aput p4, v1, v9

    const/4 v9, 0x6

    aput p4, v1, v9

    const/4 v9, 0x7

    aput p4, v1, v9

    .line 3
    invoke-static {v0, v1, v2, v3}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    .line 6
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p1

    .line 7
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    if-nez v0, :cond_2

    goto/16 :goto_5

    .line 8
    :cond_2
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-eqz v2, :cond_4

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v6

    :goto_3
    const/4 v8, 0x0

    if-eqz v3, :cond_5

    .line 9
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget v0, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    invoke-direct {v2, v8, v8, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_5

    .line 10
    :cond_5
    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_6

    .line 11
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    iget-wide v11, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    add-double/2addr v11, v9

    .line 12
    invoke-static {v11, v12}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v9

    double-to-float v2, v9

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v9, v9, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 13
    invoke-virtual {v1, v3, v2, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_4

    .line 14
    :cond_6
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v7

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    :goto_4
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    const-wide/16 v11, 0x0

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_7

    .line 16
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v10, v2, v5

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v9

    move/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 17
    :cond_7
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v9, v9, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v13, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    const v10, 0x3eeb851f    # 0.46f

    move p0, v2

    move/from16 p1, v3

    move/from16 p2, v9

    move-wide/from16 p3, v13

    move/from16 p5, v10

    invoke-static/range {p0 .. p5}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_8

    .line 18
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v7

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    :cond_8
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_9

    .line 20
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v10, v2, v5

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v9

    move/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 21
    :cond_9
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_a

    .line 22
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v9, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-wide v13, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    add-double/2addr v13, v9

    .line 23
    invoke-static {v13, v14}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v9

    double-to-float v2, v9

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v9, v9, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 24
    invoke-virtual {v1, v3, v2, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 25
    :cond_a
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_b

    .line 26
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v10, v2, v5

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v9

    move/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 27
    :cond_b
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v9, v9, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v13, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    const v10, 0x3eeb851f    # 0.46f

    move p0, v2

    move/from16 p1, v3

    move/from16 p2, v9

    move-wide/from16 p3, v13

    move/from16 p5, v10

    invoke-static/range {p0 .. p5}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_c

    .line 28
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v7

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    :cond_c
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_d

    .line 30
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v10, v2, v5

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v9

    move/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 31
    :cond_d
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_e

    .line 32
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    .line 33
    invoke-static {v9, v10}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v9

    double-to-float v2, v9

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v9, v9, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 34
    invoke-virtual {v1, v3, v2, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 35
    :cond_e
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_f

    .line 36
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v10, v2, v5

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v9

    move/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 37
    :cond_f
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v9, v9, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v13, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    const v10, 0x3eeb851f    # 0.46f

    move p0, v2

    move/from16 p1, v3

    move/from16 p2, v9

    move-wide/from16 p3, v13

    move/from16 p5, v10

    invoke-static/range {p0 .. p5}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_10

    .line 38
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v7

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    :cond_10
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v9, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    cmpl-double v3, v9, v11

    if-eqz v3, :cond_11

    .line 40
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v9, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v10, v2, v5

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v14, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v9

    move/from16 p2, v3

    move/from16 p3, v13

    move/from16 p4, v10

    move/from16 p5, v14

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 41
    :cond_11
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_12

    .line 42
    iget-object v3, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v13, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    add-double/2addr v13, v8

    .line 43
    invoke-static {v13, v14}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v8

    double-to-float v2, v8

    iget-object v8, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v8, v8, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    .line 44
    invoke-virtual {v1, v3, v2, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 45
    :cond_12
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v8, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v3, v8, v11

    if-eqz v3, :cond_13

    .line 46
    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    aget-object v9, v2, v5

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aget-object v2, v2, v4

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v8

    move/from16 p2, v3

    move/from16 p3, v10

    move/from16 p4, v9

    move/from16 p5, v13

    move/from16 p6, v2

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 47
    :cond_13
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v8, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v8, v8, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v9, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    const v13, 0x3eeb851f    # 0.46f

    move p0, v2

    move/from16 p1, v3

    move/from16 p2, v8

    move-wide/from16 p3, v9

    move/from16 p5, v13

    invoke-static/range {p0 .. p5}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_14

    .line 48
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v7

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    :cond_14
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v11

    if-eqz v2, :cond_15

    .line 50
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v0, v6

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v5

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v0, v0, v4

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move-object p0, v1

    move/from16 p1, v3

    move/from16 p2, v2

    move/from16 p3, v6

    move/from16 p4, v5

    move/from16 p5, v4

    move/from16 p6, v0

    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 51
    :cond_15
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :goto_5
    return-object v1
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v7, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mLayer:Landroid/graphics/RectF;

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x3f000000    # 0.5f

    .line 7
    sub-float/2addr v0, v1

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 10
    int-to-float v2, v2

    .line 12
    sub-float/2addr v2, v1

    .line 13
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 14
    int-to-float v3, v3

    .line 16
    add-float/2addr v3, v1

    .line 17
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 18
    int-to-float p1, p1

    .line 20
    add-float/2addr p1, v1

    .line 21
    invoke-virtual {v7, v0, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 25
    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokePaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeColor:I

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    if-eqz p1, :cond_1

    .line 48
    iget p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mStrokeWidth:I

    .line 50
    int-to-float p1, p1

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    .line 53
    div-float/2addr p1, v0

    .line 55
    add-float/2addr p1, v1

    .line 56
    move v6, p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v6, v1

    .line 59
    :goto_1
    iget-object v1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 60
    iget-object v3, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadii:[F

    .line 62
    iget v4, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mRadius:F

    .line 64
    move-object v0, p0

    .line 66
    move-object v2, v7

    .line 67
    move v5, v6

    .line 68
    invoke-virtual/range {v0 .. v6}, Lmiuix/smooth/internal/SmoothDrawHelper;->getSmoothPathFromProvider(Landroid/graphics/Path;Landroid/graphics/RectF;[FFFF)Landroid/graphics/Path;

    .line 69
    move-result-object p1

    .line 72
    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 73
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 75
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 79
    goto :goto_2

    .line 82
    :cond_2
    new-instance p1, Landroid/graphics/Path;

    .line 83
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 85
    iput-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 88
    :goto_2
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 90
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 92
    invoke-virtual {p1, v7, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 94
    iget-object p1, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mClipPath:Landroid/graphics/Path;

    .line 97
    iget-object p0, p0, Lmiuix/smooth/internal/SmoothDrawHelper;->mOutterPath:Landroid/graphics/Path;

    .line 99
    sget-object v0, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 101
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 103
    return-void
    .line 106
.end method
