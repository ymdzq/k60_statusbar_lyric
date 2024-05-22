.class public final Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# instance fields
.field public mScrollState:I

.field public final synthetic this$0:Landroidx/viewpager/widget/PagerTitleStrip;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/PagerTitleStrip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 2
    invoke-virtual {p0, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 2
    iget-object v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 10
    iget-object v2, v2, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 21
    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 23
    const/4 v1, 0x0

    .line 25
    cmpl-float v2, v0, v1

    .line 26
    if-ltz v2, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 32
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 34
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0, v1, v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 39
    return-void
    .line 42
.end method

.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    .line 2
    return-void
    .line 4
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .line 1
    const/high16 p3, 0x3f000000    # 0.5f

    .line 2
    cmpl-float p3, p2, p3

    .line 4
    if-lez p3, :cond_0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 10
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 13
    return-void
    .line 16
.end method

.method public final onPageSelected(I)V
    .locals 2

    .line 1
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    .line 2
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 6
    iget-object v0, p1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 14
    iget-object v1, v1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 16
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    .line 22
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 25
    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 27
    const/4 v0, 0x0

    .line 29
    cmpl-float v1, p1, v0

    .line 30
    if-ltz v1, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    move p1, v0

    .line 35
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 36
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 38
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 43
    :cond_1
    return-void
    .line 46
.end method
