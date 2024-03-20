.class public Lcom/android/settings/PrivacyLockPatternView;
.super Lcom/android/settings/LockPatternView;
.source "PrivacyLockPatternView.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settings/LockPatternView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/android/settings/PrivacyLockPatternView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/settings/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/android/settings/PrivacyLockPatternView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNewBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p0, v3

    div-float/2addr p2, p0

    int-to-float p0, v4

    div-float/2addr p3, p0

    .line 121
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 124
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 6

    if-eqz p4, :cond_5

    .line 59
    iget-boolean p4, p0, Lcom/android/settings/LockPatternView;->mInStealthMode:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-boolean p4, p0, Lcom/android/settings/LockPatternView;->mPatternInProgress:Z

    if-eqz p4, :cond_1

    .line 64
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 65
    :cond_1
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Wrong:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_2

    .line 67
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnRed:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 68
    :cond_2
    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Correct:Lcom/android/settings/LockPatternView$DisplayMode;

    if-eq p4, v0, :cond_4

    sget-object v0, Lcom/android/settings/LockPatternView$DisplayMode;->Animate:Lcom/android/settings/LockPatternView$DisplayMode;

    if-ne p4, v0, :cond_3

    goto :goto_0

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown display mode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPatternDisplayMode:Lcom/android/settings/LockPatternView$DisplayMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 61
    :cond_5
    :goto_1
    iget-object p4, p0, Lcom/android/settings/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 76
    :goto_2
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/PrivacyLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFoldInternalScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/android/settings/PrivacyLockPatternView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 77
    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/PrivacyLockPatternView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 78
    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFoldExternalScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 82
    :cond_7
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_8

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->privacy_patterview_dot_width_pad:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 83
    invoke-direct {p0, p4, v0, v1}, Lcom/android/settings/PrivacyLockPatternView;->getNewBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_4

    .line 87
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isFoldInternalScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->privacy_patterview_dot_width_fold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 88
    invoke-direct {p0, p4, v0, v1}, Lcom/android/settings/PrivacyLockPatternView;->getNewBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_4

    .line 80
    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$integer;->privacy_patterview_dot_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    .line 79
    invoke-direct {p0, p4, v0, v1}, Lcom/android/settings/PrivacyLockPatternView;->getNewBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 93
    :cond_a
    :goto_4
    iget v0, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    .line 94
    iget v1, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    if-eqz p4, :cond_b

    .line 97
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 98
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 101
    iget v2, p0, Lcom/android/settings/LockPatternView;->mSquareWidth:F

    iget v3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 102
    iget v4, p0, Lcom/android/settings/LockPatternView;->mSquareHeight:F

    iget v5, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 104
    iget-object v4, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr p2, v0

    int-to-float p2, p2

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {v4, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 105
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v0, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 106
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 107
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lcom/android/settings/LockPatternView;->mBitmapWidth:I

    neg-int p3, p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget v0, p0, Lcom/android/settings/LockPatternView;->mBitmapHeight:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 109
    iget-object p2, p0, Lcom/android/settings/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/settings/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/LockPatternView;->resolveMeasured(II)I

    move-result p1

    .line 33
    invoke-virtual {p0, p2, v1}, Lcom/android/settings/LockPatternView;->resolveMeasured(II)I

    move-result p2

    .line 35
    iget v0, p0, Lcom/android/settings/LockPatternView;->mAspect:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/settings/PrivacyLockPatternView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$dimen;->lock_view_size:I

    invoke-static {p1, p2}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getDimen(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 40
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 37
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    move p2, p1

    .line 53
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
