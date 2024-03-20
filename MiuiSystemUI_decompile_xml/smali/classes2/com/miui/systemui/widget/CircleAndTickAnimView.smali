.class public Lcom/miui/systemui/widget/CircleAndTickAnimView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isNormalDrawableShow:Z

.field public final mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mBackDrawable:Landroid/graphics/drawable/Drawable;

.field public mCircleAnimator:Landroid/animation/ValueAnimator;

.field public mCircleRotateDegrees:F

.field public mDiameter:I

.field public mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field public final mOutRect:Landroid/graphics/Rect;

.field public final mTickDstPath:Landroid/graphics/Path;

.field public mTickEndPoint:F

.field public mTickEndPointAnimator:Landroid/animation/ValueAnimator;

.field public final mTickPaint:Landroid/graphics/Paint;

.field public mTickPathLength:F

.field public final mTickPathMeasure:Landroid/graphics/PathMeasure;

.field public mTickStartPoint:F

.field public mTickStartPointAnimator:Landroid/animation/ValueAnimator;

.field public final mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/systemui/widget/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/systemui/widget/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mOutRect:Landroid/graphics/Rect;

    .line 8
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 11
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/systemui/widget/CircleAndTickAnimView$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/systemui/widget/CircleAndTickAnimView$1;-><init>(Lcom/miui/systemui/widget/CircleAndTickAnimView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    .line 14
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    .line 15
    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 16
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x32

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 17
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/systemui/widget/CircleAndTickAnimView$1;

    invoke-direct {v3, p0, p3}, Lcom/miui/systemui/widget/CircleAndTickAnimView$1;-><init>(Lcom/miui/systemui/widget/CircleAndTickAnimView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    .line 19
    fill-array-data v2, :array_2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    .line 20
    new-instance v3, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/miui/systemui/widget/CircleAndTickAnimView$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/systemui/widget/CircleAndTickAnimView$1;-><init>(Lcom/miui/systemui/widget/CircleAndTickAnimView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    iget-object v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 24
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x40a00000    # 5.0f

    .line 25
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 27
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 28
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const p2, 0x7f0607f6    # @color/recent_tick_anim_color '#ff43c773'

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->stopAnimator()V

    .line 31
    sget p1, Lcom/miui/utils/ViewAnimUtils;->$r8$clinit:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result p1

    .line 33
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3, p3, p3, p3}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p2

    new-array p3, v4, [Lmiuix/animation/base/AnimConfig;

    .line 34
    invoke-interface {p2, p0, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e9eb852    # 0.31f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 22
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v1, v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 30
    return-object p0
    .line 33
.end method

.method private getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 7
    move-result v0

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result v1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 19
    move-result p0

    .line 22
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v1

    .line 26
    :cond_1
    return v1
    .line 27
.end method

.method private getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 7
    move-result v0

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result v1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 19
    move-result p0

    .line 22
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v1

    .line 26
    :cond_1
    return v1
    .line 27
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    return-void
    .line 19
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 12
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    .line 16
    iget-object v3, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mOutRect:Landroid/graphics/Rect;

    .line 18
    const/16 v4, 0x11

    .line 20
    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 22
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-object v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mOutRect:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 29
    iget-boolean v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 32
    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    const/16 v1, 0xff

    .line 38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    iget v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mCircleRotateDegrees:F

    .line 51
    const/high16 v2, 0x42b40000    # 90.0f

    .line 53
    div-float/2addr v1, v2

    .line 55
    const/high16 v2, 0x3f800000    # 1.0f

    .line 56
    add-float/2addr v1, v2

    .line 58
    const/high16 v2, 0x437f0000    # 255.0f

    .line 59
    mul-float/2addr v1, v2

    .line 61
    float-to-int v1, v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    iget v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mCircleRotateDegrees:F

    .line 69
    iget v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mDiameter:I

    .line 71
    int-to-float v2, v1

    .line 73
    const/high16 v3, 0x40000000    # 2.0f

    .line 74
    div-float/2addr v2, v3

    .line 76
    int-to-float v1, v1

    .line 77
    div-float/2addr v1, v3

    .line 78
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 79
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 95
    iget v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPathLength:F

    .line 98
    iget v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPoint:F

    .line 100
    mul-float/2addr v1, v0

    .line 102
    iget v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickEndPoint:F

    .line 103
    mul-float/2addr v0, v2

    .line 105
    iget-object v2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    .line 106
    iget-object v3, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    .line 108
    const/4 v4, 0x1

    .line 110
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 111
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    .line 114
    iget-object p0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 121
    return-void
    .line 124
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mDiameter:I

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 4
    return-void
    .line 7
.end method

.method public setBackDrawable(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawables(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->setNormalDrawable(I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->setBackDrawable(I)V

    .line 5
    invoke-direct {p0}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->getIntrinsicWidth()I

    .line 8
    move-result p1

    .line 11
    invoke-direct {p0}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->getIntrinsicHeight()I

    .line 12
    move-result p2

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 16
    move-result p1

    .line 19
    iput p1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mDiameter:I

    .line 20
    iget-object p2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    new-instance p1, Landroid/graphics/Path;

    .line 28
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 30
    iget p2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mDiameter:I

    .line 33
    int-to-float p2, p2

    .line 35
    const v1, 0x3e8a3d71    # 0.27f

    .line 36
    mul-float/2addr v1, p2

    .line 39
    const v2, 0x3ecccccd    # 0.4f

    .line 40
    mul-float/2addr p2, v2

    .line 43
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 44
    iget p2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mDiameter:I

    .line 47
    int-to-float p2, p2

    .line 49
    const v1, 0x3eeb851f    # 0.46f

    .line 50
    mul-float/2addr v1, p2

    .line 53
    const v2, 0x3f147ae1    # 0.58f

    .line 54
    mul-float/2addr p2, v2

    .line 57
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    iget p2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mDiameter:I

    .line 61
    int-to-float p2, p2

    .line 63
    const v1, 0x3f1eb852    # 0.62f

    .line 64
    mul-float/2addr v1, p2

    .line 67
    const v2, 0x3ed70a3d    # 0.42f

    .line 68
    mul-float/2addr p2, v2

    .line 71
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object p2, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    .line 75
    invoke-virtual {p2, p1, v0}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 77
    iget-object p1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    .line 80
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    .line 82
    move-result p1

    .line 85
    iput p1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickPathLength:F

    .line 86
    return-void
    .line 88
.end method

.method public setNormalDrawable(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->setNormalDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final stopAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 19
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mCircleRotateDegrees:F

    .line 23
    iput v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickStartPoint:F

    .line 25
    iput v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mTickEndPoint:F

    .line 27
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 30
    return-void
.end method
