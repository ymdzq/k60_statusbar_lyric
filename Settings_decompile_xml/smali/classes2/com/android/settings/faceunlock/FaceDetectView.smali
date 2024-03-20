.class public Lcom/android/settings/faceunlock/FaceDetectView;
.super Landroid/view/View;
.source "FaceDetectView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetectSize:I

.field private mLefrBottomBitmap:Landroid/graphics/Bitmap;

.field private mLeftBottomX:F

.field private mLeftBottomXInit:F

.field private mLeftBottomY:F

.field private mLeftBottomYInit:F

.field private mLeftTopBitmap:Landroid/graphics/Bitmap;

.field private mLeftTopX:F

.field private mLeftTopXInit:F

.field private mLeftTopY:F

.field private mLeftTopYInit:F

.field private mRightBottomBitmap:Landroid/graphics/Bitmap;

.field private mRightBottomX:F

.field private mRightBottomXInit:F

.field private mRightBottomY:F

.field private mRightBottomYInit:F

.field private mRightTopBitmap:Landroid/graphics/Bitmap;

.field private mRightTopX:F

.field private mRightTopXInit:F

.field private mRightTopY:F

.field private mRightTopYInit:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewDetectSize(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mDetectSize:I

    .line 46
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->miui_face_suggestion_detect_left_top:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    .line 48
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->miui_face_suggestion_detect_right_top:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    .line 50
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->miui_face_suggestion_detect_left_bottom:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    .line 52
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->miui_face_suggestion_detect_right_bottom:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    .line 54
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mDetectSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    .line 55
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mDetectSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    .line 56
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mDetectSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    .line 57
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mDetectSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewDetectInitX(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/faceunlock/MiuiFaceEnrollDimenHelper;->getPreviewDetectInitY(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopXInit:F

    .line 62
    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopYInit:F

    .line 63
    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopXInit:F

    .line 64
    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopYInit:F

    .line 65
    iput v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomXInit:F

    add-float v1, p1, p2

    .line 66
    iput v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomYInit:F

    .line 67
    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomXInit:F

    .line 68
    iput v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomYInit:F

    .line 70
    iput v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopX:F

    .line 71
    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopY:F

    .line 72
    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopX:F

    .line 73
    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopY:F

    .line 74
    iput v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomX:F

    .line 75
    iput v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomY:F

    .line 76
    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomX:F

    .line 77
    iput v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomY:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopX:F

    iget v2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopY:F

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopX:F

    iget v2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomX:F

    iget v2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomX:F

    iget p0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomY:F

    invoke-virtual {p1, v0, v1, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public updateDetectImage(F)V
    .locals 2

    .line 116
    iget v0, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mDetectSize:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 117
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->miui_face_input_detect_left_top:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    .line 119
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->miui_face_input_detect_right_top:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    .line 121
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->miui_face_input_detect_left_bottom:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    .line 123
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->miui_face_input_detect_right_bottom:I

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopBitmap:Landroid/graphics/Bitmap;

    .line 126
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopBitmap:Landroid/graphics/Bitmap;

    .line 127
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLefrBottomBitmap:Landroid/graphics/Bitmap;

    .line 128
    iget-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/settings/faceunlock/FaceDetectView;->zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public updateFaceDetectPosition(FZF)V
    .locals 0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0, p3}, Lcom/android/settings/faceunlock/FaceDetectView;->updateDetectImage(F)V

    .line 93
    :cond_0
    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopX:F

    .line 94
    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopYInit:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftTopY:F

    .line 95
    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopXInit:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopX:F

    .line 96
    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopYInit:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightTopY:F

    .line 97
    iput p1, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomX:F

    .line 98
    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomYInit:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mLeftBottomY:F

    .line 99
    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomXInit:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomX:F

    .line 100
    iget p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomYInit:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/settings/faceunlock/FaceDetectView;->mRightBottomY:F

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public zoomImg(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p0, v3

    div-float/2addr p2, p0

    int-to-float p0, v4

    div-float/2addr p3, p0

    .line 109
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 110
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 111
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
