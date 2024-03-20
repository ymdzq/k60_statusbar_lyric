.class public Lmiuix/nestedheader/widget/NestedScrollingLayout;
.super Landroid/widget/FrameLayout;
.source "NestedScrollingLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Lmiuix/core/view/NestedCoordinatorObserver;
.implements Lmiuix/core/view/NestedContentInsetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;
    }
.end annotation


# instance fields
.field protected mContentInsetBottom:I

.field protected mContentInsetTop:I

.field protected mCoordinatorHeightTotalGap:I

.field protected mCurrentCoordinatorHeightGap:I

.field protected mEnableOverScrollTo:Z

.field protected mHeaderCloseOnInit:Z

.field private mHeaderOpenTime:J

.field private mHeaderViewVisible:Z

.field protected mInSearchMode:Z

.field private mIsFirstSetScrollingRange:Z

.field private mIsHeaderOpen:Z

.field protected mIsOverlayMode:Z

.field protected mIsSelfScrollFirst:Z

.field private mNestedFlingInConsumedProgress:Z

.field private mNestedFlingStartInConsumedTime:J

.field private mNestedScrollAcceptedFling:Z

.field private mNestedScrollInConsumedProgress:Z

.field private final mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field private mOnNestedChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

.field protected mOverScrollToRatio:F

.field protected mOverScrollingTo:I

