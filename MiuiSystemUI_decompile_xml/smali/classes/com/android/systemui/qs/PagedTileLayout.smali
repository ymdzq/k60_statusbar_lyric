.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# static fields
.field public static final SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

.field public mBounceAnimatorSet:Landroid/animation/AnimatorSet;

.field public mDistributeTiles:Z

.field public mExcessHeight:I

.field public mLastExcessHeight:I

.field public mLastExpansion:F

.field public mLastMaxHeight:I

.field public mLayoutDirection:I

.field public mLayoutOrientation:I

.field public mListening:Z

.field public mLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public mMaxColumns:I

.field public mMinRows:I

.field public final mOnPageChangeListener:Lcom/android/systemui/qs/PagedTileLayout$2;

.field public mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public mPageIndicatorPosition:F

.field public mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field public mPageToRestore:I

.field public final mPages:Ljava/util/ArrayList;

.field public final mScroller:Landroid/widget/Scroller;

.field public final mTiles:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 17
    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 20
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 23
    sget-object v1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 25
    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 27
    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    .line 30
    const/16 v1, 0x64

    .line 32
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    .line 34
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 36
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Lcom/android/systemui/qs/PagedTileLayout$2;

    .line 43
    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 45
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    .line 47
    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 50
    new-instance v2, Landroid/widget/Scroller;

    .line 52
    sget-object v3, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    .line 54
    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 56
    iput-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 59
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 61
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 64
    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 74
    move-result-object p1

    .line 77
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 78
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 82
    move-result p1

    .line 85
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 86
    return-void
    .line 88
.end method

.method private getCurrentPageNumber()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    move-result v1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p0

    .line 17
    add-int/lit8 p0, p0, -0x1

    .line 18
    sub-int v1, p0, v1

    .line 20
    :cond_0
    return v1
    .line 22
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    const-string p1, "adding new tile"

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 12
    return-void
    .line 15
.end method

.method public final computeScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 18
    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    .line 25
    move-result v0

    .line 28
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 29
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 31
    move-result v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    int-to-float v0, v0

    .line 36
    :try_start_0
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 45
    const-string v2, "FakeDragBy called before begin"

    .line 47
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;

    .line 60
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    .line 62
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 69
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->endFakeDrag()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    .line 76
    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    :cond_2
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 84
    :cond_3
    :goto_0
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->computeScroll()V

    .line 87
    return-void
    .line 90
.end method

.method public final createTileLayout()Lcom/android/systemui/qs/TileLayout;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f0d0308    # @layout/qs_paged_page 'res/layout/qs_paged_page.xml'

    .line 10
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    .line 18
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TileLayout;->setMinRows(I)Z

    .line 22
    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns(I)Z

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 30
    return-object v0
    .line 33
.end method

.method public final endFakeDrag()V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 7
    const-string v1, "endFakeDrag called without velocityTracker"

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 11
    :goto_0
    return-void
    .line 14
.end method

