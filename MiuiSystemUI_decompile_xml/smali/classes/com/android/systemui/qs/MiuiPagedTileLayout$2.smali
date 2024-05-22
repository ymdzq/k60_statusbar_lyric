.class public final Lcom/android/systemui/qs/MiuiPagedTileLayout$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiPagedTileLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$2;->this$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 2
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$2;->this$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    int-to-float v1, p1

    .line 9
    add-float/2addr v1, p2

    .line 10
    iput v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicatorPosition:F

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiPageIndicator;->setLocation(F)V

    .line 13
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;

    .line 16
    if-eqz p2, :cond_6

    .line 18
    if-eqz p3, :cond_1

    .line 20
    iget p3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastExpansion:F

    .line 22
    const/4 v0, 0x0

    .line 24
    cmpl-float p3, p3, v0

    .line 25
    if-nez p3, :cond_3

    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 29
    move-result p3

    .line 32
    const/4 v0, 0x1

    .line 33
    if-eqz p3, :cond_2

    .line 34
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result p0

    .line 41
    sub-int/2addr p0, v0

    .line 42
    if-ne p1, p0, :cond_3

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    if-nez p1, :cond_3

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    const/4 v0, 0x0

    .line 49
    :goto_0
    check-cast p2, Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 50
    iget-boolean p0, p2, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 52
    if-ne p0, v0, :cond_4

    .line 54
    goto :goto_1

    .line 56
    :cond_4
    if-nez v0, :cond_5

    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 59
    :cond_5
    iput-boolean v0, p2, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 62
    :cond_6
    :goto_1
    return-void
    .line 64
.end method

.method public final onPageSelected(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout$2;->this$0:Lcom/android/systemui/qs/MiuiPagedTileLayout;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->updateSelected()V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;

    .line 14
    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 18
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result p0

    .line 30
    sub-int/2addr p0, v2

    .line 31
    if-ne p1, p0, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    if-nez p1, :cond_2

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    const/4 v2, 0x0

    .line 38
    :goto_0
    check-cast v0, Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 39
    iget-boolean p0, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 41
    if-ne p0, v2, :cond_3

    .line 43
    goto :goto_1

    .line 45
    :cond_3
    if-nez v2, :cond_4

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 48
    :cond_4
    iput-boolean v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 51
    :cond_5
    :goto_1
    return-void
    .line 53
.end method
