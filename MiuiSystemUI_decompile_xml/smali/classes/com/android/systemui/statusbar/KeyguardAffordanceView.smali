.class public Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.super Landroid/widget/ImageView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public final mAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

.field public mCenterX:I

.field public mCenterY:I

.field public mCircleAnimator:Landroid/animation/ValueAnimator;

.field public final mCircleColor:I

.field public final mCircleEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

.field public final mCirclePaint:Landroid/graphics/Paint;

.field public mCircleRadius:F

.field public mCircleStartValue:F

.field public mCircleWillBeHidden:Z

.field public final mClipEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

.field public final mColorInterpolator:Landroid/animation/ArgbEvaluator;

.field public final mDarkIconColor:I

.field public mImageScale:F

.field public mLaunchingAffordance:Z

.field public mMaxCircleSize:F

.field public final mMinBackgroundRadius:I

.field public final mNormalColor:I

.field public mPreviewClipper:Landroid/animation/Animator;

.field public mPreviewView:Landroid/view/View;

.field public final mRestingAlpha:F

.field public mScaleAnimator:Landroid/animation/ValueAnimator;

.field public final mScaleEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

.field public mShouldTint:Z

.field public final mTempPoint:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x2

    new-array p4, p3, [I

    .line 5
    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    const/high16 p4, 0x3f800000    # 1.0f

    .line 6
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 7
    iput p4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    const/4 p4, 0x1

    .line 8
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    .line 12
    new-instance p3, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    const/4 v0, 0x3

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    .line 13
    sget-object p3, Landroid/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p3, -0x1

    .line 16
    iput p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 17
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x5

    .line 18
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    const/high16 p2, -0x1000000

    .line 19
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDarkIconColor:I

    .line 20
    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070439    # @dimen/keyguard_affordance_min_background_radius '30.0dp'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 21
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 22
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 23
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaxCircleSize()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 16
    const/4 v2, 0x0

    .line 18
    aget v1, v1, v2

    .line 19
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 21
    add-int/2addr v1, v2

    .line 23
    int-to-float v1, v1

    .line 24
    sub-float/2addr v0, v1

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mTempPoint:[I

    .line 30
    const/4 v2, 0x1

    .line 32
    aget v1, v1, v2

    .line 33
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 35
    add-int/2addr v1, p0

    .line 37
    int-to-float p0, v1

    .line 38
    float-to-double v0, v0

    .line 39
    float-to-double v2, p0

    .line 40
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 41
    move-result-wide v0

    .line 44
    double-to-float p0, v0

    .line 45
    return p0
    .line 46
.end method


# virtual methods
.method public getCircleRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getRestingAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mRestingAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 5
    const/4 v1, 0x0

    .line 7
    cmpl-float v2, v0, v1

    .line 8
    if-gtz v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 13
    int-to-float v2, v2

    .line 15
    sub-float/2addr v0, v2

    .line 16
    const/high16 v3, 0x3f000000    # 0.5f

    .line 17
    mul-float/2addr v2, v3

    .line 19
    div-float/2addr v0, v2

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result v0

    .line 26
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    .line 27
    move-result v0

    .line 30
    mul-float/2addr v0, v3

    .line 31
    add-float/2addr v0, v3

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 37
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 43
    sub-float/2addr v3, v1

    .line 45
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 46
    move-result v3

    .line 49
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    .line 50
    sub-float/2addr v4, v1

    .line 52
    div-float/2addr v3, v4

    .line 53
    sub-float/2addr v2, v3

    .line 54
    mul-float/2addr v0, v2

    .line 55
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 56
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 58
    move-result v1

    .line 61
    int-to-float v1, v1

    .line 62
    mul-float/2addr v1, v0

    .line 63
    float-to-int v0, v1

    .line 64
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 67
    move-result v1

    .line 70
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 71
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 73
    move-result v2

    .line 76
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleColor:I

    .line 77
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 79
    move-result v3

    .line 82
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 83
    move-result v0

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 92
    int-to-float v0, v0

    .line 94
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 95
    int-to-float v1, v1

    .line 97
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 98
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCirclePaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 108
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 110
    move-result v1

    .line 113
    div-int/lit8 v1, v1, 0x2

    .line 114
    int-to-float v1, v1

    .line 116
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 117
    move-result v2

    .line 120
    div-int/lit8 v2, v2, 0x2

    .line 121
    int-to-float v2, v2

    .line 123
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 124
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    return-void
    .line 133
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 5
    move-result p1

    .line 8
    div-int/lit8 p1, p1, 0x2

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 13
    move-result p1

    .line 16
    div-int/lit8 p1, p1, 0x2

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    .line 19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getMaxCircleSize()F

    .line 21
    move-result p1

    .line 24
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMaxCircleSize:F

    .line 25
    return-void
    .line 27
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public setCircleRadius(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public setCircleRadius(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    return-void
.end method

.method public final setCircleRadius(FZZ)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez v4, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    if-eq v4, v5, :cond_4

    if-nez p3, :cond_4

    move p3, v2

    goto :goto_2

    :cond_4
    move p3, v3

    :goto_2
    const/4 v4, 0x4

    const/4 v6, 0x2

    if-nez p3, :cond_6

    if-nez v0, :cond_5

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    if-eqz v5, :cond_c

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz p0, :cond_c

    .line 8
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 9
    :cond_5
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    if-nez p2, :cond_c

    .line 10
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float p2, p2

    sub-float p2, p1, p2

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 12
    aget-object p3, p3, v3

    new-array v0, v6, [F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    add-float/2addr v1, p2

    aput v1, v0, v3

    aput p1, v0, v2

    invoke-virtual {p3, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto/16 :goto_6

    :cond_6
    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    :cond_7
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    if-eqz p3, :cond_8

    .line 16
    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    :cond_8
    new-array p3, v6, [F

    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    aput v0, p3, v3

    aput p1, p3, v2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 18
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 19
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleStartValue:F

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    move v2, v3

    .line 20
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleWillBeHidden:Z

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v1, :cond_a

    .line 23
    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_4

    .line 24
    :cond_a
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 25
    :goto_4
    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_b

    .line 26
    iget p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/high16 v1, 0x42a00000    # 80.0f

    mul-float/2addr p2, v1

    float-to-long v1, p2

    const-wide/16 v5, 0xc8

    .line 27
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_5

    :cond_b
    const-wide/16 v1, 0xfa

    .line 28
    :goto_5
    invoke-virtual {p3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 29
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    .line 30
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_c

    .line 31
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p3

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterX:I

    add-int/2addr p3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCenterY:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 34
    invoke-static {p2, p3, v3, v5, p1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 35
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 37
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mClipEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    new-instance p2, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-direct {p2, p0, v4}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_c
    :goto_6
    return-void
.end method

.method public setCircleRadiusWithoutAnimation(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V

    .line 11
    return-void
    .line 14
.end method

.method public setImageAlpha(FZ)V
    .locals 7

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v2, p1, v0

    float-to-int v2, v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez p2, :cond_3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result p2

    .line 9
    filled-new-array {p2, v2}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 10
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 11
    new-instance v5, Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mAlphaEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_5

    cmpl-float p0, p1, v1

    if-nez p0, :cond_4

    .line 13
    sget-object p0, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 14
    :cond_4
    sget-object p0, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    move-object p5, p0

    .line 15
    :cond_5
    invoke-virtual {v4, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, -0x1

    cmp-long p0, p3, p0

    if-nez p0, :cond_6

    sub-int/2addr p2, v2

    .line 16
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 17
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr p0, p1

    float-to-long p3, p0

    .line 18
    :cond_6
    invoke-virtual {v4, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p6, :cond_7

    .line 19
    new-instance p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;

    invoke-direct {p0, p6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;-><init>(Ljava/lang/Runnable;)V

    .line 20
    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    :cond_7
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateIconColor()V

    .line 7
    return-void
    .line 10
.end method

.method public setImageScale(FZ)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 6
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;I)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleEndListener:Lcom/android/systemui/statusbar/KeyguardAffordanceView$1;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p5, :cond_3

    const/4 p5, 0x0

    cmpl-float p5, p1, p5

    if-nez p5, :cond_2

    .line 10
    sget-object p5, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p5, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p2, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-nez p5, :cond_4

    .line 13
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3e4ccccc    # 0.19999999f

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr p0, p1

    float-to-long p3, p0

    .line 15
    :cond_4
    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method

.method public setLaunchingAffordance(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    .line 2
    return-void
    .line 4
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;

    .line 7
    if-eqz p1, :cond_2

    .line 9
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mLaunchingAffordance:Z

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 15
    move-result p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x4

    .line 20
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_2
    return-void
.end method

.method public final updateIconColor()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mShouldTint:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v0

    .line 14
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mCircleRadius:F

    .line 15
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mMinBackgroundRadius:I

    .line 17
    int-to-float v2, v2

    .line 19
    div-float/2addr v1, v2

    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mColorInterpolator:Landroid/animation/ArgbEvaluator;

    .line 27
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mNormalColor:I

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 34
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mDarkIconColor:I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v2, v1, v3, p0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 44
    check-cast p0, Ljava/lang/Integer;

    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result p0

    .line 50
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 51
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    return-void
    .line 56
.end method
