.class public Lcom/android/settings/display/HandyModeGuideView;
.super Landroid/view/View;
.source "HandyModeGuideView.java"


# instance fields
.field mAnimator:Landroid/animation/ValueAnimator;

.field mGuidePhoneScreen:Landroid/graphics/Rect;

.field mIsLeft:Z

.field mPaint:Landroid/graphics/Paint;

.field mReversing:Z

.field mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/HandyModeGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->handy_mode_guide_screen_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->handy_mode_guide_screen_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/settings/R$dimen;->handy_mode_guide_screen_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->handy_mode_guide_screen_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr v0, p2

    invoke-direct {v1, p1, p2, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/settings/display/HandyModeGuideView;->mGuidePhoneScreen:Landroid/graphics/Rect;

    .line 53
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "animator_duration_scale"

    const/high16 p3, 0x3f800000    # 1.0f

    .line 53
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 62
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 64
    new-instance p2, Lcom/android/settings/display/HandyModeGuideView$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/HandyModeGuideView$1;-><init>(Lcom/android/settings/display/HandyModeGuideView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/settings/display/HandyModeGuideView$2;

    invoke-direct {p2, p0}, Lcom/android/settings/display/HandyModeGuideView$2;-><init>(Lcom/android/settings/display/HandyModeGuideView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$integer;->handy_mode_guide_animate_duration_idle:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 112
    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawScaleScreen(Landroid/graphics/Canvas;)V
    .locals 4

    .line 132
    iget v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 145
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/display/HandyModeGuideView;->mReversing:Z

    if-eqz v1, :cond_3

    sub-float v0, v2, v0

    .line 147
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/HandyModeUtils;->getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    .line 149
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->handy_mode_guide_scale_screen_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mIsLeft:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mGuidePhoneScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mGuidePhoneScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/display/HandyModeGuideView;->mGuidePhoneScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mGuidePhoneScreen:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTouchCircle(Landroid/graphics/Canvas;)V
    .locals 10

    .line 158
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->handy_mode_guide_circle_radius_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->handy_mode_guide_circle_radius_small:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->handy_mode_guide_circle_move_distance:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 165
    iget-boolean v5, p0, Lcom/android/settings/display/HandyModeGuideView;->mIsLeft:Z

    if-eqz v5, :cond_1

    neg-float v4, v4

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->handy_mode_guide_circle_vertical_center:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    int-to-float v6, v6

    .line 172
    iget v8, p0, Lcom/android/settings/display/HandyModeGuideView;->mState:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    const/high16 v9, 0x3f800000    # 1.0f

    if-eq v8, v7, :cond_4

    const/4 v7, 0x3

    if-eq v8, v7, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    sub-float/2addr v9, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v3, v2

    .line 188
    iget-boolean v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mReversing:Z

    if-nez v0, :cond_3

    add-float/2addr v6, v4

    :cond_3
    :goto_1
    move v0, v9

    goto :goto_2

    .line 181
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/display/HandyModeGuideView;->mReversing:Z

    if-eqz v2, :cond_5

    sub-float v0, v9, v0

    :cond_5
    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    goto :goto_1

    :cond_6
    sub-float v3, v2, v3

    mul-float/2addr v3, v0

    sub-float v3, v2, v3

    .line 176
    iget-boolean v2, p0, Lcom/android/settings/display/HandyModeGuideView;->mReversing:Z

    if-eqz v2, :cond_7

    add-float/2addr v6, v4

    :cond_7
    :goto_2
    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->handy_mode_guide_touch_circle_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 194
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 197
    iget-object v1, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v5, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 126
    iget-object p0, p0, Lcom/android/settings/display/HandyModeGuideView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/display/HandyModeGuideView;->drawScaleScreen(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/settings/display/HandyModeGuideView;->drawTouchCircle(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 204
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
