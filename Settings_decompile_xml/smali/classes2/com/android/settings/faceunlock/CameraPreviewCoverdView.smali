.class public Lcom/android/settings/faceunlock/CameraPreviewCoverdView;
.super Landroid/view/View;
.source "CameraPreviewCoverdView.java"


# instance fields
.field private cameraPreviewExtraCircle:I

.field private cameraPreviewHeight:I

.field private cameraPreviewTop:I

.field private cameraPreviewWidth:I

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mCameraPreviewOffSet:I

.field private mDrawCoverdView:Z

.field private mFromCicleToRect:Z

.field private mHeightWidthRate:F

.field private mOnlyDrawCircle:Z

.field private mPosition:F

.field private mRoundRate:F

.field private mSkipFrame:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mHeightWidthRate:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mCameraPreviewOffSet:I

    const p1, 0x40166666    # 2.35f

    .line 38
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mRoundRate:F

    .line 52
    invoke-direct {p0}, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mHeightWidthRate:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mCameraPreviewOffSet:I

    const p1, 0x40166666    # 2.35f

    .line 38
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mRoundRate:F

    .line 47
    invoke-direct {p0}, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mHeightWidthRate:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mCameraPreviewOffSet:I

    const p1, 0x40166666    # 2.35f

    .line 38
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mRoundRate:F

    .line 42
    invoke-direct {p0}, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->initView()V

    return-void
.end method

.method private getRectFFromCircleToRect()Landroid/graphics/RectF;
    .locals 9

    .line 124
    iget v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    iget v1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mHeightWidthRate:F

    mul-float/2addr v0, v1

    .line 125
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    sub-float/2addr v3, v5

    iget v6, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewHeight:I

    int-to-float v7, v6

    div-float/2addr v7, v4

    sub-float/2addr v7, v0

    iget p0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mCameraPreviewOffSet:I

    int-to-float v8, p0

    sub-float/2addr v7, v8

    int-to-float v2, v2

    div-float/2addr v2, v4

    add-float/2addr v2, v5

    int-to-float v5, v6

    div-float/2addr v5, v4

    add-float/2addr v5, v0

    int-to-float p0, p0

    sub-float/2addr v5, p0

    invoke-direct {v1, v3, v7, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method private initView()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewWidth:I

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewHeight:I

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewTop(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewTop:I

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewExtraCircle(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewExtraCircle:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getCameraPreviewOffSet(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mCameraPreviewOffSet:I

    .line 61
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    .line 63
    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mHeightWidthRate:F

    .line 65
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 66
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->isUseLandVersionLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/high16 v0, 0x40800000    # 4.0f

    .line 67
    iput v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mRoundRate:F

    :cond_5
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mBgBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mDrawCoverdView:Z

    if-eqz v0, :cond_5

    .line 74
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mBgBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mBgBitmap:Landroid/graphics/Bitmap;

    .line 79
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x1

    .line 84
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewWidth:I

    iget v5, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewHeight:I

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v4, -0x1000000

    .line 86
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 89
    iget-boolean v3, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mFromCicleToRect:Z

    if-eqz v3, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->getRectFFromCircleToRect()Landroid/graphics/RectF;

    move-result-object v3

    goto :goto_0

    .line 92
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    iget v5, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewTop:I

    int-to-float v6, v5

    add-float/2addr v6, v4

    iget v7, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewWidth:I

    int-to-float v8, v7

    sub-float/2addr v8, v4

    add-int/2addr v7, v5

    int-to-float v5, v7

    sub-float/2addr v5, v4

    invoke-direct {v3, v4, v6, v8, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 96
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mSkipFrame:Z

    if-eqz v4, :cond_2

    .line 97
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 100
    :cond_2
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$color;->miui_face_input_cameraview_cover_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 101
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mOnlyDrawCircle:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    .line 105
    iget v1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v3, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mCameraPreviewOffSet:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 108
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mFromCicleToRect:Z

    if-eqz v1, :cond_4

    .line 109
    iget v1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewExtraCircle:I

    int-to-float v5, v1

    iget v6, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->cameraPreviewWidth:I

    int-to-float v7, v6

    div-float/2addr v7, v4

    add-float/2addr v5, v7

    iget v7, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    sub-float/2addr v5, v7

    int-to-float v1, v1

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v1, v6

    sub-float/2addr v1, v7

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 113
    :cond_4
    iget v1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    iget v4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mRoundRate:F

    mul-float v5, v1, v4

    mul-float/2addr v1, v4

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    const/4 v0, 0x0

    .line 116
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 117
    iget-object p0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mBgBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public refreshCameraView(FZZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mDrawCoverdView:Z

    .line 134
    iput-boolean p2, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mSkipFrame:Z

    .line 135
    iput-boolean p3, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mOnlyDrawCircle:Z

    .line 136
    iput-boolean p4, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mFromCicleToRect:Z

    .line 137
    iput p1, p0, Lcom/android/settings/faceunlock/CameraPreviewCoverdView;->mPosition:F

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