.method public final forceTilesRedistribution(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 2
    const-string v1, "forcing tile redistribution across pages, reason"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 10
    return-void
    .line 12
.end method

.method public getColumnCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 18
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 20
    return p0
    .line 22
.end method

.method public getNumPages()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    .line 15
    iget v3, v1, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 17
    iget v1, v1, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 19
    mul-int/2addr v3, v1

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    move-result v3

    .line 26
    div-int v3, v0, v3

    .line 27
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v3

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 39
    iget v2, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 41
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 43
    mul-int/2addr v2, p0

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 46
    move-result p0

    .line 49
    mul-int/2addr p0, v3

    .line 50
    if-le v0, p0, :cond_0

    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 53
    :cond_0
    return v3
    .line 55
.end method

.method public getNumTilesFirstPage()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public getNumVisibleTiles()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 14
    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p0

    .line 29
    return p0
    .line 30
.end method

.method public getTilesHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 9
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/TileLayout;->getTilesHeight()I

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Landroid/view/View;

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v4

    .line 26
    if-nez v4, :cond_0

    .line 27
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 35
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 37
    if-eq v0, v2, :cond_2

    .line 39
    iput v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    const-string v0, "orientation changed to "

    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 62
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 65
    goto :goto_1

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 68
    const-string v0, "Orientation didn\'t change, tiles might be not redistributed, new config"

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :goto_1
    return-void
    .line 75
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTileLayout()Lcom/android/systemui/qs/TileLayout;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 14
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 16
    return-void
    .line 19
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$3;->getCount()I

    .line 9
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$3;->getCount()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 21
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 31
    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 16
    move-result v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result p0

    .line 25
    add-int/lit8 p0, p0, -0x1

    .line 26
    if-eq v0, p0, :cond_1

    .line 28
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 30
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 32
    :cond_1
    return-void
    .line 35
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    .line 26
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 8
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result v3

    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExcessHeight:I

    .line 21
    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    .line 23
    if-eq v1, v3, :cond_9

    .line 25
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    move-result v1

    .line 30
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 31
    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    .line 33
    iput v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExcessHeight:I

    .line 35
    sub-int/2addr v1, v3

    .line 37
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/systemui/qs/TileLayout;

    .line 44
    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/qs/TileLayout;->updateMaxRows(II)Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 52
    if-eqz v0, :cond_8

    .line 54
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    .line 58
    move-result v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 64
    move-result v1

    .line 67
    move v3, v2

    .line 68
    :goto_0
    if-ge v3, v1, :cond_2

    .line 69
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    .line 77
    invoke-virtual {v4}, Lcom/android/systemui/qs/TileLayout;->removeAllViews()V

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    if-ne v1, v0, :cond_3

    .line 85
    goto :goto_3

    .line 87
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v1

    .line 93
    if-ge v1, v0, :cond_4

    .line 94
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 96
    const-string v3, "Adding new page"

    .line 98
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTileLayout()Lcom/android/systemui/qs/TileLayout;

    .line 105
    move-result-object v3

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_1

    .line 112
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 115
    move-result v1

    .line 118
    const/4 v3, -0x1

    .line 119
    if-le v1, v0, :cond_5

    .line 120
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 122
    const-string v4, "Removing page"

    .line 124
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v4

    .line 134
    add-int/2addr v4, v3

    .line 135
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 136
    goto :goto_2

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 151
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 156
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 158
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 161
    if-eq v0, v3, :cond_6

    .line 163
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 165
    iput v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 168
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 175
    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    .line 176
    iget v1, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 178
    iget v0, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 180
    mul-int/2addr v1, v0

    .line 182
    const/4 v0, 0x1

    .line 183
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 184
    move-result v0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 190
    move-result v1

    .line 193
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 194
    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDistributionInProgress(II)V

    .line 196
    move v3, v2

    .line 199
    move v4, v3

    .line 200
    :goto_4
    if-ge v3, v1, :cond_8

    .line 201
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v5

    .line 208
    check-cast v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 209
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    move-result-object v6

    .line 216
    check-cast v6, Lcom/android/systemui/qs/TileLayout;

    .line 217
    iget-object v6, v6, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 221
    move-result v6

    .line 224
    if-ne v6, v0, :cond_7

    .line 225
    add-int/lit8 v4, v4, 0x1

    .line 227
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 229
    iget-object v7, v5, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 231
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    move-result-object v7

    .line 236
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 237
    move-result-object v7

    .line 240
    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDistributed(ILjava/lang/String;)V

    .line 241
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    move-result-object v6

    .line 249
    check-cast v6, Lcom/android/systemui/qs/TileLayout;

    .line 250
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/TileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 255
    goto :goto_4

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    move-result-object v0

    .line 263
    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    .line 264
    iget v0, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 266
    move v1, v2

    .line 268
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 271
    move-result v3

    .line 274
    if-ge v1, v3, :cond_9

    .line 275
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 279
    move-result-object v3

    .line 282
    check-cast v3, Lcom/android/systemui/qs/TileLayout;

    .line 283
    iput v0, v3, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    goto :goto_5

    .line 289
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 290
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 293
    move-result v0

    .line 296
    move v1, v2

    .line 297
    move v3, v1

    .line 298
    :goto_6
    if-ge v1, v0, :cond_b

    .line 299
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 301
    move-result-object v4

    .line 304
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 305
    move-result v4

    .line 308
    if-le v4, v3, :cond_a

    .line 309
    move v3, v4

    .line 311
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 312
    goto :goto_6

    .line 314
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v0

    .line 320
    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    .line 321
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 323
    move-result-object v0

    .line 326
    if-nez v0, :cond_c

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 329
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    move-result-object v0

    .line 334
    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    .line 335
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 337
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 342
    move-result-object p1

    .line 345
    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    .line 346
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 348
    move-result p1

    .line 351
    if-le p1, v3, :cond_c

    .line 352
    move v3, p1

    .line 354
    :cond_c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 355
    move-result p1

    .line 358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 359
    move-result p2

    .line 362
    add-int/2addr p2, v3

    .line 363
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 364
    return-void
    .line 367
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 10
    move-result v0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v2

    .line 21
    add-int/lit8 v2, v2, -0x1

    .line 22
    sub-int v0, v2, v0

    .line 24
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 26
    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 29
    if-eq v2, p1, :cond_2

    .line 31
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 33
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    .line 35
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 40
    :cond_2
    return-void
    .line 43
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 4
    move-result v0

    .line 7
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 8
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 10
    move-result v1

    .line 13
    const/16 v2, 0x2000

    .line 14
    const/16 v3, 0x1000

    .line 16
    if-eq p1, v0, :cond_0

    .line 18
    if-ne p1, v1, :cond_4

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 22
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    if-ne p1, v0, :cond_2

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    if-ne p1, v0, :cond_3

    .line 31
    :cond_2
    move p1, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_3
    :goto_0
    move p1, v2

    .line 35
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 36
    move-result p2

    .line 39
    if-eqz p2, :cond_6

    .line 40
    if-eq p1, v2, :cond_5

    .line 42
    if-ne p1, v3, :cond_6

    .line 44
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    .line 46
    :cond_6
    return p2
    .line 49
.end method

.method public final removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    const-string/jumbo p1, "removing tile"

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "current_page"

    .line 2
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 9
    return-void
    .line 11
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 8
    move-result v0

    .line 11
    :goto_0
    const-string p0, "current_page"

    .line 12
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    return-void
    .line 17
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    sub-int p1, v0, p1

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 18
    return-void
    .line 21
.end method

.method public setExcessHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    .line 2
    return-void
    .line 4
.end method

.method public setExpansion(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    .line 4
    return-void
    .line 7
.end method

.method public setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 2
    if-ne p2, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    .line 9
    return-void
    .line 12
.end method

.method public setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 2
    return-void
    .line 4
.end method

.method public final setMaxColumns(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    .line 2
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/systemui/qs/TileLayout;

    .line 20
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TileLayout;->setMaxColumns(I)Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    const-string v1, "maxColumns in pages changed"

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return v1
    .line 37
.end method

.method public final setMinRows(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    .line 2
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/systemui/qs/TileLayout;

    .line 20
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TileLayout;->setMinRows(I)Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    const-string v1, "minRows changed in page"

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return v1
    .line 37
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 13
    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 17
    return-void
    .line 20
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .line 2
    return-void
    .line 4
.end method

.method public setPageMargin(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    neg-int v1, p1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_0

    .line 25
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/view/View;

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 35
    move-result v3

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    move-result v4

    .line 42
    invoke-virtual {v2, p1, v3, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    return-void
    .line 49
.end method

.method public setSquishinessFraction(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/systemui/qs/TileLayout;

    .line 17
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/TileLayout;->setSquishinessFraction(F)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    return-void
    .line 25
.end method

.method public final updateListening()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    iget-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 26
    if-eqz v2, :cond_0

    .line 28
    const/4 v2, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TileLayout;->setListening(Z)V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method

.method public final updateResources()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v2

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/systemui/qs/TileLayout;

    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    .line 20
    move-result v2

    .line 23
    or-int/2addr v1, v2

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    if-eqz v1, :cond_1

    .line 28
    const-string/jumbo v0, "resources in pages changed"

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->forceTilesRedistribution(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 40
    const-string/jumbo v0, "resource in pages didn\'t change, tiles might be not redistributed"

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/String;)V

    .line 45
    :goto_1
    return v1
    .line 48
.end method

.method public final updateSelected()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    if-lez v1, :cond_0

    .line 9
    cmpg-float v1, v0, v2

    .line 11
    if-gez v1, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    cmpl-float v0, v0, v2

    .line 16
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    const/4 v2, 0x4

    .line 24
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    .line 28
    move-result v2

    .line 31
    move v3, v1

    .line 32
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v4

    .line 38
    if-ge v3, v4, :cond_4

    .line 39
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    .line 47
    if-ne v3, v2, :cond_2

    .line 49
    move v5, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v5, v1

    .line 53
    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 54
    invoke-virtual {v4}, Landroid/view/ViewGroup;->isSelected()Z

    .line 57
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    move v5, v1

    .line 63
    :goto_3
    iget-object v6, v4, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v6

    .line 69
    if-ge v5, v6, :cond_3

    .line 70
    iget-object v6, v4, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 78
    iget-object v6, v6, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 80
    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 82
    sget-object v8, Lcom/android/systemui/qs/QSEvent;->QS_TILE_VISIBLE:Lcom/android/systemui/qs/QSEvent;

    .line 84
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsSpec()Ljava/lang/String;

    .line 86
    move-result-object v9

    .line 89
    invoke-interface {v6}, Lcom/android/systemui/plugins/qs/QSTile;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 90
    move-result-object v6

    .line 93
    check-cast v7, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 94
    invoke-virtual {v7, v8, v1, v9, v6}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 99
    goto :goto_3

    .line 101
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 102
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 105
    return-void
    .line 108
.end method
