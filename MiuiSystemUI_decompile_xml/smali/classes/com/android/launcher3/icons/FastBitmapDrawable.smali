.class public Lcom/android/launcher3/icons/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field public static final SCALE:Lcom/android/launcher3/icons/FastBitmapDrawable$1;


# instance fields
.field public mAlpha:I

.field public mBadge:Landroid/graphics/drawable/Drawable;

.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mColorFilter:Landroid/graphics/ColorFilter;

.field public mDisabledAlpha:F

.field public final mIconColor:I

.field public mIsDisabled:Z

.field public mIsPressed:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mScale:F

.field public mScaleAnimation:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 2
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 4
    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->ACCEL:Landroid/view/animation/Interpolator;

    .line 7
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 9
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 11
    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 14
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable$1;

    .line 16
    invoke-direct {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable$1;-><init>()V

    .line 18
    sput-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Lcom/android/launcher3/icons/FastBitmapDrawable$1;

    .line 21
    return-void
    .line 23
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    .line 15
    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 17
    const/16 v0, 0xff

    .line 19
    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    .line 21
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    iput p2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    .line 25
    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 28
    return-void
    .line 31
.end method

.method public static getDisabledColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/ColorMatrix;

    .line 2
    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 4
    new-instance v1, Landroid/graphics/ColorMatrix;

    .line 7
    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 13
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    .line 16
    move-result-object v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/high16 v4, 0x3f000000    # 0.5f

    .line 21
    aput v4, v2, v3

    .line 23
    const/4 v3, 0x6

    .line 25
    aput v4, v2, v3

    .line 26
    const/16 v3, 0xc

    .line 28
    aput v4, v2, v3

    .line 30
    const/16 v3, 0x7f

    .line 32
    int-to-float v3, v3

    .line 34
    const/4 v4, 0x4

    .line 35
    aput v3, v2, v4

    .line 36
    const/16 v4, 0x9

    .line 38
    aput v3, v2, v4

    .line 40
    const/16 v4, 0xe

    .line 42
    aput v3, v2, v4

    .line 44
    const/16 v3, 0x12

    .line 46
    aput p0, v2, v3

    .line 48
    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 50
    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    .line 53
    invoke-direct {p0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 55
    return-object p0
    .line 58
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v1

    .line 17
    iget v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    .line 20
    move-result v3

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 24
    move-result v4

    .line 27
    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 31
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 34
    if-eqz p0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 49
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 52
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 56
    :cond_2
    :goto_0
    return-void
    .line 59
.end method

.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 7
    return-void
    .line 10
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    .line 6
    iput-boolean v1, v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mIsDisabled:Z

    .line 8
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 14
    move-result-object p0

    .line 17
    iput-object p0, v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;->mBadgeConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 18
    :cond_0
    return-object v0
    .line 20
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getMinimumHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getMinimumWidth()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public isThemed()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/launcher3/icons/ThemedIconDrawable;

    .line 2
    return p0
    .line 4
.end method

.method public newConstantState()Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;

    .line 2
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 4
    iget p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIconColor:I

    .line 6
    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable$FastBitmapConstantState;-><init>(Landroid/graphics/Bitmap;I)V

    .line 8
    return-object v0
    .line 11
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 9
    move-result v0

    .line 12
    sget v1, Lcom/android/launcher3/icons/BaseIconFactory;->$r8$clinit:I

    .line 13
    const v1, 0x3ee353f8    # 0.444f

    .line 15
    int-to-float v0, v0

    .line 18
    mul-float/2addr v0, v1

    .line 19
    float-to-int v0, v0

    .line 20
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 21
    sub-int v2, v1, v0

    .line 23
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    sub-int v0, p1, v0

    .line 27
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    :cond_0
    return-void
    .line 32
.end method

.method public final onStateChange([I)Z
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x1

    .line 5
    if-ge v2, v0, :cond_1

    .line 6
    aget v4, p1, v2

    .line 8
    const v5, 0x10100a7    # @android:attr/state_pressed

    .line 10
    if-ne v4, v5, :cond_0

    .line 13
    move p1, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    move p1, v1

    .line 20
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    .line 21
    if-eq v0, p1, :cond_5

    .line 23
    iput-boolean p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    .line 25
    iget-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 31
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 35
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsPressed:Z

    .line 37
    const-wide/16 v4, 0xc8

    .line 39
    if-eqz p1, :cond_3

    .line 41
    sget-object p1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Lcom/android/launcher3/icons/FastBitmapDrawable$1;

    .line 43
    new-array v0, v3, [F

    .line 45
    const v2, 0x3f8ccccd    # 1.1f

    .line 47
    aput v2, v0, v1

    .line 50
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 56
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 61
    sget-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->ACCEL:Landroid/view/animation/Interpolator;

    .line 63
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 68
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 70
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 74
    move-result p1

    .line 77
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    if-eqz p1, :cond_4

    .line 80
    sget-object p1, Lcom/android/launcher3/icons/FastBitmapDrawable;->SCALE:Lcom/android/launcher3/icons/FastBitmapDrawable$1;

    .line 82
    new-array v2, v3, [F

    .line 84
    aput v0, v2, v1

    .line 86
    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 88
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 92
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 94
    iget-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 97
    sget-object v0, Lcom/android/launcher3/icons/FastBitmapDrawable;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 99
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 104
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 106
    goto :goto_2

    .line 109
    :cond_4
    iput v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 112
    :goto_2
    return v3

    .line 115
    :cond_5
    return v1
    .line 116
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mAlpha:I

    .line 6
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final setBadge(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 21
    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 25
    move-result v1

    .line 28
    sget v2, Lcom/android/launcher3/icons/BaseIconFactory;->$r8$clinit:I

    .line 29
    const v2, 0x3ee353f8    # 0.444f

    .line 31
    int-to-float v1, v1

    .line 34
    mul-float/2addr v1, v2

    .line 35
    float-to-int v1, v1

    .line 36
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 37
    sub-int v3, v2, v1

    .line 39
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 41
    sub-int v1, p1, v1

    .line 43
    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 48
    return-void
    .line 51
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->updateFilter()V

    .line 4
    return-void
    .line 7
.end method

.method public final setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    return-void
    .line 12
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 2
    return-void
    .line 5
.end method

.method public updateFilter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-boolean v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mIsDisabled:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mDisabledAlpha:F

    .line 8
    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 10
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 17
    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 31
    return-void
    .line 34
.end method
