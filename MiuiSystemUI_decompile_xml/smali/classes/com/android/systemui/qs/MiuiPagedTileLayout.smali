.class public Lcom/android/systemui/qs/MiuiPagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;


# static fields
.field public static final SCROLL_CUBIC:Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

.field public mBounceAnimatorSet:Landroid/animation/AnimatorSet;

.field public mDistributeTiles:Z

.field public mExcessHeight:I

.field public mLastExcessHeight:I

.field public mLastExpansion:F

.field public mLastMaxHeight:I

.field public mLayoutDirection:I

.field public mLayoutOrientation:I

.field public mListening:Z

.field public mMaxColumns:I

.field public mMinRows:I

.field public final mOnPageChangeListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$2;

.field public mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

.field public mPageIndicatorPosition:F

.field public mPageListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;

.field public mPageToRestore:I

.field public final mPages:Ljava/util/ArrayList;

.field public final mScroller:Landroid/widget/Scroller;

.field public final mTiles:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;

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
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 17
    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 20
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 23
    sget-object v1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 25
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 27
    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mMinRows:I

    .line 30
    const/16 v1, 0x64

    .line 32
    iput v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mMaxColumns:I

    .line 34
    iput v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastMaxHeight:I

    .line 36
    new-instance v0, Lcom/android/systemui/qs/MiuiPagedTileLayout$2;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout$2;-><init>(Lcom/android/systemui/qs/MiuiPagedTileLayout;)V

    .line 40
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mOnPageChangeListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$2;

    .line 43
    new-instance v1, Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

    .line 45
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout$3;-><init>(Lcom/android/systemui/qs/MiuiPagedTileLayout;)V

    .line 47
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mAdapter:Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

    .line 50
    new-instance v2, Landroid/widget/Scroller;

    .line 52
    sget-object v3, Lcom/android/systemui/qs/MiuiPagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda1;

    .line 54
    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 56
    iput-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 59
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 61
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 64
    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

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
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutOrientation:I

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 82
    move-result p1

    .line 85
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutDirection:I

    .line 86
    new-instance p0, Landroid/graphics/Rect;

    .line 88
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    return-void
    .line 93
.end method

.method private getCurrentPageNumber()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutDirection:I

    .line 6
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result p0

    .line 16
    sub-int/2addr p0, v2

    .line 17
    sub-int v0, p0, v0

    .line 18
    :cond_0
    return v0
    .line 20
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 10
    return-void
    .line 13
.end method

.method public final computeScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mScroller:Landroid/widget/Scroller;

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
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mScroller:Landroid/widget/Scroller;

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
    const-string v1, "PagedTileLayout"

    .line 45
    const-string v2, "FakeDragBy called before begin"

    .line 47
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v0

    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    new-instance v1, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/MiuiPagedTileLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiPagedTileLayout;I)V

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
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->endFakeDrag()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

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

