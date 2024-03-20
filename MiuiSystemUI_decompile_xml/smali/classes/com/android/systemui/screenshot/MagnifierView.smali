.class public Lcom/android/systemui/screenshot/MagnifierView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/screenshot/CropView$CropInteractionListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBorderColor:I

.field public final mBorderPx:F

.field public mCheckerboard:Landroid/graphics/Path;

.field public final mCheckerboardBoxSize:F

.field public final mCheckerboardPaint:Landroid/graphics/Paint;

.field public mCropBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHandlePaint:Landroid/graphics/Paint;

.field public mInnerCircle:Landroid/graphics/Path;

.field public mLastCenter:F

.field public mLastCropPosition:F

.field public mOuterCircle:Landroid/graphics/Path;

.field public final mShadePaint:Landroid/graphics/Paint;

.field public mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

.field public final mTranslationAnimatorListener:Lcom/android/systemui/screenshot/MagnifierView$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/MagnifierView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x42200000    # 40.0f

    .line 3
    iput p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    const/high16 p3, 0x3f000000    # 0.5f

    .line 4
    iput p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCenter:F

    .line 5
    new-instance p3, Lcom/android/systemui/screenshot/MagnifierView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/screenshot/MagnifierView$1;-><init>(Lcom/android/systemui/screenshot/MagnifierView;)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimatorListener:Lcom/android/systemui/screenshot/MagnifierView$1;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/R$styleable;->MagnifierView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mShadePaint:Landroid/graphics/Paint;

    const/4 p3, 0x4

    const/16 v1, 0xff

    .line 8
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    const/4 v1, 0x5

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 10
    invoke-static {v1, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mHandlePaint:Landroid/graphics/Paint;

    const/4 p3, 0x2

    const/high16 v1, -0x1000000

    .line 12
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x3

    const/16 v1, 0x14

    .line 13
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    .line 14
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderPx:F

    const/4 p2, -0x1

    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderColor:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardPaint:Landroid/graphics/Paint;

    const p0, -0x777778

    .line 19
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private getParentWidth()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method


# virtual methods
.method public final onCropDragComplete()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 7
    move-result-object v0

    .line 10
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 23
    move-result-object v0

    .line 26
    const v1, 0x3e4ccccd    # 0.2f

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/systemui/screenshot/MagnifierView$$ExternalSyntheticLambda0;

    .line 38
    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/MagnifierView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/MagnifierView;)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 47
    return-void
    .line 50
.end method