.field protected final mParentOffsetInWindow:[I

.field private final mParentScrollConsumed:[I

.field private mPreOverScrollingTo:I

.field private mScrollType:I

.field protected mScrollableView:Landroid/view/View;

.field private mScrollableViewId:I

.field private mScrollingFrom:I

.field private mScrollingProgress:I

.field private mScrollingTo:I

.field private mStickyViewVisible:Z

.field private mTriggerViewVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 40
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingV2ConsumedCompat:[I

    new-array v0, p3, [I

    .line 41
    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    new-array p3, p3, [I

    .line 48
    iput-object p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentScrollConsumed:[I

    const/4 p3, 0x0

    .line 55
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    .line 56
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollingTo:I

    .line 57
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 58
    iput p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    const-wide/16 v1, 0x0

    .line 68
    iput-wide v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    .line 69
    iput-wide v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    .line 70
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    .line 71
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 72
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    .line 73
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    .line 90
    new-instance v1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    .line 91
    invoke-static {p0}, Lmiuix/core/view/NestedScrollingChildHelper;->obtain(Landroid/view/View;)Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v1

    iput-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 93
    sget-object v1, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_scrollableView:I

    const v1, 0x102000a    # @android:id/list

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableViewId:I

    .line 95
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_selfScrollFirst:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    .line 96
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_headerClose:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    .line 97
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_overScrollTo:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 98
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_overScrollToRatio:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    .line 99
    sget p2, Lmiuix/nestedheader/R$styleable;->NestedScrollingLayout_scrollType:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .locals 0

    .line 36
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    return p0
.end method

.method static synthetic access$020(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I
    .locals 1

    .line 36
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    sub-int/2addr v0, p1

    iput v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mPreOverScrollingTo:I

    return v0
.end method

.method static synthetic access$100(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .locals 0

    .line 36
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/nestedheader/widget/NestedScrollingLayout;)I
    .locals 0

    .line 36
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    return p0
.end method

.method static synthetic access$300(Lmiuix/nestedheader/widget/NestedScrollingLayout;I)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->obtainSpringBackDistance(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method private dispatchScrollingProgressUpdated()V
    .locals 1

    .line 273
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onScrollingProgressUpdated(I)V

    return-void
.end method

.method private nestedPreScrollHeader(II[I)V
    .locals 2

    .line 427
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 430
    aget v0, p3, p1

    if-le p2, v0, :cond_1

    .line 432
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 433
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v0, p2

    .line 434
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 435
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 436
    aget p0, p3, p1

    add-int/2addr p0, v0

    aput p0, p3, p1

    :cond_1
    return-void
.end method

.method private nestedPreScrollParent(II[I[II)V
    .locals 8

    const/4 v0, 0x0

    .line 466
    aget v1, p3, v0

    sub-int v3, p1, v1

    const/4 p1, 0x1

    aget v1, p3, p1

    sub-int v4, p2, v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 468
    aget p0, p3, v0

    aget p2, p4, v0

    add-int/2addr p0, p2

    aput p0, p3, v0

    .line 469
    aget p0, p3, p1

    aget p2, p4, p1

    add-int/2addr p0, p2

    aput p0, p3, p1

    :cond_0
    return-void
.end method

.method private nestedPreScrollSelfAfterParentConsumed(II[I)V
    .locals 3

    const/4 p1, 0x1

    .line 454
    aget v0, p3, p1

    if-le p2, v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result v0

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 457
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v0, p2

    .line 458
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 459
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 460
    aget p0, p3, p1

    add-int/2addr p0, v0

    aput p0, p3, p1

    :cond_0
    return-void
.end method

.method private nestedPreScrollTrigger(II[I)V
    .locals 2

    const/4 p1, 0x1

    .line 441
    aget v0, p3, p1

    if-le p2, v0, :cond_0

    .line 443
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    iget v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 444
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int v1, v0, p2

    if-eq v0, p2, :cond_0

    if-ltz v0, :cond_0

    .line 446
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 447
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 448
    aget p0, p3, p1

    add-int/2addr p0, v1

    aput p0, p3, p1

    :cond_0
    return-void
.end method

.method private nestedScrollAfterParentConsumed(IIII[II)V
    .locals 7

    if-gez p2, :cond_c

    if-eqz p4, :cond_c

    .line 551
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int p2, p1, p4

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-nez p6, :cond_0

    move p6, p3

    goto :goto_0

    :cond_0
    move p6, p4

    .line 554
    :goto_0
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    if-le p2, v0, :cond_1

    move v1, p3

    goto :goto_1

    :cond_1
    move v1, p4

    .line 555
    :goto_1
    iget-boolean v2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    if-nez v3, :cond_2

    if-nez p6, :cond_2

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_2

    move v1, p3

    goto :goto_2

    :cond_2
    move v1, p4

    :goto_2
    if-eqz v2, :cond_3

    .line 557
    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    if-nez v3, :cond_3

    if-nez p6, :cond_3

    iget v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    if-lt p1, v3, :cond_3

    if-lt p2, v3, :cond_3

    move p1, p3

    goto :goto_3

    :cond_3
    move p1, p4

    :goto_3
    if-eqz v2, :cond_6

    if-nez p6, :cond_6

    .line 559
    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    if-nez v3, :cond_4

    if-ltz p2, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget-wide v3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    iget-wide v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_6

    :cond_5
    move v3, p3

    goto :goto_4

    :cond_6
    move v3, p4

    :goto_4
    if-nez p6, :cond_8

    if-eqz v2, :cond_8

    if-nez p1, :cond_8

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move p1, p4

    goto :goto_6

    :cond_8
    :goto_5
    move p1, p3

    :goto_6
    if-eqz p1, :cond_9

    .line 566
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_a

    move p1, v0

    goto :goto_7

    :cond_a
    move p1, p4

    .line 567
    :goto_7
    iget-boolean p6, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mInSearchMode:Z

    if-eqz p6, :cond_b

    .line 568
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 570
    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 571
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p2, p1

    .line 572
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 573
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    .line 574
    aget p0, p5, p4

    add-int/2addr p0, p4

    aput p0, p5, p4

    .line 575
    aget p0, p5, p3

    add-int/2addr p0, p2

    aput p0, p5, p3

    :cond_c
    return-void
.end method

.method private nestedScrollHeader(II[II)V
    .locals 0

    if-gez p2, :cond_0

    .line 516
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderProgressTo()I

    move-result p4

    if-ge p1, p4, :cond_0

    .line 518
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p1, p2

    .line 519
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderProgressTo()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 520
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p2, p1

    .line 521
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 522
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    const/4 p0, 0x1

    .line 523
    aget p1, p3, p0

    add-int/2addr p1, p2

    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method private nestedScrollSticky(II[II)V
    .locals 0

    if-gez p2, :cond_0

    .line 530
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getStickyScrollToOnNested()I

    move-result p4

    if-ge p1, p4, :cond_0

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz p1, :cond_0

    .line 532
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p1, p2

    .line 533
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getStickyScrollToOnNested()I

    move-result p4

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 534
    iget p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    sub-int/2addr p2, p1

    .line 535
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 536
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    const/4 p0, 0x1

    .line 537
    aget p1, p3, p0

    add-int/2addr p1, p2

    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method private notifyStopNestedScrollAccepted(I)V
    .locals 1

    .line 644
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 645
    invoke-interface {v0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStopNestedScrollAccepted(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainDampingDistance(FI)F
    .locals 4

    const/high16 p0, 0x3f800000    # 1.0f

    .line 586
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 587
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v2, v0

    add-double/2addr v2, p0

    double-to-float p0, v2

    int-to-float p1, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method private obtainSpringBackDistance(I)I
    .locals 3

    .line 580
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 581
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    int-to-float v2, v0

    div-float/2addr p1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 582
    invoke-direct {p0, p1, v0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->obtainDampingDistance(FI)F

    move-result p1

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOverScrollToRatio:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private sendStartNestedScroll(I)V
    .locals 1

    .line 638
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 639
    invoke-interface {v0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStartNestedScroll(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendStopNestedScroll(I)V
    .locals 1

    .line 650
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;

    .line 651
    invoke-interface {v0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;->onStopNestedScroll(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Lmiuix/nestedheader/widget/NestedScrollingLayout$OnNestedChangedListener;)V
    .locals 0

    .line 620
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnNestedChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 336
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 8

    .line 351
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    return-void
.end method

.method public getAcceptedNestedFlingInConsumedProgress()Z
    .locals 0

    .line 614
    iget-boolean p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    return p0
.end method

.method protected getHeaderCloseProgress()I
    .locals 1

    .line 304
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_0

    .line 305
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, p0

    return v0

    .line 307
    :cond_0
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return p0
.end method

.method protected getHeaderProgressTo()I
    .locals 1

    .line 296
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    if-eqz v0, :cond_0

    .line 297
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, p0

    return v0

    .line 299
    :cond_0
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return p0
.end method

.method public getNestedScrollableValue()I
    .locals 0

    .line 133
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollingFrom()I

    move-result p0

    return p0
.end method

.method public getScrollType()I
    .locals 0

    .line 110
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollType:I

    return p0
.end method

.method protected getScrollableViewMaxHeightWithoutOverlay()I
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getScrollingFrom()I
    .locals 0

    .line 280
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    return p0
.end method

.method public getScrollingProgress()I
    .locals 0

    .line 269
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    return p0
.end method

.method public getScrollingTo()I
    .locals 0

    .line 284
    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    return p0
.end method

.method protected getStickyScrollToOnNested()I
    .locals 1

    .line 542
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    iget p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 0

    .line 318
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 3

    .line 144
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetBottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_1

    .line 145
    :cond_0
    iput v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetTop:I

    .line 146
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mContentInsetBottom:I

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 156
    iget v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 161
    instance-of v0, v0, Lmiuix/core/view/ScrollStateDispatcher;

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;

    invoke-direct {v0, p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout$1;-><init>(Lmiuix/nestedheader/widget/NestedScrollingLayout;)V

    iput-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mOnScrollChangeListener:Lmiuix/core/view/ViewCompatOnScrollChangeListener;

    .line 179
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    check-cast v1, Lmiuix/core/view/ScrollStateDispatcher;

    invoke-interface {v1, v0}, Lmiuix/core/view/ScrollStateDispatcher;->addOnScrollChangeListener(Lmiuix/core/view/ViewCompatOnScrollChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mEnableOverScrollTo:Z

    .line 183
    :goto_0
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void

    .line 158
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The scrollableView attribute is required and must refer to a valid child."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 212
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 214
    invoke-virtual/range {p0 .. p5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onUpdateScrollingRangeOnLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 192
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 193
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 194
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 195
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsOverlayMode:Z

    const/high16 p2, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 197
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getScrollableViewMaxHeightWithoutOverlay()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 198
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMeasure in NoOverlayMode mScrollableView "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " viewHeight "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NestedScrollingLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result p1

    if-nez p1, :cond_1

    .line 203
    iget-object p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 205
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollableView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 476
    invoke-virtual/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6

    const/4 p1, 0x1

    if-eqz p5, :cond_1

    .line 411
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-nez v0, :cond_0

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingStartInConsumedTime:J

    .line 414
    :cond_0
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    goto :goto_0

    .line 416
    :cond_1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    .line 418
    :goto_0
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollTrigger(II[I)V

    .line 419
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-eqz p1, :cond_2

    .line 420
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollHeader(II[I)V

    .line 422
    :cond_2
    iget-object v4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentScrollConsumed:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollParent(II[I[II)V

    .line 423
    invoke-direct {p0, p2, p3, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedPreScrollSelfAfterParentConsumed(II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 483
    invoke-virtual/range {v0 .. v6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 8

    const/4 v6, 0x0

    .line 491
    iget-object v7, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingV2ConsumedCompat:[I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 8

    .line 499
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsSelfScrollFirst:Z

    if-nez p1, :cond_0

    .line 500
    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollHeader(II[II)V

    .line 502
    :cond_0
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    if-eqz p1, :cond_1

    .line 503
    invoke-direct {p0, p4, p5, p7, p6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollSticky(II[II)V

    :cond_1
    const/4 p1, 0x0

    .line 505
    aget v1, p7, p1

    const/4 p1, 0x1

    aget v2, p7, p1

    sub-int v3, p4, v1

    sub-int v4, p5, v2

    iget-object v5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mParentOffsetInWindow:[I

    move-object v0, p0

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchNestedScroll(IIII[II[I)V

    .line 508
    aget p1, p7, p1

    sub-int v4, p5, p1

    move v1, p4

    move v2, p5

    move v3, p4

    move-object v5, p7

    .line 509
    invoke-direct/range {v0 .. v6}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->nestedScrollAfterParentConsumed(IIII[II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 403
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    and-int/lit8 p1, p3, 0x2

    .line 404
    invoke-virtual {p0, p1}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->startNestedScroll(I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 392
    invoke-virtual {p0, p1, p2, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 394
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 396
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    :goto_0
    return-void
.end method

.method protected onScrollingProgressUpdated(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 385
    :goto_0
    iget-object v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v1, p3}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 376
    invoke-direct {p0, p4}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->sendStartNestedScroll(I)V

    .line 377
    iget-object p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1, p1, p3}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2

    .line 593
    iget-object v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 594
    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->sendStopNestedScroll(I)V

    .line 595
    invoke-virtual {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->stopNestedScroll(I)V

    .line 597
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 598
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollInConsumedProgress:Z

    .line 599
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollAcceptedFling:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 602
    :cond_1
    iget-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    if-eqz p1, :cond_2

    .line 603
    iput-boolean v1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedFlingInConsumedProgress:Z

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 609
    invoke-direct {p0, p2}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->notifyStopNestedScrollAccepted(I)V

    :cond_3
    return-void
.end method

.method public onUpdateScrollingRangeOnLayout(ZIIII)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 0

    .line 313
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setScrollingRange(IIZZZZZZZ)V
    .locals 0

    if-le p1, p2, :cond_0

    const-string p1, "NestedScrollingLayout"

    const-string p8, "wrong scrolling range: [%d, %d], making from=to"

    .line 224
    invoke-static {p1, p8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p2

    .line 228
    :cond_0
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingFrom:I

    .line 229
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingTo:I

    .line 230
    iput-boolean p3, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderViewVisible:Z

    .line 231
    iput-boolean p4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mTriggerViewVisible:Z

    .line 232
    iput-boolean p5, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mStickyViewVisible:Z

    .line 234
    iget p4, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-ge p4, p1, :cond_1

    .line 235
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 238
    :cond_1
    iget p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    if-le p1, p2, :cond_2

    if-ltz p2, :cond_2

    .line 239
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    :cond_2
    const/4 p1, 0x0

    if-eqz p6, :cond_3

    .line 241
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_0
    if-nez p2, :cond_4

    if-nez p7, :cond_4

    if-eqz p9, :cond_6

    :cond_4
    if-eqz p3, :cond_6

    .line 243
    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderCloseOnInit:Z

    if-eqz p2, :cond_5

    .line 244
    invoke-virtual {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->getHeaderCloseProgress()I

    move-result p2

    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    goto :goto_1

    .line 246
    :cond_5
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 248
    :goto_1
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    if-eqz p7, :cond_8

    .line 250
    :cond_7
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    .line 251
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsFirstSetScrollingRange:Z

    .line 254
    :cond_8
    :goto_2
    invoke-direct {p0}, Lmiuix/nestedheader/widget/NestedScrollingLayout;->dispatchScrollingProgressUpdated()V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 0

    .line 324
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public stopNestedScroll()V
    .locals 0

    .line 370
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 0

    .line 358
    iget-object p0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mNestedScrollingChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public updateCoordinatorHeightGapInfo(II)V
    .locals 0

    .line 138
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCurrentCoordinatorHeightGap:I

    .line 139
    iput p2, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mCoordinatorHeightTotalGap:I

    return-void
.end method

.method public updateHeaderOpen(Z)V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mHeaderOpenTime:J

    .line 265
    :cond_0
    iput-boolean p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mIsHeaderOpen:Z

    return-void
.end method

.method public updateScrollingProgress(I)V
    .locals 0

    .line 258
    iput p1, p0, Lmiuix/nestedheader/widget/NestedScrollingLayout;->mScrollingProgress:I

    return-void
.end method
