.class public Lcom/android/settings/faceunlock/FaceInputGridView;
.super Landroid/view/View;
.source "FaceInputGridView.java"


# instance fields
.field private cameraPreviewHeight:I

.field private cameraPreviewWidth:I

.field private draw:Z

.field private innerRectSize:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCameraPreviewOffSet:I

.field private mCircleRadius:I

.field private mGridAlpha:F

.field private mLineEndPointYPosition:I

.field private mLineEndPointxPosition:I

.field private mLineStartPointXPosition:I

.field private mLineStartPointYPosition:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPointColumn:I

.field private mPointTime:F

.field private mScaleSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCameraPreviewOffSet:I

    .line 45
    invoke-direct {p0}, Lcom/android/settings/faceunlock/FaceInputGridView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCameraPreviewOffSet:I

    .line 40
    invoke-direct {p0}, Lcom/android/settings/faceunlock/FaceInputGridView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCameraPreviewOffSet:I

    .line 35
    invoke-direct {p0}, Lcom/android/settings/faceunlock/FaceInputGridView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->face_input:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mBitmap:Landroid/graphics/Bitmap;

    const v0, 0x3f7851ec    # 0.97f

    .line 55
    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mGridAlpha:F

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->draw:Z

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->cameraPreviewWidth:I

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->cameraPreviewHeight:I

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewCircleRadius(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCircleRadius:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointX(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointXPosition:I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineStartPointY(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointYPosition:I

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineEndPointX(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineEndPointxPosition:I

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getGridLineEndPointY(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineEndPointYPosition:I

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->miui_face_enroll_line_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->innerRectSize:F

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewOffSet(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCameraPreviewOffSet:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 70
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->draw:Z

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->cameraPreviewWidth:I

    int-to-float v1, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v1, v6

    iget v2, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->cameraPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCameraPreviewOffSet:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mCircleRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mGridAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v0, 0xe

    if-ge v8, v0, :cond_0

    .line 76
    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointXPosition:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointYPosition:I

    int-to-float v2, v0

    iget v3, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->innerRectSize:F

    int-to-float v9, v8

    mul-float v4, v3, v9

    add-float/2addr v2, v4

    iget v4, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineEndPointxPosition:I

    int-to-float v4, v4

    int-to-float v0, v0

    mul-float/2addr v3, v9

    add-float v5, v0, v3

    iget-object v10, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointXPosition:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->innerRectSize:F

    mul-float v3, v2, v9

    add-float/2addr v1, v3

    iget v3, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointYPosition:I

    int-to-float v3, v3

    int-to-float v0, v0

    mul-float/2addr v2, v9

    add-float v4, v0, v2

    iget v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineEndPointYPosition:I

    int-to-float v5, v0

    iget-object v9, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v1, v7

    .line 79
    :goto_1
    iget v2, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPointColumn:I

    if-ge v1, v2, :cond_3

    .line 80
    iget v2, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPointTime:F

    mul-int/lit8 v3, v1, 0x32

    add-int/lit16 v4, v3, 0x12c

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    const/high16 v5, 0x43960000    # 300.0f

    if-gtz v4, :cond_1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    goto :goto_2

    :cond_1
    const/high16 v4, 0x44160000    # 600.0f

    sub-float/2addr v4, v2

    int-to-float v2, v3

    add-float/2addr v4, v2

    div-float v2, v4, v5

    :goto_2
    iput v2, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mScaleSize:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_2

    move v3, v7

    :goto_3
    if-ge v3, v0, :cond_2

    .line 84
    iget-object v4, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointXPosition:I

    int-to-float v5, v5

    int-to-float v8, v2

    div-float/2addr v8, v6

    sub-float/2addr v5, v8

    iget v9, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->innerRectSize:F

    int-to-float v10, v3

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    iget v10, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mLineStartPointYPosition:I

    int-to-float v10, v10

    sub-float/2addr v10, v8

    int-to-float v8, v1

    mul-float/2addr v9, v8

    add-float/2addr v10, v9

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v4, v5, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 90
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setGridViewAlpha(F)V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->draw:Z

    .line 105
    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mGridAlpha:F

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateFaceInputPoint(F)V
    .locals 2

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->draw:Z

    .line 95
    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPointTime:F

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPointColumn:I

    const/16 v0, 0xe

    if-le p1, v0, :cond_0

    .line 98
    iput v0, p0, Lcom/android/settings/faceunlock/FaceInputGridView;->mPointColumn:I

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