.method public final onCropDragMoved(FIF)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 2
    move-result v0

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    int-to-float v0, v0

    .line 8
    cmpl-float v0, p3, v0

    .line 9
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-lez v0, :cond_0

    .line 13
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    const/4 v3, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 22
    move-result v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v4

    .line 29
    sub-int/2addr v3, v4

    .line 30
    int-to-float v3, v3

    .line 31
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 32
    move-result v4

    .line 35
    div-int/lit8 v4, v4, 0x2

    .line 36
    int-to-float v4, v4

    .line 38
    sub-float/2addr p3, v4

    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result p3

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 44
    move-result v4

    .line 47
    int-to-float v4, v4

    .line 48
    const/high16 v5, 0x41200000    # 10.0f

    .line 49
    div-float/2addr v4, v5

    .line 51
    cmpg-float p3, p3, v4

    .line 52
    if-gez p3, :cond_2

    .line 54
    move p3, v1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move p3, v2

    .line 58
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 59
    move-result v4

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 63
    move-result v5

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    move-result v6

    .line 70
    sub-int/2addr v5, v6

    .line 71
    div-int/lit8 v5, v5, 0x2

    .line 72
    int-to-float v5, v5

    .line 74
    cmpg-float v4, v4, v5

    .line 75
    if-gez v4, :cond_3

    .line 77
    goto :goto_3

    .line 79
    :cond_3
    move v1, v2

    .line 80
    :goto_3
    if-nez p3, :cond_4

    .line 81
    if-eq v1, v0, :cond_4

    .line 83
    iget-object p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    .line 85
    if-nez p3, :cond_4

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 89
    move-result-object p3

    .line 92
    invoke-virtual {p3, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 93
    move-result-object p3

    .line 96
    iput-object p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimatorListener:Lcom/android/systemui/screenshot/MagnifierView$1;

    .line 99
    invoke-virtual {p3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 101
    iget-object p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    .line 104
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 106
    :cond_4
    iput p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCropPosition:F

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 111
    move-result p1

    .line 114
    div-int/lit8 p1, p1, 0x2

    .line 115
    sub-int/2addr p2, p1

    .line 117
    int-to-float p1, p2

    .line 118
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 122
    return-void
    .line 125
.end method

.method public final onCropDragStarted(Lcom/android/systemui/screenshot/CropView$CropBoundary;FIFF)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCropBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 2
    iput p4, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCenter:F

    .line 4
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 6
    move-result p1

    .line 9
    div-int/lit8 p1, p1, 0x2

    .line 10
    int-to-float p1, p1

    .line 12
    cmpl-float p1, p5, p1

    .line 13
    const/4 p4, 0x0

    .line 15
    if-lez p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, p4

    .line 20
    :goto_0
    const/4 p5, 0x0

    .line 21
    if-eqz p1, :cond_1

    .line 22
    move p1, p5

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 26
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    move-result v0

    .line 33
    sub-int/2addr p1, v0

    .line 34
    int-to-float p1, p1

    .line 35
    :goto_1
    iput p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCropPosition:F

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 38
    move-result p2

    .line 41
    div-int/lit8 p2, p2, 0x2

    .line 42
    sub-int/2addr p3, p2

    .line 44
    int-to-float p2, p3

    .line 45
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result p2

    .line 52
    div-int/lit8 p2, p2, 0x2

    .line 53
    int-to-float p2, p2

    .line 55
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 59
    move-result p2

    .line 62
    div-int/lit8 p2, p2, 0x2

    .line 63
    int-to-float p2, p2

    .line 65
    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 66
    const p2, 0x3e4ccccd    # 0.2f

    .line 69
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 72
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    .line 75
    invoke-virtual {p0, p5}, Landroid/view/View;->setAlpha(F)V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/screenshot/MagnifierView;->getParentWidth()I

    .line 81
    move-result p2

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 85
    move-result p3

    .line 88
    sub-int/2addr p2, p3

    .line 89
    div-int/lit8 p2, p2, 0x2

    .line 90
    int-to-float p2, p2

    .line 92
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 99
    move-result-object p2

    .line 102
    const/high16 p3, 0x3f800000    # 1.0f

    .line 103
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 105
    move-result-object p2

    .line 108
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 109
    move-result-object p1

    .line 112
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 113
    move-result-object p1

    .line 116
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 117
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    .line 121
    iget-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimatorListener:Lcom/android/systemui/screenshot/MagnifierView$1;

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 125
    iget-object p0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    .line 128
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    return-void
    .line 133
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mOuterCircle:Landroid/graphics/Path;

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7
    iget v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderColor:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mInnerCircle:Landroid/graphics/Path;

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 17
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboard:Landroid/graphics/Path;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 40
    move-result v0

    .line 43
    neg-int v0, v0

    .line 44
    int-to-float v0, v0

    .line 45
    iget v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCenter:F

    .line 46
    mul-float/2addr v0, v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v1

    .line 52
    div-int/lit8 v1, v1, 0x2

    .line 53
    int-to-float v1, v1

    .line 55
    add-float/2addr v0, v1

    .line 56
    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 63
    move-result v1

    .line 66
    neg-int v1, v1

    .line 67
    int-to-float v1, v1

    .line 68
    iget v2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mLastCropPosition:F

    .line 69
    mul-float/2addr v1, v2

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 72
    move-result v2

    .line 75
    div-int/lit8 v2, v2, 0x2

    .line 76
    int-to-float v2, v2

    .line 78
    add-float/2addr v1, v2

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 93
    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 97
    move-result v2

    .line 100
    div-int/lit8 v2, v2, 0x2

    .line 101
    const/4 v3, 0x0

    .line 103
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCropBoundary:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 107
    sget-object v2, Lcom/android/systemui/screenshot/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/CropView$CropBoundary;

    .line 109
    if-ne v1, v2, :cond_1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 113
    move-result v1

    .line 116
    div-int/lit8 v1, v1, 0x2

    .line 117
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mShadePaint:Landroid/graphics/Paint;

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    const/4 v3, 0x0

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 128
    move-result v0

    .line 131
    div-int/lit8 v0, v0, 0x2

    .line 132
    int-to-float v4, v0

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 135
    move-result v0

    .line 138
    int-to-float v5, v0

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 140
    move-result v0

    .line 143
    div-int/lit8 v0, v0, 0x2

    .line 144
    int-to-float v6, v0

    .line 146
    iget-object v7, p0, Lcom/android/systemui/screenshot/MagnifierView;->mHandlePaint:Landroid/graphics/Paint;

    .line 147
    move-object v2, p1

    .line 149
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    return-void
    .line 153
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 5
    move-result p1

    .line 8
    div-int/lit8 p1, p1, 0x2

    .line 9
    new-instance p2, Landroid/graphics/Path;

    .line 11
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mOuterCircle:Landroid/graphics/Path;

    .line 16
    int-to-float p1, p1

    .line 18
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 19
    invoke-virtual {p2, p1, p1, p1, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 21
    new-instance p2, Landroid/graphics/Path;

    .line 24
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/android/systemui/screenshot/MagnifierView;->mInnerCircle:Landroid/graphics/Path;

    .line 29
    iget p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mBorderPx:F

    .line 31
    sub-float p3, p1, p3

    .line 33
    sget-object p4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 35
    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 37
    new-instance p1, Landroid/graphics/Path;

    .line 40
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result p2

    .line 48
    int-to-float p2, p2

    .line 49
    iget p3, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    .line 50
    div-float/2addr p2, p3

    .line 52
    float-to-double p2, p2

    .line 53
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 54
    move-result-wide p2

    .line 57
    double-to-int p2, p2

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 59
    move-result p3

    .line 62
    int-to-float p3, p3

    .line 63
    iget p4, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    .line 64
    div-float/2addr p3, p4

    .line 66
    float-to-double p3, p3

    .line 67
    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    .line 68
    move-result-wide p3

    .line 71
    double-to-int p3, p3

    .line 72
    const/4 p4, 0x0

    .line 73
    move p5, p4

    .line 74
    :goto_0
    if-ge p5, p3, :cond_2

    .line 75
    rem-int/lit8 v0, p5, 0x2

    .line 77
    if-nez v0, :cond_0

    .line 79
    move v0, p4

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_1
    move v6, v0

    .line 84
    :goto_2
    if-ge v6, p2, :cond_1

    .line 85
    int-to-float v0, v6

    .line 87
    iget v1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboardBoxSize:F

    .line 88
    mul-float v2, v0, v1

    .line 90
    int-to-float v0, p5

    .line 92
    mul-float v3, v0, v1

    .line 93
    add-int/lit8 v0, v6, 0x1

    .line 95
    int-to-float v0, v0

    .line 97
    mul-float v4, v0, v1

    .line 98
    add-int/lit8 v0, p5, 0x1

    .line 100
    int-to-float v0, v0

    .line 102
    mul-float v5, v0, v1

    .line 103
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 105
    move-object v0, p1

    .line 107
    move v1, v2

    .line 108
    move v2, v3

    .line 109
    move v3, v4

    .line 110
    move v4, v5

    .line 111
    move-object v5, v7

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 113
    add-int/lit8 v6, v6, 0x2

    .line 116
    goto :goto_2

    .line 118
    :cond_1
    add-int/lit8 p5, p5, 0x1

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mCheckerboard:Landroid/graphics/Path;

    .line 122
    return-void
    .line 124
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/MagnifierView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
    .line 11
.end method
