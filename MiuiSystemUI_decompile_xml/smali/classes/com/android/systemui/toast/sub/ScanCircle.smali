.class public Lcom/android/systemui/toast/sub/ScanCircle;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAngle:F

.field public mColor:[I

.field public final mMax:F

.field public final mPaintArc:[Landroid/graphics/Paint;

.field public mRectFProgress:Landroid/graphics/RectF;

.field public mRingRadius:F

.field public mRingStrokeWidth:F

.field public final mScanAngle:F

.field public mScanAnimator:Landroid/animation/ValueAnimator;

.field public mTarget:F

.field public mXC:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/toast/sub/ScanCircle;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/toast/sub/ScanCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/toast/sub/ScanCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xa

    new-array p3, p2, [Landroid/graphics/Paint;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    const/high16 p3, 0x42c80000    # 100.0f

    .line 5
    iput p3, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    iput p3, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    .line 7
    const-class p3, Landroid/view/WindowManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 8
    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const p3, 0x3d0d4fdf    # 0.0345f

    mul-float/2addr p3, p1

    .line 9
    iput p3, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mRingRadius:F

    const p3, 0x3bfaacda    # 0.00765f

    mul-float/2addr p1, p3

    .line 10
    iput p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mRingStrokeWidth:F

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 12
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    new-array p1, p2, [I

    const-string p2, "#FFFFFFFF"

    .line 13
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    aput p2, p1, p3

    const-string p2, "#E6FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    const-string p2, "#CCFFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    aput p2, p1, v1

    const-string p2, "#B3FFFFFF"

    .line 14
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x3

    aput p2, p1, v1

    const-string p2, "#99FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x4

    aput p2, p1, v1

    const-string p2, "#80FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x5

    aput p2, p1, v1

    const-string p2, "#66FFFFFF"

    .line 15
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x6

    aput p2, p1, v1

    const-string p2, "#4DFFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x7

    aput p2, p1, v1

    const-string p2, "#33FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0x8

    aput p2, p1, v1

    const-string p2, "#1AFFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0x9

    aput p2, p1, v1

    iput-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mColor:[I

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    array-length p1, p1

    if-ge p3, p1, :cond_0

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object p2, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mColor:[I

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget p2, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mRingStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    iget-object p2, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aput-object p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 53

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mXC:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    .line 4
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mXC:I

    int-to-float v4, v4

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRingRadius:F

    sub-float/2addr v4, v5

    int-to-float v1, v1

    sub-float/2addr v1, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float v7, v4, v5

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v1, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    cmpg-float v4, v1, v3

    const/4 v5, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    if-gez v4, :cond_0

    .line 6
    iget-object v9, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v10, -0x3d4c0000    # -90.0f

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v2

    mul-float v11, v1, v7

    const/4 v12, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v13, v0, v5

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    cmpl-float v4, v1, v3

    const/4 v8, 0x1

    const/high16 v9, -0x3d4c0000    # -90.0f

    if-ltz v4, :cond_1

    mul-float v4, v3, v6

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 7
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v12, -0x3d4c0000    # -90.0f

    sub-float/2addr v1, v3

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v2

    mul-float v13, v1, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 8
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    mul-float v4, v3, v6

    cmpl-float v10, v1, v4

    const/high16 v11, 0x40400000    # 3.0f

    if-ltz v10, :cond_2

    mul-float v10, v3, v11

    cmpg-float v10, v1, v10

    if-gez v10, :cond_2

    .line 9
    iget-object v13, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v14, -0x3d4c0000    # -90.0f

    sub-float/2addr v1, v4

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v3

    mul-float v15, v1, v7

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v17, v1, v2

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 10
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v3

    sub-float/2addr v2, v6

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v20

    div-float/2addr v3, v4

    mul-float v21, v3, v7

    const/16 v22, 0x0

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v23, v2, v8

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 11
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v1, v2

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v0, v5

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    mul-float v10, v3, v11

    cmpl-float v12, v1, v10

    const/4 v13, 0x3

    const/high16 v14, 0x40800000    # 4.0f

    if-ltz v12, :cond_3

    mul-float v12, v3, v14

    cmpg-float v12, v1, v12

    if-gez v12, :cond_3

    .line 12
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v17, -0x3d4c0000    # -90.0f

    sub-float/2addr v1, v10

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v18, v1, v7

    const/16 v19, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v1, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 13
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v23

    div-float/2addr v4, v10

    mul-float v24, v4, v7

    const/16 v25, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v3, v2

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    mul-float v12, v3, v14

    cmpl-float v15, v1, v12

    const/16 v16, 0x4

    const/high16 v17, 0x40a00000    # 5.0f

    if-ltz v15, :cond_4

    mul-float v15, v3, v17

    cmpg-float v15, v1, v15

    if-gez v15, :cond_4

    .line 16
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v20, -0x3d4c0000    # -90.0f

    sub-float/2addr v1, v12

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v21, v1, v7

    const/16 v26, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v23, v1, v16

    move-object/from16 v18, p1

    move-object/from16 v19, v3

    move/from16 v22, v26

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 17
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v10

    mul-float v30, v4, v7

    const/16 v31, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v13

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 18
    iget-object v13, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v3

    sub-float/2addr v1, v11

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v14

    div-float/2addr v3, v4

    mul-float v15, v3, v7

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v17, v1, v2

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 19
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v3

    sub-float/2addr v2, v6

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v24

    div-float/2addr v3, v4

    mul-float v25, v3, v7

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v27, v2, v8

    move-object/from16 v22, p1

    move-object/from16 v23, v1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 20
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v1, v2

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v0, v5

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    mul-float v15, v3, v17

    cmpl-float v18, v1, v15

    const/16 v19, 0x5

    const/high16 v20, 0x40c00000    # 6.0f

    if-ltz v18, :cond_5

    mul-float v18, v3, v20

    cmpg-float v18, v1, v18

    if-gez v18, :cond_5

    .line 21
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v23, -0x3d4c0000    # -90.0f

    sub-float/2addr v1, v15

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v24, v1, v7

    const/16 v29, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v1, v19

    move-object/from16 v21, p1

    move-object/from16 v22, v3

    move/from16 v25, v29

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 22
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v32

    div-float/2addr v4, v10

    mul-float v33, v4, v7

    const/16 v34, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v35, v3, v16

    move-object/from16 v30, p1

    move-object/from16 v31, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 23
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v10

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 24
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v27

    div-float/2addr v4, v10

    mul-float v28, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v30, v3, v2

    move-object/from16 v25, p1

    move-object/from16 v26, v1

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 25
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 26
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    mul-float v18, v3, v20

    cmpl-float v21, v1, v18

    const/16 v22, 0x6

    const/high16 v23, 0x40e00000    # 7.0f

    if-ltz v21, :cond_6

    mul-float v21, v3, v23

    cmpg-float v21, v1, v21

    if-gez v21, :cond_6

    .line 27
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v26, -0x3d4c0000    # -90.0f

    sub-float v1, v1, v18

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v27, v1, v7

    const/16 v28, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v29, v1, v22

    move-object/from16 v24, p1

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v29}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 28
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v32

    div-float/2addr v4, v10

    mul-float v33, v4, v7

    const/16 v34, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v35, v3, v19

    move-object/from16 v30, p1

    move-object/from16 v31, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 29
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v20

    div-float/2addr v4, v10

    mul-float v21, v4, v7

    const/16 v26, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v23, v3, v16

    const/16 v22, 0x0

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 30
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v10

    mul-float v30, v4, v7

    const/16 v31, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v13

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 31
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v24

    div-float/2addr v4, v10

    mul-float v25, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v27, v3, v2

    move-object/from16 v22, p1

    move-object/from16 v23, v1

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 32
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 33
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_6
    mul-float v21, v3, v23

    cmpl-float v24, v1, v21

    const/16 v25, 0x7

    const/high16 v26, 0x41000000    # 8.0f

    if-ltz v24, :cond_7

    mul-float v24, v3, v26

    cmpg-float v24, v1, v24

    if-gez v24, :cond_7

    .line 34
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v29, -0x3d4c0000    # -90.0f

    sub-float v1, v1, v21

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v30, v1, v7

    const/16 v31, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v1, v25

    move-object/from16 v27, p1

    move-object/from16 v28, v3

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 35
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v4, v10

    mul-float v36, v4, v7

    const/16 v37, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v3, v22

    move-object/from16 v33, p1

    move-object/from16 v34, v1

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 36
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v23

    div-float/2addr v4, v10

    mul-float v24, v4, v7

    const/16 v29, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v3, v19

    const/16 v25, 0x0

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v32

    div-float/2addr v4, v10

    mul-float v33, v4, v7

    const/16 v34, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v35, v3, v16

    move-object/from16 v30, p1

    move-object/from16 v31, v1

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 38
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v10

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 39
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v27

    div-float/2addr v4, v10

    mul-float v28, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v30, v3, v2

    move-object/from16 v25, p1

    move-object/from16 v26, v1

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 40
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 41
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_7
    mul-float v24, v3, v26

    cmpl-float v27, v1, v24

    const/16 v28, 0x8

    const/high16 v29, 0x41100000    # 9.0f

    if-ltz v27, :cond_8

    mul-float v27, v3, v29

    cmpg-float v27, v1, v27

    if-gez v27, :cond_8

    .line 42
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v32, -0x3d4c0000    # -90.0f

    sub-float v1, v1, v24

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v33, v1, v7

    const/16 v34, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v35, v1, v28

    move-object/from16 v30, p1

    move-object/from16 v31, v3

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 43
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v4

    sub-float v3, v3, v26

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v38

    div-float/2addr v4, v10

    mul-float v39, v4, v7

    const/16 v40, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v41, v3, v25

    move-object/from16 v36, p1

    move-object/from16 v37, v1

    invoke-virtual/range {v36 .. v41}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 44
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v26

    div-float/2addr v4, v10

    mul-float v27, v4, v7

    const/16 v32, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v29, v3, v22

    const/16 v37, 0x0

    move-object/from16 v24, p1

    move-object/from16 v25, v1

    move/from16 v28, v37

    invoke-virtual/range {v24 .. v29}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 45
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v40

    div-float/2addr v4, v10

    mul-float v41, v4, v7

    const/16 v42, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v43, v3, v19

    move-object/from16 v38, p1

    move-object/from16 v39, v1

    invoke-virtual/range {v38 .. v43}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 46
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v20

    div-float/2addr v4, v10

    mul-float v21, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v23, v3, v16

    const/16 v22, 0x0

    move-object/from16 v18, p1

    move-object/from16 v19, v1

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 47
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v4, v10

    mul-float v36, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v3, v13

    move-object/from16 v33, p1

    move-object/from16 v34, v1

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v30

    div-float/2addr v4, v10

    mul-float v31, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v33, v3, v2

    move-object/from16 v28, p1

    move-object/from16 v29, v1

    invoke-virtual/range {v28 .. v33}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 49
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_8
    mul-float v27, v3, v29

    cmpl-float v30, v1, v27

    const/16 v31, 0x9

    const/high16 v32, 0x41200000    # 10.0f

    if-ltz v30, :cond_9

    mul-float v30, v3, v32

    cmpg-float v30, v1, v30

    if-gez v30, :cond_9

    .line 51
    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    const/high16 v35, -0x3d4c0000    # -90.0f

    sub-float v1, v1, v27

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    div-float/2addr v1, v4

    mul-float v36, v1, v7

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v3

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 52
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v4

    sub-float v3, v3, v29

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v41

    div-float/2addr v4, v10

    mul-float v42, v4, v7

    const/16 v43, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v44, v3, v28

    move-object/from16 v39, p1

    move-object/from16 v40, v1

    invoke-virtual/range {v39 .. v44}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 53
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v4

    sub-float v3, v3, v26

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v10

    mul-float v30, v4, v7

    const/16 v35, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v25

    const/16 v31, 0x0

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v38

    div-float/2addr v4, v10

    mul-float v39, v4, v7

    const/16 v27, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v41, v3, v22

    const/16 v40, 0x0

    move-object/from16 v36, p1

    move-object/from16 v37, v1

    invoke-virtual/range {v36 .. v41}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v23

    div-float/2addr v4, v10

    mul-float v24, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v3, v19

    const/16 v25, 0x0

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 56
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v25

    div-float/2addr v4, v10

    mul-float v26, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v28, v3, v16

    move-object/from16 v23, p1

    move-object/from16 v24, v1

    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 57
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v10

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 58
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v10, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v10, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v33

    div-float/2addr v4, v10

    mul-float v34, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v36, v3, v2

    move-object/from16 v31, p1

    move-object/from16 v32, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 59
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 60
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v4

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v0, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 61
    :cond_9
    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    cmpl-float v30, v1, v5

    if-lez v30, :cond_a

    add-float v30, v5, v3

    cmpg-float v30, v1, v30

    if-gtz v30, :cond_a

    .line 62
    iget-object v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v5

    mul-float v36, v3, v7

    const/16 v41, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    const/16 v37, 0x0

    move-object/from16 v33, p1

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v4

    sub-float v3, v3, v29

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v44

    div-float/2addr v4, v5

    mul-float v45, v4, v7

    const/16 v33, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v47, v3, v28

    const/16 v46, 0x0

    move-object/from16 v42, p1

    move-object/from16 v43, v1

    invoke-virtual/range {v42 .. v47}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 64
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v4

    sub-float v3, v3, v26

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v5

    mul-float v30, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v25

    const/16 v38, 0x0

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    move/from16 v31, v38

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 65
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v44

    div-float/2addr v4, v5

    mul-float v45, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v47, v3, v22

    move-object/from16 v43, v1

    invoke-virtual/range {v42 .. v47}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 66
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v36

    div-float/2addr v4, v5

    mul-float v37, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v39, v3, v19

    move-object/from16 v34, p1

    move-object/from16 v35, v1

    invoke-virtual/range {v34 .. v39}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 67
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v31

    div-float/2addr v4, v5

    mul-float v32, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v34, v3, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 68
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v5

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v39

    div-float/2addr v4, v5

    mul-float v40, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v42, v3, v2

    move-object/from16 v37, p1

    move-object/from16 v38, v1

    invoke-virtual/range {v37 .. v42}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 70
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 71
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float v4, v2, v3

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v4, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    sub-float/2addr v3, v2

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v7

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    const/4 v2, 0x0

    aget-object v6, v0, v2

    move-object/from16 v0, p1

    move v2, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_a
    add-float v30, v5, v3

    cmpl-float v30, v1, v30

    if-lez v30, :cond_b

    add-float v30, v4, v5

    cmpg-float v30, v1, v30

    if-gtz v30, :cond_b

    .line 72
    iget-object v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v5

    mul-float v36, v3, v7

    const/16 v41, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    const/16 v46, 0x0

    move-object/from16 v33, p1

    move-object/from16 v34, v4

    move/from16 v37, v46

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 73
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v4

    sub-float v3, v3, v29

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v49

    div-float/2addr v4, v5

    mul-float v50, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v52, v3, v28

    const/16 v51, 0x0

    move-object/from16 v47, p1

    move-object/from16 v48, v1

    invoke-virtual/range {v47 .. v52}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 74
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v4

    sub-float v3, v3, v26

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v5

    mul-float v30, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v25

    const/16 v31, 0x0

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 75
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v44

    div-float/2addr v4, v5

    mul-float v45, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v47, v3, v22

    move-object/from16 v42, p1

    move-object/from16 v43, v1

    invoke-virtual/range {v42 .. v47}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 76
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v23

    div-float/2addr v4, v5

    mul-float v24, v4, v7

    const/16 v25, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v3, v19

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v5

    mul-float v30, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v16

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v5

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v39

    div-float/2addr v4, v5

    mul-float v40, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v42, v3, v2

    move-object/from16 v37, p1

    move-object/from16 v38, v1

    invoke-virtual/range {v37 .. v42}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 80
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v2, v6

    sub-float v3, v1, v2

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v2, v1

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v0, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_b
    add-float/2addr v4, v5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_c

    add-float v4, v10, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_c

    .line 81
    iget-object v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v5

    mul-float v36, v3, v7

    const/16 v41, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v4

    move/from16 v37, v41

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 82
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v4

    sub-float v3, v3, v29

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v44

    div-float/2addr v4, v5

    mul-float v45, v4, v7

    const/16 v46, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v47, v3, v28

    move-object/from16 v42, p1

    move-object/from16 v43, v1

    invoke-virtual/range {v42 .. v47}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 83
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v4

    sub-float v3, v3, v26

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v5

    mul-float v30, v4, v7

    const/16 v35, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v25

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    move/from16 v31, v35

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 84
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v39

    div-float/2addr v4, v5

    mul-float v40, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v42, v3, v22

    move-object/from16 v37, p1

    move-object/from16 v38, v1

    invoke-virtual/range {v37 .. v42}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 85
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v23

    div-float/2addr v4, v5

    mul-float v24, v4, v7

    const/16 v29, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v3, v19

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    move/from16 v25, v29

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v33

    div-float/2addr v4, v5

    mul-float v34, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v36, v3, v16

    move-object/from16 v31, p1

    move-object/from16 v32, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 87
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v5

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 88
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v4, v11

    sub-float v5, v3, v4

    iget v6, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v5, v6, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v27

    sub-float/2addr v4, v3

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v4, v3

    mul-float v28, v4, v7

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v30, v0, v2

    move-object/from16 v25, p1

    move-object/from16 v26, v1

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_c
    add-float/2addr v10, v5

    cmpl-float v4, v1, v10

    if-lez v4, :cond_d

    add-float v4, v12, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_d

    .line 89
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v4

    mul-float v36, v3, v7

    const/16 v41, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    move/from16 v37, v41

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v3

    sub-float v2, v2, v29

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v44

    div-float/2addr v3, v4

    mul-float v45, v3, v7

    const/16 v46, 0x0

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v47, v2, v28

    move-object/from16 v42, p1

    move-object/from16 v43, v1

    invoke-virtual/range {v42 .. v47}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 91
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v3

    sub-float v2, v2, v26

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v3, v4

    mul-float v30, v3, v7

    const/16 v35, 0x0

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v2, v25

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    move/from16 v31, v35

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 92
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v3

    sub-float v2, v2, v23

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v39

    div-float/2addr v3, v4

    mul-float v40, v3, v7

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v42, v2, v22

    move-object/from16 v37, p1

    move-object/from16 v38, v1

    invoke-virtual/range {v37 .. v42}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 93
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v3

    sub-float v2, v2, v20

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v23

    div-float/2addr v3, v4

    mul-float v24, v3, v7

    const/16 v25, 0x0

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v26, v2, v19

    move-object/from16 v21, p1

    move-object/from16 v22, v1

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v3

    sub-float v2, v2, v17

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v33

    div-float/2addr v3, v4

    mul-float v34, v3, v7

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v36, v2, v16

    move-object/from16 v31, p1

    move-object/from16 v32, v1

    invoke-virtual/range {v31 .. v36}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 95
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v3, v14

    sub-float v4, v2, v3

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v4, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    sub-float/2addr v3, v2

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v3, v2

    mul-float v18, v3, v7

    const/16 v19, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v0, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_d
    add-float/2addr v12, v5

    cmpl-float v4, v1, v12

    if-lez v4, :cond_e

    add-float v4, v15, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_e

    .line 96
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v4

    mul-float v36, v3, v7

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 97
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v2

    sub-float v1, v1, v29

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v8, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v28

    move-object/from16 v10, p1

    move v14, v8

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v3

    sub-float v1, v1, v26

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    div-float/2addr v3, v4

    mul-float v4, v3, v7

    const/4 v6, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v10, v1, v25

    move-object/from16 v1, p1

    move v3, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 99
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v3

    sub-float v1, v1, v23

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    div-float/2addr v3, v4

    mul-float v4, v3, v7

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v6, v1, v22

    move-object/from16 v1, p1

    move v3, v5

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 100
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v2

    sub-float v1, v1, v20

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v19

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v3, v3, v17

    sub-float v4, v2, v3

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v4, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    sub-float/2addr v3, v2

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v7

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v5, v0, v16

    move-object/from16 v0, p1

    move v2, v4

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_e
    add-float/2addr v15, v5

    cmpl-float v4, v1, v15

    if-lez v4, :cond_f

    add-float v4, v18, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_f

    .line 102
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v4

    mul-float v36, v3, v7

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 103
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v2

    sub-float v1, v1, v29

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v28

    move-object/from16 v10, p1

    move v14, v5

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 104
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v3

    sub-float v2, v2, v26

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v3, v4

    mul-float v30, v3, v7

    const/16 v31, 0x0

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v2, v25

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v3

    sub-float v1, v1, v23

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    div-float/2addr v3, v4

    mul-float v4, v3, v7

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v8, v1, v22

    move-object/from16 v1, p1

    move v3, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 106
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v2, v2, v20

    sub-float v3, v1, v2

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v2, v1

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v0, v19

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_f
    add-float v18, v18, v5

    cmpl-float v4, v1, v18

    if-lez v4, :cond_10

    add-float v4, v21, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_10

    .line 107
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v4

    mul-float v36, v3, v7

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v2

    sub-float v1, v1, v29

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v28

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v3

    sub-float v2, v2, v26

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v18

    div-float/2addr v3, v5

    mul-float v19, v3, v7

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v21, v2, v25

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 110
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v3, v3, v23

    sub-float v5, v2, v3

    iget v6, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v5, v6, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    sub-float/2addr v3, v2

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v7

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v6, v0, v22

    move-object/from16 v0, p1

    move v2, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_10
    add-float v21, v21, v5

    cmpl-float v4, v1, v21

    if-lez v4, :cond_11

    add-float v4, v24, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_11

    .line 111
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v4

    mul-float v36, v3, v7

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v2

    sub-float v1, v1, v29

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v28

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 113
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v3, v3, v26

    sub-float v4, v2, v3

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v4, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    sub-float/2addr v3, v2

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v3, v2

    mul-float/2addr v3, v7

    const/4 v5, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v6, v0, v25

    move-object/from16 v0, p1

    move v2, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_11
    add-float v24, v24, v5

    cmpl-float v4, v1, v24

    if-lez v4, :cond_12

    add-float v4, v27, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_12

    .line 114
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    mul-float v32, v32, v3

    sub-float v1, v1, v32

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v4

    mul-float v36, v3, v7

    const/16 v37, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 115
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v2, v2, v29

    sub-float v3, v1, v2

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    add-float/2addr v2, v1

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v0, v28

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_12
    add-float v27, v27, v5

    cmpl-float v4, v1, v27

    if-lez v4, :cond_13

    mul-float v4, v3, v32

    add-float v10, v4, v5

    cmpg-float v10, v1, v10

    if-gtz v10, :cond_13

    .line 116
    iget-object v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    sub-float v3, v1, v4

    iget v6, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v6, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    mul-float v36, v4, v7

    const/16 v37, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v0, v31

    move-object/from16 v33, p1

    move-object/from16 v34, v2

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_13
    mul-float v32, v32, v3

    cmpl-float v4, v1, v32

    if-lez v4, :cond_14

    cmpg-float v4, v1, v5

    if-gtz v4, :cond_14

    .line 117
    iget-object v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    sub-float v1, v1, v32

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v35

    div-float/2addr v3, v5

    mul-float v36, v3, v7

    const/16 v41, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v38, v1, v31

    const/16 v37, 0x0

    move-object/from16 v33, p1

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v38}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 118
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v29, v29, v4

    sub-float v3, v3, v29

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v44

    div-float/2addr v4, v5

    mul-float v45, v4, v7

    const/16 v33, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v47, v3, v28

    const/16 v31, 0x0

    move-object/from16 v42, p1

    move-object/from16 v43, v1

    move/from16 v46, v31

    invoke-virtual/range {v42 .. v47}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 119
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v26, v26, v4

    sub-float v3, v3, v26

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v36

    div-float/2addr v4, v5

    mul-float v37, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v39, v3, v25

    const/16 v38, 0x0

    move-object/from16 v34, p1

    move-object/from16 v35, v1

    invoke-virtual/range {v34 .. v39}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 120
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v23, v23, v4

    sub-float v3, v3, v23

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v26

    div-float/2addr v4, v5

    mul-float v27, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v29, v3, v22

    const/16 v28, 0x0

    move-object/from16 v24, p1

    move-object/from16 v25, v1

    invoke-virtual/range {v24 .. v29}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v20, v20, v4

    sub-float v3, v3, v20

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v29

    div-float/2addr v4, v5

    mul-float v30, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v32, v3, v19

    move-object/from16 v27, p1

    move-object/from16 v28, v1

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float v17, v17, v4

    sub-float v3, v3, v17

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v31

    div-float/2addr v4, v5

    mul-float v32, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v34, v3, v16

    move-object/from16 v29, p1

    move-object/from16 v30, v1

    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v14, v4

    sub-float/2addr v3, v14

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v17

    div-float/2addr v4, v5

    mul-float v18, v4, v7

    const/16 v19, 0x0

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v20, v3, v13

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 124
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v11, v4

    sub-float/2addr v3, v11

    iget v5, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v3, v5, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v39

    div-float/2addr v4, v5

    mul-float v40, v4, v7

    iget-object v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v42, v3, v2

    move-object/from16 v37, p1

    move-object/from16 v38, v1

    invoke-virtual/range {v37 .. v42}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 125
    iget-object v11, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    mul-float/2addr v6, v2

    sub-float/2addr v1, v6

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v1, v3, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v12

    div-float/2addr v2, v3

    mul-float v13, v2, v7

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    aget-object v15, v1, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 126
    iget-object v1, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mRectFProgress:Landroid/graphics/RectF;

    iget v2, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    iget v3, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    sub-float/2addr v2, v3

    iget v4, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mMax:F

    invoke-static {v2, v4, v7, v9}, Lcom/android/keyguard/MiuiKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    div-float/2addr v3, v4

    mul-float/2addr v3, v7

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/systemui/toast/sub/ScanCircle;->mPaintArc:[Landroid/graphics/Paint;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_14
    :goto_0
    return-void
.end method

.method public setCircleValue(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mRingRadius:F

    .line 2
    iput p2, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mRingStrokeWidth:F

    .line 4
    return-void
    .line 6
.end method

.method public setProgress(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    .line 2
    const/4 p1, 0x2

    .line 4
    new-array p1, p1, [F

    .line 5
    fill-array-data p1, :array_0

    .line 7
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 14
    const-wide/16 v0, 0x4e2

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 21
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 23
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 25
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    iget-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 33
    const/4 v0, -0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 39
    new-instance v0, Lcom/android/systemui/toast/sub/ScanCircle$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v0, p0}, Lcom/android/systemui/toast/sub/ScanCircle$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/toast/sub/ScanCircle;)V

    .line 43
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 49
    const-wide/16 v0, 0x352

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 53
    iget-object p0, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 56
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    return-void

    .line 61
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 62
.end method
