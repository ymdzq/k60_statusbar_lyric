.class public Landroidx/leanback/widget/BaseCardView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LB_PRESSED_STATE_SET:[I


# instance fields
.field public final mActivatedAnimDuration:I

.field public mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

.field public final mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

.field public mCardType:I

.field public mDelaySelectedAnim:Z

.field public final mExtraViewList:Ljava/util/ArrayList;

.field public mExtraVisibility:I

.field public mInfoAlpha:F

.field public mInfoOffset:F

.field public final mInfoViewList:Ljava/util/ArrayList;

.field public mInfoVisFraction:F

.field public mInfoVisibility:I

.field public final mMainViewList:Ljava/util/ArrayList;

.field public mMeasuredHeight:I

.field public mMeasuredWidth:I

.field public final mSelectedAnimDuration:I

.field public final mSelectedAnimationDelay:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10100a7    # @android:attr/state_pressed

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400c9    # @attr/baseCardViewStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BaseCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroidx/leanback/widget/BaseCardView$1;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/BaseCardView$1;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 5
    sget-object v0, Landroidx/leanback/R$styleable;->lbBaseCardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 6
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p3, 0x1

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x5

    .line 11
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 13
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    if-ge p2, v0, :cond_2

    .line 14
    iput v0, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0079    # @integer/lb_card_selected_animation_delay '400'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x6

    .line 16
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b007a    # @integer/lb_card_selected_animation_duration '150'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x7

    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0078    # @integer/lb_card_activated_animation_duration '150'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 20
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    iput-boolean p3, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 27
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 28
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    return-void

    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    throw p0
.end method


# virtual methods
.method public final animateInfoOffset(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    move-result v1

    .line 15
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    move-result v2

    .line 19
    move v3, v0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v5

    .line 27
    if-ge v3, v5, :cond_1

    .line 28
    iget-object v5, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 35
    check-cast v5, Landroid/view/View;

    .line 36
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {v5, v1, v2}, Landroid/view/View;->measure(II)V

    .line 41
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    move-result v5

    .line 47
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result v4

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    move v4, v0

    .line 55
    :cond_1
    new-instance v1, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 56
    iget v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 58
    if-eqz p1, :cond_2

    .line 60
    int-to-float p1, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 p1, 0x0

    .line 64
    :goto_1
    const/4 v3, 0x2

    .line 65
    invoke-direct {v1, p0, v2, p1, v3}, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FFI)V

    .line 66
    iput-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 69
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 71
    int-to-long v2, p1

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 77
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 79
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 81
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 87
    new-instance v1, Landroidx/leanback/widget/BaseCardView$2;

    .line 89
    invoke-direct {v1, p0, v0}, Landroidx/leanback/widget/BaseCardView$2;-><init>(Landroidx/leanback/widget/BaseCardView;I)V

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 94
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 97
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 99
    return-void
    .line 102
.end method

.method public final cancelAnimations()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3
    instance-of p0, p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroidx/leanback/widget/BaseCardView$LayoutParams;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/leanback/widget/BaseCardView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCardType()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 2
    return p0
    .line 4
.end method

.method public getExtraVisibility()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget p0, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 2
    return p0
    .line 4
.end method

.method public final getFinalInfoAlpha()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 7
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 20
    :goto_0
    return p0
    .line 22
.end method

.method public final getFinalInfoVisFraction()F
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 2
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 11
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 19
    :goto_0
    return p0
    .line 21
.end method

.method public getInfoVisibility()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 2
    return p0
    .line 4
.end method

.method public final onCreateDrawableState(I)[I
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    .line 2
    move-result-object p0

    .line 5
    array-length p1, p0

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v0, p1, :cond_2

    .line 10
    aget v3, p0, v0

    .line 12
    const v4, 0x10100a7    # @android:attr/state_pressed

    .line 14
    const/4 v5, 0x1

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    move v1, v5

    .line 20
    :cond_0
    const v4, 0x101009e    # @android:attr/state_enabled

    .line 21
    if-ne v3, v4, :cond_1

    .line 24
    move v2, v5

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    if-eqz v1, :cond_3

    .line 30
    if-eqz v2, :cond_3

    .line 32
    sget-object p0, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 34
    return-object p0

    .line 36
    :cond_3
    if-eqz v1, :cond_4

    .line 37
    sget-object p0, Landroidx/leanback/widget/BaseCardView;->LB_PRESSED_STATE_SET:[I

    .line 39
    return-object p0

    .line 41
    :cond_4
    if-eqz v2, :cond_5

    .line 42
    sget-object p0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 44
    return-object p0

    .line 46
    :cond_5
    sget-object p0, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 47
    return-object p0
    .line 49
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 10
    return-void
    .line 13
.end method

.method public final onLayout(ZIIII)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 3
    move-result v1

    .line 6
    int-to-float v1, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v4

    .line 15
    const/16 v5, 0x8

    .line 16
    if-ge v3, v4, :cond_1

    .line 18
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 25
    check-cast v4, Landroid/view/View;

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v6

    .line 31
    if-eq v6, v5, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 34
    move-result v5

    .line 37
    float-to-int v6, v1

    .line 38
    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 41
    move-result v8

    .line 44
    add-int/2addr v8, v7

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 46
    move-result v7

    .line 49
    int-to-float v7, v7

    .line 50
    add-float/2addr v7, v1

    .line 51
    float-to-int v7, v7

    .line 52
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/view/View;->layout(IIII)V

    .line 53
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 56
    move-result v4

    .line 59
    int-to-float v4, v4

    .line 60
    add-float/2addr v1, v4

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 65
    const/4 v4, 0x1

    .line 67
    if-eqz v3, :cond_2

    .line 68
    move v3, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v3, v2

    .line 72
    :goto_1
    if-eqz v3, :cond_c

    .line 73
    const/4 v3, 0x0

    .line 75
    move v6, v2

    .line 76
    move v7, v3

    .line 77
    :goto_2
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result v8

    .line 83
    if-ge v6, v8, :cond_3

    .line 84
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v8

    .line 91
    check-cast v8, Landroid/view/View;

    .line 92
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    move-result v8

    .line 97
    int-to-float v8, v8

    .line 98
    add-float/2addr v7, v8

    .line 99
    add-int/lit8 v6, v6, 0x1

    .line 100
    goto :goto_2

    .line 102
    :cond_3
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 103
    if-ne v6, v4, :cond_4

    .line 105
    sub-float/2addr v1, v7

    .line 107
    cmpg-float v6, v1, v3

    .line 108
    if-gez v6, :cond_6

    .line 110
    move v1, v3

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    const/4 v8, 0x2

    .line 114
    if-ne v6, v8, :cond_5

    .line 115
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 117
    if-ne v6, v8, :cond_6

    .line 119
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 121
    mul-float/2addr v7, v6

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    iget v6, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 125
    sub-float/2addr v1, v6

    .line 127
    :cond_6
    :goto_3
    move v6, v2

    .line 128
    :goto_4
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v8

    .line 134
    if-ge v6, v8, :cond_9

    .line 135
    iget-object v8, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    move-result-object v8

    .line 142
    check-cast v8, Landroid/view/View;

    .line 143
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 145
    move-result v9

    .line 148
    if-eq v9, v5, :cond_8

    .line 149
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 151
    move-result v9

    .line 154
    int-to-float v10, v9

    .line 155
    cmpl-float v10, v10, v7

    .line 156
    if-lez v10, :cond_7

    .line 158
    float-to-int v9, v7

    .line 160
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 161
    move-result v10

    .line 164
    float-to-int v11, v1

    .line 165
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 166
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 168
    move-result v13

    .line 171
    add-int/2addr v13, v12

    .line 172
    int-to-float v9, v9

    .line 173
    add-float/2addr v1, v9

    .line 174
    float-to-int v12, v1

    .line 175
    invoke-virtual {v8, v10, v11, v13, v12}, Landroid/view/View;->layout(IIII)V

    .line 176
    sub-float/2addr v7, v9

    .line 179
    cmpg-float v8, v7, v3

    .line 180
    if-gtz v8, :cond_8

    .line 182
    goto :goto_5

    .line 184
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 185
    goto :goto_4

    .line 187
    :cond_9
    :goto_5
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 188
    const/4 v6, 0x3

    .line 190
    if-ne v3, v6, :cond_a

    .line 191
    goto :goto_6

    .line 193
    :cond_a
    move v4, v2

    .line 194
    :goto_6
    if-eqz v4, :cond_c

    .line 195
    move v3, v2

    .line 197
    :goto_7
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 200
    move-result v4

    .line 203
    if-ge v3, v4, :cond_c

    .line 204
    iget-object v4, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object v4

    .line 211
    check-cast v4, Landroid/view/View;

    .line 212
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 214
    move-result v6

    .line 217
    if-eq v6, v5, :cond_b

    .line 218
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 220
    move-result v6

    .line 223
    float-to-int v7, v1

    .line 224
    iget v8, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 227
    move-result v9

    .line 230
    add-int/2addr v9, v8

    .line 231
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 232
    move-result v8

    .line 235
    int-to-float v8, v8

    .line 236
    add-float/2addr v8, v1

    .line 237
    float-to-int v8, v8

    .line 238
    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 239
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 242
    move-result v4

    .line 245
    int-to-float v4, v4

    .line 246
    add-float/2addr v1, v4

    .line 247
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 248
    goto :goto_7

    .line 250
    :cond_c
    sub-int v1, p4, p2

    .line 251
    sub-int v3, p5, p3

    .line 253
    invoke-virtual {p0, v2, v2, v1, v3}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 255
    return-void
    .line 258
.end method

.method public final onMeasure(II)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 4
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 6
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v2, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 23
    move-result v2

    .line 26
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 27
    const/4 v4, 0x1

    .line 29
    if-eqz v3, :cond_0

    .line 30
    move v5, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v5, v1

    .line 34
    :goto_0
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eqz v5, :cond_6

    .line 37
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 39
    if-eqz v5, :cond_5

    .line 41
    if-eq v5, v4, :cond_4

    .line 43
    if-eq v5, v6, :cond_1

    .line 45
    goto :goto_1

    .line 47
    :cond_1
    if-ne v3, v6, :cond_3

    .line 48
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 50
    cmpl-float v3, v3, v7

    .line 52
    if-lez v3, :cond_2

    .line 54
    goto :goto_2

    .line 56
    :cond_2
    :goto_1
    move v3, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 59
    move-result v3

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 64
    move-result v3

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    :goto_2
    move v3, v4

    .line 69
    :goto_3
    if-eqz v3, :cond_6

    .line 70
    move v3, v4

    .line 72
    goto :goto_4

    .line 73
    :cond_6
    move v3, v1

    .line 74
    :goto_4
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 75
    const/4 v8, 0x3

    .line 77
    if-ne v5, v8, :cond_7

    .line 78
    move v5, v4

    .line 80
    goto :goto_5

    .line 81
    :cond_7
    move v5, v1

    .line 82
    :goto_5
    if-eqz v5, :cond_8

    .line 83
    iget v5, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 85
    cmpl-float v5, v5, v7

    .line 87
    if-lez v5, :cond_8

    .line 89
    move v5, v4

    .line 91
    goto :goto_6

    .line 92
    :cond_8
    move v5, v1

    .line 93
    :goto_6
    move v9, v1

    .line 94
    :goto_7
    const/16 v10, 0x8

    .line 95
    if-ge v9, v2, :cond_e

    .line 97
    invoke-virtual {p0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 99
    move-result-object v11

    .line 102
    if-nez v11, :cond_9

    .line 103
    goto :goto_8

    .line 105
    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    move-result-object v12

    .line 109
    check-cast v12, Landroidx/leanback/widget/BaseCardView$LayoutParams;

    .line 110
    iget v12, v12, Landroidx/leanback/widget/BaseCardView$LayoutParams;->viewType:I

    .line 112
    if-ne v12, v4, :cond_b

    .line 114
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 116
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 118
    iget-object v12, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    if-eqz v3, :cond_a

    .line 126
    move v10, v1

    .line 128
    :cond_a
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 129
    goto :goto_8

    .line 132
    :cond_b
    if-ne v12, v6, :cond_d

    .line 133
    iget-object v12, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    if-eqz v5, :cond_c

    .line 140
    move v10, v1

    .line 142
    :cond_c
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    goto :goto_8

    .line 146
    :cond_d
    iget-object v10, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 155
    goto :goto_7

    .line 157
    :cond_e
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 158
    move-result v2

    .line 161
    move v3, v1

    .line 162
    move v5, v3

    .line 163
    move v9, v5

    .line 164
    :goto_9
    iget-object v11, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 167
    move-result v11

    .line 170
    if-ge v3, v11, :cond_10

    .line 171
    iget-object v11, v0, Landroidx/leanback/widget/BaseCardView;->mMainViewList:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    move-result-object v11

    .line 178
    check-cast v11, Landroid/view/View;

    .line 179
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 181
    move-result v12

    .line 184
    if-eq v12, v10, :cond_f

    .line 185
    invoke-virtual {p0, v11, v2, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 187
    iget v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 190
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 192
    move-result v13

    .line 195
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 196
    move-result v12

    .line 199
    iput v12, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 200
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 202
    move-result v12

    .line 205
    add-int/2addr v5, v12

    .line 206
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    .line 207
    move-result v11

    .line 210
    invoke-static {v9, v11}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 211
    move-result v9

    .line 214
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 215
    goto :goto_9

    .line 217
    :cond_10
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 218
    div-int/2addr v3, v6

    .line 220
    int-to-float v3, v3

    .line 221
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 222
    div-int/lit8 v3, v5, 0x2

    .line 225
    int-to-float v3, v3

    .line 227
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 228
    iget v3, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 231
    const/high16 v11, 0x40000000    # 2.0f

    .line 233
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 235
    move-result v3

    .line 238
    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 239
    if-eqz v11, :cond_11

    .line 241
    move v11, v4

    .line 243
    goto :goto_a

    .line 244
    :cond_11
    move v11, v1

    .line 245
    :goto_a
    if-eqz v11, :cond_18

    .line 246
    move v11, v1

    .line 248
    move v12, v11

    .line 249
    :goto_b
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 252
    move-result v13

    .line 255
    if-ge v11, v13, :cond_14

    .line 256
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    move-result-object v13

    .line 263
    check-cast v13, Landroid/view/View;

    .line 264
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 266
    move-result v14

    .line 269
    if-eq v14, v10, :cond_13

    .line 270
    invoke-virtual {p0, v13, v3, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 272
    iget v14, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 275
    if-eq v14, v4, :cond_12

    .line 277
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 279
    move-result v14

    .line 282
    add-int/2addr v14, v12

    .line 283
    move v12, v14

    .line 284
    :cond_12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    .line 285
    move-result v13

    .line 288
    invoke-static {v9, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 289
    move-result v9

    .line 292
    :cond_13
    add-int/lit8 v11, v11, 0x1

    .line 293
    goto :goto_b

    .line 295
    :cond_14
    iget v11, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 296
    if-ne v11, v8, :cond_15

    .line 298
    move v8, v4

    .line 300
    goto :goto_c

    .line 301
    :cond_15
    move v8, v1

    .line 302
    :goto_c
    if-eqz v8, :cond_17

    .line 303
    move v8, v1

    .line 305
    move v11, v8

    .line 306
    :goto_d
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 309
    move-result v13

    .line 312
    if-ge v8, v13, :cond_19

    .line 313
    iget-object v13, v0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v13

    .line 320
    check-cast v13, Landroid/view/View;

    .line 321
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 323
    move-result v14

    .line 326
    if-eq v14, v10, :cond_16

    .line 327
    invoke-virtual {p0, v13, v3, v2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 329
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 332
    move-result v14

    .line 335
    add-int/2addr v11, v14

    .line 336
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    .line 337
    move-result v13

    .line 340
    invoke-static {v9, v13}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 341
    move-result v9

    .line 344
    :cond_16
    add-int/lit8 v8, v8, 0x1

    .line 345
    goto :goto_d

    .line 347
    :cond_17
    move v11, v1

    .line 348
    goto :goto_e

    .line 349
    :cond_18
    move v11, v1

    .line 350
    move v12, v11

    .line 351
    :cond_19
    :goto_e
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 352
    if-eqz v2, :cond_1a

    .line 354
    move v2, v4

    .line 356
    goto :goto_f

    .line 357
    :cond_1a
    move v2, v1

    .line 358
    :goto_f
    if-eqz v2, :cond_1b

    .line 359
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 361
    if-ne v2, v6, :cond_1b

    .line 363
    move v1, v4

    .line 365
    :cond_1b
    int-to-float v2, v5

    .line 366
    int-to-float v3, v12

    .line 367
    if-eqz v1, :cond_1c

    .line 368
    iget v4, v0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 370
    mul-float/2addr v3, v4

    .line 372
    :cond_1c
    add-float/2addr v2, v3

    .line 373
    int-to-float v3, v11

    .line 374
    add-float/2addr v2, v3

    .line 375
    if-eqz v1, :cond_1d

    .line 376
    goto :goto_10

    .line 378
    :cond_1d
    iget v7, v0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 379
    :goto_10
    sub-float/2addr v2, v7

    .line 381
    float-to-int v1, v2

    .line 382
    iput v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 383
    iget v1, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredWidth:I

    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 387
    move-result v2

    .line 390
    add-int/2addr v2, v1

    .line 391
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 392
    move-result v1

    .line 395
    add-int/2addr v1, v2

    .line 396
    move/from16 v2, p1

    .line 397
    invoke-static {v1, v2, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 399
    move-result v1

    .line 402
    iget v2, v0, Landroidx/leanback/widget/BaseCardView;->mMeasuredHeight:I

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 405
    move-result v3

    .line 408
    add-int/2addr v3, v2

    .line 409
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 410
    move-result v2

    .line 413
    add-int/2addr v2, v3

    .line 414
    shl-int/lit8 v3, v9, 0x10

    .line 415
    move/from16 v4, p2

    .line 417
    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 419
    move-result v2

    .line 422
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 423
    return-void
    .line 426
.end method

.method public setActivated(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 2
    move-result v0

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 8
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 11
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v1

    .line 19
    :goto_0
    if-eqz p1, :cond_4

    .line 20
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 22
    if-ne p1, v0, :cond_4

    .line 24
    if-eqz p1, :cond_3

    .line 26
    if-eq p1, v0, :cond_2

    .line 28
    const/4 v0, 0x2

    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 35
    move-result v0

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isActivated()Z

    .line 40
    move-result v0

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 44
    :cond_4
    return-void
    .line 47
.end method

.method public setCardType(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    if-ltz p1, :cond_0

    .line 6
    const/4 v0, 0x4

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "Invalid card type specified: "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, ". Defaulting to type CARD_TYPE_MAIN_ONLY."

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    const-string v0, "BaseCardView"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 p1, 0x0

    .line 38
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 39
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 41
    :cond_1
    return-void
    .line 44
.end method

.method public setExtraVisibility(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraVisibility:I

    .line 6
    :cond_0
    return-void
    .line 8
.end method

.method public final setInfoViewVisibility(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 2
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0x8

    .line 5
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    if-eqz p1, :cond_0

    .line 11
    move p1, v4

    .line 13
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 19
    if-ge p1, v0, :cond_e

    .line 20
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/View;

    .line 28
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_0
    move p1, v4

    .line 36
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v0

    .line 42
    if-ge p1, v0, :cond_1

    .line 43
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/View;

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    add-int/lit8 p1, p1, 0x1

    .line 56
    goto :goto_1

    .line 58
    :cond_1
    :goto_2
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    move-result p1

    .line 64
    if-ge v4, p1, :cond_2

    .line 65
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mExtraViewList:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Landroid/view/View;

    .line 73
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_2

    .line 80
    :cond_2
    iput v3, p0, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    .line 81
    goto/16 :goto_8

    .line 83
    :cond_3
    const/4 v1, 0x1

    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    const/4 v6, 0x2

    .line 88
    if-ne v0, v6, :cond_9

    .line 89
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 91
    if-ne v0, v6, :cond_7

    .line 93
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 95
    if-eqz p1, :cond_4

    .line 98
    move v0, v4

    .line 100
    :goto_3
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 103
    move-result v2

    .line 106
    if-ge v0, v2, :cond_4

    .line 107
    iget-object v2, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v2

    .line 114
    check-cast v2, Landroid/view/View;

    .line 115
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 120
    goto :goto_3

    .line 122
    :cond_4
    if-eqz p1, :cond_5

    .line 123
    move v3, v5

    .line 125
    :cond_5
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 126
    cmpl-float p1, p1, v3

    .line 128
    if-nez p1, :cond_6

    .line 130
    goto/16 :goto_8

    .line 132
    :cond_6
    new-instance p1, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 134
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 136
    invoke-direct {p1, p0, v0, v3, v1}, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FFI)V

    .line 138
    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 141
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimDuration:I

    .line 143
    int-to-long v2, v0

    .line 145
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 149
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 151
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 156
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 159
    new-instance v0, Landroidx/leanback/widget/BaseCardView$2;

    .line 161
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/BaseCardView$2;-><init>(Landroidx/leanback/widget/BaseCardView;I)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 166
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 169
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 171
    goto/16 :goto_8

    .line 174
    :cond_7
    move v0, v4

    .line 176
    :goto_4
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 179
    move-result v1

    .line 182
    if-ge v0, v1, :cond_e

    .line 183
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 190
    check-cast v1, Landroid/view/View;

    .line 191
    if-eqz p1, :cond_8

    .line 193
    move v3, v4

    .line 195
    goto :goto_5

    .line 196
    :cond_8
    move v3, v2

    .line 197
    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 201
    goto :goto_4

    .line 203
    :cond_9
    if-ne v0, v1, :cond_e

    .line 204
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 206
    if-eqz p1, :cond_a

    .line 209
    move v0, v4

    .line 211
    :goto_6
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 214
    move-result v1

    .line 217
    if-ge v0, v1, :cond_a

    .line 218
    iget-object v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v1

    .line 225
    check-cast v1, Landroid/view/View;

    .line 226
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 231
    goto :goto_6

    .line 233
    :cond_a
    if-eqz p1, :cond_b

    .line 234
    move v0, v5

    .line 236
    goto :goto_7

    .line 237
    :cond_b
    move v0, v3

    .line 238
    :goto_7
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 239
    cmpl-float v0, v0, v1

    .line 241
    if-nez v0, :cond_c

    .line 243
    goto :goto_8

    .line 245
    :cond_c
    new-instance v0, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 246
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 248
    if-eqz p1, :cond_d

    .line 250
    move v3, v5

    .line 252
    :cond_d
    invoke-direct {v0, p0, v1, v3, v4}, Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;-><init>(Landroidx/leanback/widget/BaseCardView;FFI)V

    .line 253
    iput-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 256
    iget p1, p0, Landroidx/leanback/widget/BaseCardView;->mActivatedAnimDuration:I

    .line 258
    int-to-long v1, p1

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 261
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 264
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 266
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 271
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 274
    new-instance v0, Landroidx/leanback/widget/BaseCardView$2;

    .line 276
    invoke-direct {v0, p0, v6}, Landroidx/leanback/widget/BaseCardView$2;-><init>(Landroidx/leanback/widget/BaseCardView;I)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 281
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnim:Landroidx/leanback/widget/BaseCardView$InfoAlphaAnimation;

    .line 284
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    :cond_e
    :goto_8
    return-void
    .line 289
.end method

.method public setInfoVisibility(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->cancelAnimations()V

    .line 6
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 9
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoVisFraction()F

    .line 11
    move-result p1

    .line 14
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 17
    invoke-virtual {p0}, Landroidx/leanback/widget/BaseCardView;->getFinalInfoAlpha()F

    .line 20
    move-result p1

    .line 23
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 24
    cmpl-float v0, p1, v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    iput p1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 30
    const/4 p1, 0x0

    .line 32
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v0

    .line 38
    if-ge p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoViewList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/View;

    .line 47
    iget v1, p0, Landroidx/leanback/widget/BaseCardView;->mInfoAlpha:F

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_0
    return-void
    .line 57
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 2
    move-result v0

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 11
    move-result p1

    .line 14
    iget-object v0, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 17
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mCardType:I

    .line 20
    const/4 v1, 0x3

    .line 22
    if-ne v0, v1, :cond_2

    .line 23
    if-eqz p1, :cond_1

    .line 25
    iget-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 27
    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 33
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/BaseCardView;->mAnimationTrigger:Landroidx/leanback/widget/BaseCardView$1;

    .line 40
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mSelectedAnimationDelay:I

    .line 42
    int-to-long v0, v0

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->animateInfoOffset(Z)V

    .line 50
    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/BaseCardView;->mInfoVisibility:I

    .line 54
    const/4 v1, 0x2

    .line 56
    if-ne v0, v1, :cond_3

    .line 57
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/BaseCardView;->setInfoViewVisibility(Z)V

    .line 59
    :cond_3
    :goto_0
    return-void
    .line 62
.end method

.method public setSelectedAnimationDelayed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/widget/BaseCardView;->mDelaySelectedAnim:Z

    .line 2
    return-void
    .line 4
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method