.method public final createTilePage()Lcom/android/systemui/qs/TilePage;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const v2, 0x7f0d01d0    # @layout/miui_qs_paged_page 'res/layout/miui_qs_paged_page.xml'

    .line 11
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/systemui/qs/TilePage;

    .line 18
    iget v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mMinRows:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiTileLayout;->setMinRows(I)Z

    .line 22
    iget p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mMaxColumns:I

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/MiuiTileLayout;->setMaxColumns(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    const-string v1, "createTilePageFailed"

    .line 34
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    throw v0
    .line 39
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
    move-exception p0

    .line 6
    const-string v0, "PagedTileLayout"

    .line 7
    const-string v1, "endFakeDrag called before begin"

    .line 9
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    :goto_0
    return-void
    .line 14
.end method

.method public getColumnCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

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
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/systemui/qs/TilePage;

    .line 18
    iget p0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    .line 20
    return p0
    .line 22
.end method

.method public getNumPages()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/systemui/qs/TilePage;

    .line 15
    iget v3, v1, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    .line 17
    iget v1, v1, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

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
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/qs/TilePage;

    .line 39
    iget v2, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    .line 41
    iget p0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

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

.method public getNumVisibleTiles()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 12
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->getCurrentPageNumber()I

    .line 14
    move-result p0

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/systemui/qs/TilePage;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p0

    .line 29
    return p0
    .line 30
.end method

.method public final getOffsetTop(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/ViewGroup;

    .line 8
    if-nez p1, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    .line 18
    move-result p0

    .line 21
    add-int/2addr p0, p1

    .line 22
    return p0
    .line 23
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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutOrientation:I

    .line 5
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 7
    if-eq v0, p1, :cond_0

    .line 9
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutOrientation:I

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

    .line 14
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 17
    :cond_0
    return-void
    .line 19
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->createTilePage()Lcom/android/systemui/qs/TilePage;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mAdapter:Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

    .line 14
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 16
    return-void
    .line 19
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 8
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    iget v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastMaxHeight:I

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 15
    move-result v3

    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    iget v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastExcessHeight:I

    .line 21
    iget v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mExcessHeight:I

    .line 23
    if-eq v1, v3, :cond_d

    .line 25
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 27
    move-result v1

    .line 30
    iput v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastMaxHeight:I

    .line 31
    iget v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mExcessHeight:I

    .line 33
    iput v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastExcessHeight:I

    .line 35
    sub-int/2addr v1, v3

    .line 37
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/systemui/qs/TilePage;

    .line 44
    sub-int/2addr v1, v2

    .line 46
    add-int/2addr v1, v2

    .line 47
    iget v4, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 48
    iget v5, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mCellHeight:I

    .line 50
    add-int/2addr v5, v2

    .line 52
    div-int/2addr v1, v5

    .line 53
    iput v1, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 54
    iget v5, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mMinRows:I

    .line 56
    if-ge v1, v5, :cond_1

    .line 58
    iput v5, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    iget v5, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mMaxAllowedRows:I

    .line 63
    if-lt v1, v5, :cond_2

    .line 65
    iput v5, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 67
    :cond_2
    :goto_0
    iget v1, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 69
    iget v5, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    .line 71
    add-int/2addr v0, v5

    .line 73
    const/4 v6, 0x1

    .line 74
    sub-int/2addr v0, v6

    .line 75
    div-int/2addr v0, v5

    .line 76
    if-le v1, v0, :cond_3

    .line 77
    iput v0, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 79
    :cond_3
    iget v0, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 81
    if-eq v4, v0, :cond_4

    .line 83
    move v0, v6

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    move v0, v2

    .line 87
    :goto_1
    if-nez v0, :cond_5

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 90
    if-eqz v0, :cond_c

    .line 92
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->getNumPages()I

    .line 96
    move-result v0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 102
    move-result v1

    .line 105
    move v3, v2

    .line 106
    :goto_2
    if-ge v3, v1, :cond_6

    .line 107
    iget-object v4, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v4

    .line 114
    check-cast v4, Lcom/android/systemui/qs/TilePage;

    .line 115
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiTileLayout;->removeAllViews()V

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 120
    goto :goto_2

    .line 122
    :cond_6
    if-ne v1, v0, :cond_7

    .line 123
    goto :goto_5

    .line 125
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 128
    move-result v1

    .line 131
    if-ge v1, v0, :cond_8

    .line 132
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->createTilePage()Lcom/android/systemui/qs/TilePage;

    .line 136
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    goto :goto_3

    .line 143
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result v1

    .line 149
    const/4 v3, -0x1

    .line 150
    if-le v1, v0, :cond_9

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 155
    move-result v4

    .line 158
    add-int/2addr v4, v3

    .line 159
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 160
    goto :goto_4

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 168
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiPageIndicator;->setNumPages(I)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mAdapter:Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

    .line 175
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mAdapter:Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

    .line 180
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 182
    iget v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 185
    if-eq v0, v3, :cond_a

    .line 187
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

    .line 189
    iput v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 192
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v0

    .line 199
    check-cast v0, Lcom/android/systemui/qs/TilePage;

    .line 200
    iget v1, v0, Lcom/android/systemui/qs/MiuiTileLayout;->mColumns:I

    .line 202
    iget v0, v0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 204
    mul-int/2addr v1, v0

    .line 206
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    .line 207
    move-result v0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 213
    move-result v1

    .line 216
    move v3, v2

    .line 217
    move v4, v3

    .line 218
    :goto_6
    if-ge v3, v1, :cond_c

    .line 219
    iget-object v5, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    move-result-object v5

    .line 226
    check-cast v5, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 227
    iget-object v6, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v6

    .line 234
    check-cast v6, Lcom/android/systemui/qs/TilePage;

    .line 235
    iget-object v6, v6, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 239
    move-result v6

    .line 242
    if-ne v6, v0, :cond_b

    .line 243
    add-int/lit8 v4, v4, 0x1

    .line 245
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 249
    move-result-object v6

    .line 252
    check-cast v6, Lcom/android/systemui/qs/TilePage;

    .line 253
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/MiuiTileLayout;->addTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V

    .line 255
    add-int/lit8 v3, v3, 0x1

    .line 258
    goto :goto_6

    .line 260
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object v0

    .line 266
    check-cast v0, Lcom/android/systemui/qs/TilePage;

    .line 267
    iget v0, v0, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 269
    move v1, v2

    .line 271
    :goto_7
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 274
    move-result v3

    .line 277
    if-ge v1, v3, :cond_d

    .line 278
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 282
    move-result-object v3

    .line 285
    check-cast v3, Lcom/android/systemui/qs/TilePage;

    .line 286
    iput v0, v3, Lcom/android/systemui/qs/MiuiTileLayout;->mRows:I

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 290
    goto :goto_7

    .line 292
    :cond_d
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 293
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 296
    move-result p1

    .line 299
    move p2, v2

    .line 300
    :goto_8
    if-ge v2, p1, :cond_f

    .line 301
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 303
    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 307
    move-result v0

    .line 310
    if-le v0, p2, :cond_e

    .line 311
    move p2, v0

    .line 313
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 314
    goto :goto_8

    .line 316
    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 317
    move-result p1

    .line 320
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 321
    move-result v0

    .line 324
    add-int/2addr v0, p2

    .line 325
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 326
    return-void
    .line 329
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    iget v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutDirection:I

    .line 5
    if-eq v0, p1, :cond_1

    .line 7
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLayoutDirection:I

    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mAdapter:Lcom/android/systemui/qs/MiuiPagedTileLayout$3;

    .line 11
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 13
    iget p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 16
    const/4 v0, -0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

    .line 22
    iput v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->setCurrentItem(IZ)V

    .line 28
    :cond_1
    :goto_0
    return-void
    .line 31
.end method

.method public final removeTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 13
    :cond_0
    return-void
    .line 16
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
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageToRestore:I

    .line 9
    return-void
    .line 11
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "current_page"

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    move-result p0

    .line 7
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    return-void
    .line 11
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
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

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
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mExcessHeight:I

    .line 2
    return-void
    .line 4
.end method

.method public setExpansion(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastExpansion:F

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->updateSelected()V

    .line 4
    const/4 v0, 0x0

    .line 7
    cmpl-float p1, p1, v0

    .line 8
    if-nez p1, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    check-cast p0, Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 16
    iget-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 18
    const/4 v0, 0x1

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnFirstPage:Z

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 26
.end method

.method public setListening(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mListening:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mListening:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->updateListening()V

    .line 9
    return-void
    .line 12
.end method

.method public final setMaxColumns(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mMaxColumns:I

    .line 2
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/systemui/qs/TilePage;

    .line 20
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/MiuiTileLayout;->setMaxColumns(I)Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return v1
    .line 34
.end method

.method public final setMinRows(I)Z
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mMinRows:I

    .line 2
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/systemui/qs/TilePage;

    .line 20
    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/MiuiTileLayout;->setMinRows(I)Z

    .line 22
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return v1
    .line 34
.end method

.method public setPageIndicator(Lcom/android/systemui/qs/MiuiPageIndicator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/MiuiPageIndicator;->setNumPages(I)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/MiuiPageIndicator;

    .line 13
    iget p0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageIndicatorPosition:F

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/MiuiPageIndicator;->setLocation(F)V

    .line 17
    return-void
    .line 20
.end method

.method public setPageListener(Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/MiuiPagedTileLayout$PageListener;

    .line 2
    return-void
    .line 4
.end method

.method public final updateListening()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/android/systemui/qs/TilePage;

    .line 18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 20
    move-result-object v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    const/4 v2, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mListening:Z

    .line 28
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/MiuiTileLayout;->setListening(Z)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public final updateResources()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    const/4 v0, 0x0

    .line 16
    move v1, v0

    .line 17
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v2

    .line 23
    if-ge v0, v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/systemui/qs/TilePage;

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiTileLayout;->updateResources()Z

    .line 34
    move-result v2

    .line 37
    or-int/2addr v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    if-eqz v1, :cond_1

    .line 42
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mDistributeTiles:Z

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 47
    :cond_1
    return v1
    .line 50
.end method

.method public final updateSelected()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mLastExpansion:F

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
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiPagedTileLayout;->getCurrentPageNumber()I

    .line 28
    move-result v2

    .line 31
    move v3, v1

    .line 32
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    move-result v4

    .line 38
    if-ge v3, v4, :cond_4

    .line 39
    iget-object v4, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    check-cast v4, Lcom/android/systemui/qs/TilePage;

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
    iget-object v6, v4, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 66
    move-result v6

    .line 69
    if-ge v5, v6, :cond_3

    .line 70
    iget-object v6, v4, Lcom/android/systemui/qs/MiuiTileLayout;->mRecords:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 78
    iget-object v6, v6, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 80
    iget-object v7, p0, Lcom/android/systemui/qs/MiuiPagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

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
