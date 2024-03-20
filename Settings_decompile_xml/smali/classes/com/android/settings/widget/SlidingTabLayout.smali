.class public final Lcom/android/settings/widget/SlidingTabLayout;
.super Landroid/widget/FrameLayout;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;
    }
.end annotation


# instance fields
.field private final mIndicatorView:Landroid/view/View;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field private final mTitleView:Landroid/widget/LinearLayout;

.field private mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTitleView(Lcom/android/settings/widget/SlidingTabLayout;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Lcom/android/settings/widget/SlidingTabLayout;)Lcom/android/settings/widget/RtlCompatibleViewPager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monViewPagerPageChanged(Lcom/android/settings/widget/SlidingTabLayout;IF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SlidingTabLayout;->onViewPagerPageChanged(IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 51
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    sget p1, Lcom/android/settings/R$layout;->sliding_tab_indicator_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    const/4 p2, -0x1

    const/4 v1, -0x2

    .line 55
    invoke-virtual {p0, v0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getIndicatorLeft()I
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 149
    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 151
    iget v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    sub-float/2addr v1, p0

    int-to-float p0, v0

    mul-float/2addr v1, p0

    add-float/2addr v2, v1

    float-to-int v0, v2

    :cond_0
    return v0
.end method

.method private isRtlMode()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onViewPagerPageChanged(IF)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectedPosition:I

    .line 125
    iput p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mSelectionOffset:F

    .line 127
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->isRtlMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->getIndicatorLeft()I

    move-result p1

    .line 128
    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private populateTabStrip()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 134
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settings/R$layout;->sliding_tab_title_view:I

    iget-object v5, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v4, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    iget-object v4, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v4}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getCurrentItem()I

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/RtlCompatibleViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 90
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 92
    iget-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 93
    iget-object p3, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p5

    .line 96
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v1, p5, v3, v2, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->isRtlMode()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    sub-int p3, p4, p3

    sub-int p2, p1, p2

    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    sub-int p2, p1, p2

    invoke-virtual {p0, v3, p2, p3, p1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 80
    iget-object p2, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    .line 80
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 82
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 82
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 84
    iget-object p0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mIndicatorView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public setViewPager(Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/SlidingTabLayout;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 66
    iput-object p1, p0, Lcom/android/settings/widget/SlidingTabLayout;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    if-eqz p1, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/android/settings/widget/SlidingTabLayout;Lcom/android/settings/widget/SlidingTabLayout$InternalViewPagerListener-IA;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/widget/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
