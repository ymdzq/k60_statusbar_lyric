.class public Landroidx/viewpager/widget/OriginalViewPager;
.super Landroid/view/ViewGroup;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;,
        Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;,
        Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/OriginalViewPager$SavedState;,
        Landroidx/viewpager/widget/OriginalViewPager$DecorView;,
        Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final LAYOUT_ATTRS:[I

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurIsRTL:Z

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100b3    # @android:attr/layout_gravity

    .line 122
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 254
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 394
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 162
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    const/4 v1, 0x0

    .line 164
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 165
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v1, -0x800001

    .line 182
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 183
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/4 v1, 0x2

    .line 192
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 210
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 238
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    .line 272
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$3;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$3;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 280
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 395
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 399
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    invoke-direct {p1}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 158
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 162
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 163
    iput-boolean p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 165
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 182
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 183
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/4 v0, 0x2

    .line 192
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 210
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 238
    iput-boolean p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    .line 272
    new-instance p1, Landroidx/viewpager/widget/OriginalViewPager$3;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/OriginalViewPager$3;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 280
    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 400
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;ILandroidx/viewpager/widget/OriginalViewPager$ItemInfo;)V
    .locals 10

    .line 1308
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1309
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 1310
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 1313
    iget v3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 1315
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1318
    iget v4, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1320
    :goto_1
    iget v5, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 1321
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1322
    :goto_2
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1324
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_2

    .line 1326
    :cond_1
    :goto_3
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_2

    .line 1329
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1332
    :cond_2
    iput v4, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 1333
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    .line 1336
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1338
    iget p3, p3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1340
    :goto_4
    iget v5, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1341
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1342
    :goto_5
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1344
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_5

    .line 1346
    :cond_4
    :goto_6
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_5

    .line 1349
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1352
    :cond_5
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1353
    iput p3, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1359
    :cond_6
    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1360
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 1361
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    const v6, -0x800001

    .line 1362
    :goto_7
    iput v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    .line 1364
    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    .line 1367
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1368
    :goto_a
    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v5, v8, :cond_9

    .line 1369
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    .line 1371
    :cond_9
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    .line 1372
    iput v3, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    if-nez v8, :cond_a

    .line 1373
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 1375
    :cond_b
    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1376
    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 1379
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1380
    :goto_c
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_c

    .line 1381
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    .line 1384
    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 1386
    :cond_d
    iput v3, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 1387
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 1390
    :cond_e
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .locals 7

    .line 2005
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 2008
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 2009
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 2011
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 2012
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 2013
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 2014
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v5}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    move-result v5

    .line 2015
    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v6}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrY()I

    move-result v6

    if-ne v1, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 2017
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    if-eq v5, v1, :cond_2

    .line 2019
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    .line 2024
    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    move v1, v3

    .line 2025
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 2026
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2027
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_3

    .line 2029
    iput-boolean v3, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    move v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 2034
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2036
    :cond_5
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private determineTargetPage(IFII)I
    .locals 1

    .line 2442
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2445
    :cond_1
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2449
    :goto_1
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 2450
    iget-object p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2451
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2454
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .locals 3

    .line 1954
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1955
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1957
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1958
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1959
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1961
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1965
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1966
    invoke-interface {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .locals 3

    .line 1971
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1972
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1974
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1975
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1976
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1978
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1982
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 1983
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .locals 3

    .line 1988
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1989
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1991
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1992
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1993
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 1995
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    :cond_2
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;

    if-eqz p0, :cond_3

    .line 2000
    invoke-interface {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 2695
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2696
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2698
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2699
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2700
    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2896
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    .line 2899
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2902
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2903
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2904
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2905
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2907
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2908
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2909
    check-cast p2, Landroid/view/ViewGroup;

    .line 2910
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2911
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2912
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2913
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2915
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getClientWidth()I
    .locals 2

    .line 609
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 13

    .line 2399
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2400
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 2401
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v0

    move v9, v5

    move-object v7, v6

    move v6, v4

    move v4, v1

    .line 2408
    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 2409
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    if-nez v9, :cond_2

    .line 2411
    iget v11, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    add-int/2addr v6, v5

    if-eq v11, v6, :cond_2

    .line 2413
    iget-object v10, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempItem:Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    add-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 2414
    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2415
    iput v6, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2416
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v6}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, -0x1

    :cond_2
    move-object v6, v10

    .line 2419
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2422
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v1

    add-float/2addr v4, v3

    if-nez v9, :cond_4

    cmpl-float v9, v2, v1

    if-ltz v9, :cond_3

    goto :goto_3

    :cond_3
    return-object v7

    :cond_4
    :goto_3
    cmpg-float v4, v2, v4

    if-ltz v4, :cond_6

    .line 2424
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_5

    goto :goto_4

    .line 2431
    :cond_5
    iget v4, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2433
    iget v7, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v8, v8, 0x1

    move v9, v0

    move-object v12, v6

    move v6, v4

    move v4, v7

    move-object v7, v12

    goto :goto_2

    :cond_6
    :goto_4
    return-object v6

    :cond_7
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .locals 1

    .line 1530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1531
    const-class v0, Landroidx/viewpager/widget/OriginalViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGutterDrag(FF)Z
    .locals 2

    .line 2042
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    cmpg-float p0, p2, v1

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2681
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2682
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2686
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2687
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2688
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 2689
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private pageScrolled(I)Z
    .locals 7

    .line 1849
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1850
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_0

    return v2

    .line 1855
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1856
    invoke-virtual {p0, v2, p1, v2}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 1857
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_1

    return v2

    .line 1858
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1863
    :cond_2
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    .line 1864
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v3

    .line 1865
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1867
    iget v6, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1868
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v3

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1872
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    .line 1873
    invoke-virtual {p0, v6, p1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->onPageScrolled(IFI)V

    .line 1874
    iget-boolean p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 1875
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private performDrag(F)Z
    .locals 9

    .line 2348
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2349
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2351
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2353
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2355
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    .line 2356
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    .line 2360
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2361
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2362
    iget v6, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_0

    .line 2364
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    .line 2366
    :goto_0
    iget v6, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2368
    iget v2, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    cmpg-float v6, p1, v1

    if-gez v6, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 2374
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v5, :cond_4

    sub-float/2addr p1, v2

    .line 2381
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_4
    move p1, v2

    .line 2387
    :cond_5
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2388
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 2389
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1687
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1688
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1689
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result p0

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/widget/SpringScroller;->setFinalX(I)V

    goto :goto_1

    .line 1691
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1692
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1694
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 1698
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1

    .line 1701
    :cond_1
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1702
    iget p2, p2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1704
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1705
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1706
    invoke-direct {p0, p2}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 1707
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private removeNonDecorViews()V
    .locals 2

    const/4 v0, 0x0

    .line 564
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 565
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 567
    iget-boolean v1, v1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 2339
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2341
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private resetTouch()Z
    .locals 1

    const/4 v0, -0x1

    .line 2330
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2331
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->endDrag()V

    .line 2332
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2333
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2334
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

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

.method private scrollToItem(IZIZ)V
    .locals 5

    .line 685
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 689
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    iget v0, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    .line 690
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 689
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 693
    invoke-virtual {p0, v0, v1, p3}, Landroidx/viewpager/widget/OriginalViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_3

    .line 695
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 699
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 701
    :cond_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 702
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 703
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2705
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2706
    iput-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 4

    .line 1292
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1293
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1298
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1300
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1301
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1303
    :cond_1
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v0, Landroidx/viewpager/widget/OriginalViewPager;->sPositionComparator:Landroidx/viewpager/widget/OriginalViewPager$ViewPositionComparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2941
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2943
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2946
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2947
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2948
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2949
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2950
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2951
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2962
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2965
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2969
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 2973
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 2

    .line 1018
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;-><init>()V

    .line 1019
    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 1020
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1021
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_1

    .line 1022
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1023
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;)V
    .locals 1

    .line 732
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 735
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2986
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2987
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2988
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2989
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2990
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2991
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1504
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1505
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/OriginalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1507
    :cond_0
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1509
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/OriginalViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    .line 1510
    iget-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1514
    iput-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 1515
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 1512
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1517
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6

    .line 2829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2834
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_2

    .line 2835
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_4

    .line 2843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2844
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2847
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 2849
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 2849
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2857
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 2863
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2864
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 2866
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result v0

    goto :goto_5

    .line 2868
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2873
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2874
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 2876
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result v0

    goto :goto_5

    .line 2878
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2886
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result v2

    goto :goto_7

    .line 2883
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result v2

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 2889
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2755
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2756
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2757
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2758
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2759
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2764
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2765
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2766
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2767
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2768
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2767
    invoke-virtual/range {v6 .. v11}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2774
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2728
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2732
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v0

    .line 2733
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2735
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 2737
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3065
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1825
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 1826
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1827
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1828
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 1829
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v2}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    move-result v2

    .line 1830
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1832
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1833
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1834
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1835
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1840
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 1845
    :cond_2
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    return-void
.end method

.method convertPositionForRTL(IIZZ)I
    .locals 0

    .line 0
    if-ne p3, p4, :cond_0

    return p2

    :cond_0
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method dataSetChanged()V
    .locals 10

    .line 1033
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1034
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 1035
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    .line 1036
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1037
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    move v5, v4

    move v6, v5

    .line 1040
    :goto_1
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1041
    iget-object v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1042
    iget-object v8, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 1049
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    .line 1053
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v6, v3

    .line 1057
    :cond_2
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget-object v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1060
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iget v7, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v1, v7, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 1062
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_3
    :goto_2
    move v1, v3

    goto :goto_3

    .line 1068
    :cond_4
    iget v9, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_6

    .line 1069
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v9, v1, :cond_5

    move v2, v8

    .line 1074
    :cond_5
    iput v8, v7, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    .line 1080
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1083
    :cond_8
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v5, Landroidx/viewpager/widget/OriginalViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_b

    .line 1087
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    .line 1089
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1090
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1091
    iget-boolean v6, v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    .line 1092
    iput v6, v5, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1096
    :cond_a
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    .line 1097
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2780
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 3033
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3034
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    .line 3038
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3040
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3041
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3042
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3043
    iget v4, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 3044
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2462
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2465
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2466
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2468
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2492
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2493
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2469
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2474
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2475
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2476
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2477
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2478
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2480
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2481
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2482
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 2483
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2485
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2486
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2487
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2488
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2489
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2498
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 924
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 925
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 2793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 2794
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2810
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2811
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 2812
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2813
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    .line 2803
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2804
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageRight()Z

    move-result p0

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    .line 2806
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    .line 2796
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2797
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->pageLeft()Z

    move-result p0

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    .line 2799
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3055
    new-instance p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3070
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3060
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 811
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 812
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 813
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    return p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 636
    iget p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    return p0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 1

    .line 1555
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1556
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1559
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 1561
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    .line 1544
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1545
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1546
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;
    .locals 3

    const/4 v0, 0x0

    .line 1565
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1566
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1567
    iget v2, v1, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method initViewPager()V
    .locals 5

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 405
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 407
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 410
    new-instance v2, Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-direct {v2}, Lmiuix/androidbasewidget/widget/SpringScroller;-><init>()V

    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 411
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 412
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 414
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 415
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMinimumVelocity:I

    .line 416
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    .line 417
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 418
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 420
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 421
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 422
    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    .line 424
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/OriginalViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 426
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 432
    :cond_0
    new-instance v0, Landroidx/viewpager/widget/OriginalViewPager$4;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/OriginalViewPager$4;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method isRTL()Z
    .locals 1

    .line 1466
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1467
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1576
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1577
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 484
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 486
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 489
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2504
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2507
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    if-lez v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_4

    .line 2508
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 2509
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 2511
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2513
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 2514
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    .line 2515
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2516
    iget v9, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    .line 2517
    iget-object v10, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2519
    :goto_1
    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2520
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    .line 2525
    iget v7, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    iget v11, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    .line 2528
    :cond_1
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 2533
    :goto_2
    iget v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    int-to-float v13, v1

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2

    .line 2534
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    iget v15, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v12

    .line 2535
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 2534
    invoke-virtual {v11, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2536
    iget-object v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2062
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v8, 0x0

    if-eq v0, v1, :cond_f

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2075
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    return v9

    .line 2079
    :cond_1
    iget-boolean v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 2184
    :cond_3
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2096
    :cond_4
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 2102
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 2104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_6

    goto/16 :goto_2

    .line 2108
    :cond_6
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2109
    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2110
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2111
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2112
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_7

    .line 2115
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2116
    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/OriginalViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2118
    iput v10, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2119
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2120
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2123
    :cond_7
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_9

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v11, v1

    cmpl-float v1, v11, v13

    if-lez v1, :cond_9

    .line 2125
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2126
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2127
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    if-lez v14, :cond_8

    .line 2129
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_8
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2130
    iput v12, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2131
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_9
    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_a

    .line 2138
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2140
    :cond_a
    :goto_1
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2142
    invoke-direct {p0, v10}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2143
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 2154
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2155
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2156
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    .line 2157
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsUnableToDrag:Z

    .line 2159
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 2160
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->computeScrollOffset()Z

    .line 2161
    iget v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    if-ne v0, v1, :cond_c

    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    .line 2162
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v1}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/viewpager/widget/OriginalViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_c

    .line 2164
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 2165
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 2166
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 2167
    iput-boolean v9, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2168
    invoke-direct {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2169
    invoke-virtual {p0, v9}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    goto :goto_2

    .line 2171
    :cond_c
    invoke-direct {p0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 2172
    iput-boolean v8, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2188
    :cond_d
    :goto_2
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 2189
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2191
    :cond_e
    iget-object v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2197
    iget-boolean v0, v6, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    return v0

    .line 2068
    :cond_f
    :goto_3
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1714
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1717
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 1718
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 1720
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 1721
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 1728
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1729
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1730
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1733
    iget-boolean v14, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_6

    .line 1734
    iget v12, v12, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 1749
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1750
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1742
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 1745
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 1766
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1767
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 1759
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 1762
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v4, v8

    .line 1772
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    .line 1773
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    .line 1771
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_a

    .line 1782
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1783
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 1784
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1786
    iget-boolean v10, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v2

    .line 1787
    iget v10, v10, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    mul-float/2addr v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v4

    .line 1790
    iget-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1793
    iput-boolean v14, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->needsMeasure:Z

    .line 1794
    iget v9, v9, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v9

    float-to-int v9, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    sub-int v14, v3, v5

    sub-int/2addr v14, v7

    .line 1797
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1800
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 1808
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    .line 1809
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    .line 1807
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1813
    :cond_a
    iput v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v7

    .line 1814
    iput v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mBottomPageBounds:I

    .line 1815
    iput v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    .line 1817
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_b

    .line 1818
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 1820
    :goto_6
    iput-boolean v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1587
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    .line 1588
    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    .line 1587
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 1590
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    .line 1591
    div-int/lit8 p2, p1, 0xa

    .line 1592
    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDefaultGutterSize:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mGutterSize:I

    .line 1595
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 1596
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    .line 1603
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    .line 1605
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1606
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 1607
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v3, :cond_b

    .line 1608
    iget-boolean v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-eqz v7, :cond_b

    .line 1609
    iget v7, v3, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v4

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v4, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v8

    move v8, v5

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    move v9, v5

    goto :goto_4

    :cond_5
    move v9, v8

    .line 1624
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_7
    move v10, p1

    .line 1630
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_7

    :cond_8
    move v3, p2

    goto :goto_7

    :cond_9
    move v3, p2

    move v5, v9

    .line 1636
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1637
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1638
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 1641
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    .line 1643
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1649
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildWidthMeasureSpec:I

    .line 1650
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    .line 1653
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 1654
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 1655
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    .line 1658
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_f

    .line 1660
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 1666
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    if-eqz v2, :cond_d

    .line 1667
    iget-boolean v4, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    .line 1668
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1670
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 11

    .line 1896
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mDecorChildCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_5

    .line 1897
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 1898
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 1899
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 1900
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 1901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 1903
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1904
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1905
    iget-boolean v9, v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_0

    goto :goto_3

    .line 1907
    :cond_0
    iget v8, v8, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    if-eq v8, v1, :cond_3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    .line 1922
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1923
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    .line 1915
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    .line 1918
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, v0

    .line 1928
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    .line 1930
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1935
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1950
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 3006
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v0

    move v0, v2

    move v4, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v4, v1

    :goto_0
    if-eq v0, v1, :cond_2

    .line 3017
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3018
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 3019
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3020
    iget v6, v6, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v7, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 3021
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1481
    instance-of v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1482
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1486
    :cond_0
    check-cast p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    .line 1487
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1489
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1490
    iget-object v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v4, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1491
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1492
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iget v3, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    iget p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result v4

    invoke-virtual {p0, v0, v3, p1, v4}, Landroidx/viewpager/widget/OriginalViewPager;->convertPositionForRTL(IIZZ)I

    move-result p1

    .line 1491
    invoke-virtual {p0, p1, v2, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_2

    .line 1495
    :cond_2
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 1496
    iget v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    .line 1497
    iget-object v0, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1498
    iget-object p1, p1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1455
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1456
    new-instance v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/OriginalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1457
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->position:I

    .line 1458
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result v0

    iput v0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->isRTL:I

    .line 1459
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p0, :cond_0

    .line 1460
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Landroidx/viewpager/widget/OriginalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1678
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1682
    iget p2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/OriginalViewPager;->recomputeScrollPosition(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2202
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2209
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2215
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2220
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2221
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2223
    :cond_3
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 2318
    :cond_4
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2319
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 2311
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2312
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2313
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2314
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2305
    :cond_6
    iget-boolean p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_d

    .line 2306
    iget p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    .line 2307
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2241
    :cond_7
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_a

    .line 2242
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    .line 2246
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_1

    .line 2249
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2250
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2251
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2252
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2256
    iget v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 2258
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    .line 2259
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2260
    iget v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    .line 2261
    :cond_9
    iget v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mTouchSlop:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2262
    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2263
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 2264
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    .line 2267
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2269
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2274
    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2276
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2277
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2278
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 2282
    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 2283
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2284
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2285
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2286
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 2287
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v2

    .line 2288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 2289
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v4

    .line 2290
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2291
    iget v6, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2292
    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2294
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2295
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2296
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2297
    invoke-direct {p0, v6, v3, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2299
    invoke-virtual {p0, p1, v1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    .line 2301
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->resetTouch()Z

    move-result v2

    goto :goto_1

    .line 2230
    :cond_c
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 2231
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 2232
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 2235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionX:F

    .line 2236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInitialMotionY:F

    iput v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mLastMotionY:F

    .line 2237
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mActivePointerId:I

    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 2323
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method pageLeft()Z
    .locals 2

    .line 2921
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2922
    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method pageRight()Z
    .locals 3

    .line 2929
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2930
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method populate()V
    .locals 1

    .line 1102
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1107
    iget v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v2, v1, :cond_0

    .line 1108
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->infoForPosition(I)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    .line 1109
    iput v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1112
    :goto_0
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_1

    .line 1113
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1121
    :cond_1
    iget-boolean v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_2

    .line 1123
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1130
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1134
    :cond_3
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1136
    iget v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 1137
    iget v4, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1138
    iget-object v6, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1139
    iget v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1141
    iget v7, v0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_1e

    move v7, v5

    .line 1159
    :goto_1
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1160
    iget-object v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 1161
    iget v9, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v10, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-lt v9, v10, :cond_4

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1168
    iget v8, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 1177
    iget-object v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1178
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    move v14, v9

    goto :goto_4

    .line 1180
    :cond_8
    iget v14, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    .line 1181
    :goto_4
    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int/lit8 v3, v3, -0x1

    move v15, v9

    :goto_5
    if-ltz v3, :cond_e

    cmpl-float v16, v15, v14

    if-ltz v16, :cond_a

    if-ge v3, v4, :cond_a

    if-nez v11, :cond_9

    goto :goto_7

    .line 1186
    :cond_9
    iget v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_d

    iget-boolean v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_d

    .line 1187
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1188
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v11, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_c

    .line 1195
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    .line 1197
    iget v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v3, v5, :cond_b

    .line 1198
    iget v5, v11, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_c

    .line 1200
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_6

    :cond_b
    add-int/lit8 v5, v10, 0x1

    .line 1202
    invoke-virtual {v0, v3, v5}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v5

    .line 1203
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_c

    .line 1205
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    move-object v11, v5

    :cond_d
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_5

    .line 1209
    :cond_e
    :goto_7
    iget v3, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_16

    .line 1212
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_8

    :cond_f
    const/4 v5, 0x0

    :goto_8
    if-gtz v12, :cond_10

    move v10, v9

    goto :goto_9

    .line 1214
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    .line 1215
    :goto_9
    iget v11, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    :goto_a
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v6, :cond_16

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_13

    if-le v11, v1, :cond_13

    if-nez v5, :cond_11

    goto :goto_c

    .line 1220
    :cond_11
    iget v12, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_15

    iget-boolean v12, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    if-nez v12, :cond_15

    .line 1221
    iget-object v12, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1222
    iget-object v12, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v5}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1227
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    goto :goto_b

    :cond_13
    if-eqz v5, :cond_14

    .line 1229
    iget v12, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    if-ne v11, v12, :cond_14

    .line 1230
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1232
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    goto :goto_b

    .line 1234
    :cond_14
    invoke-virtual {v0, v11, v4}, Landroidx/viewpager/widget/OriginalViewPager;->addNewItem(II)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1236
    iget v5, v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    .line 1237
    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    iget-object v5, v0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    :cond_15
    :goto_b
    goto :goto_a

    .line 1242
    :cond_16
    :goto_c
    invoke-direct {v0, v8, v7, v2}, Landroidx/viewpager/widget/OriginalViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;ILandroidx/viewpager/widget/OriginalViewPager$ItemInfo;)V

    .line 1244
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    iget-object v3, v8, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1254
    :cond_17
    iget-object v1, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1258
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    .line 1260
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1261
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;

    .line 1262
    iput v2, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->childIndex:I

    .line 1263
    iget-boolean v5, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_18

    iget v5, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_18

    .line 1265
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1267
    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->widthFactor:F

    .line 1268
    iget v3, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iput v3, v4, Landroidx/viewpager/widget/OriginalViewPager$LayoutParams;->position:I

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1272
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/OriginalViewPager;->sortChildDrawingOrder()V

    .line 1274
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1275
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1276
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v3

    goto :goto_e

    :cond_1a
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_1b

    .line 1277
    iget v1, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v2, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v1, v2, :cond_1d

    :cond_1b
    const/4 v5, 0x0

    .line 1278
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v5, v1, :cond_1d

    .line 1279
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1280
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1281
    iget v2, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget v3, v0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    .line 1282
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1d
    :goto_10
    return-void

    .line 1144
    :cond_1e
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    .line 1146
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    :goto_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1536
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1539
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 8

    .line 511
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 513
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 514
    :goto_0
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 515
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    .line 516
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->position:I

    iget-object v3, v3, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 519
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 520
    invoke-direct {p0}, Landroidx/viewpager/widget/OriginalViewPager;->removeNonDecorViews()V

    .line 521
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    .line 522
    invoke-virtual {p0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 525
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 526
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 527
    iput v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    if-eqz p1, :cond_5

    .line 530
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    if-nez v3, :cond_2

    .line 531
    new-instance v3, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/OriginalViewPager;)V

    iput-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    .line 533
    :cond_2
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mObserver:Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 534
    iput-boolean v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 535
    iget-boolean v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 536
    iput-boolean v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    .line 537
    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mExpectedAdapterCount:I

    .line 538
    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 539
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 540
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 541
    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    iget v5, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    iget-boolean v6, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurIsRTL:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->isRTL()Z

    move-result v7

    invoke-virtual {p0, v3, v5, v6, v7}, Landroidx/viewpager/widget/OriginalViewPager;->convertPositionForRTL(IIZZ)I

    move-result v3

    .line 540
    invoke-virtual {p0, v3, v2, v4}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    .line 543
    iput v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredCurItem:I

    .line 544
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 545
    iput-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 547
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    goto :goto_1

    .line 549
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 554
    :cond_5
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 555
    iget-object v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    .line 558
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;

    move-object v4, p0

    check-cast v4, Lmiuix/viewpager/widget/ViewPager;

    invoke-interface {v3, v4, v0, p1}, Landroidx/viewpager/widget/OriginalViewPager$OnAdapterChangeListener;->onAdapterChanged(Lmiuix/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 621
    iget-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mPopulatePending:Z

    .line 632
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/OriginalViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4

    .line 644
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    .line 648
    iget p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 649
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 656
    iget-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 658
    :cond_3
    :goto_0
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mOffscreenPageLimit:I

    .line 659
    iget v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 663
    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 664
    iget-object v2, p0, Landroidx/viewpager/widget/OriginalViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;

    iput-boolean p3, v2, Landroidx/viewpager/widget/OriginalViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 667
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eq v0, p1, :cond_6

    move v1, p3

    .line 669
    :cond_6
    iget-boolean p3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mFirstLayout:Z

    if-eqz p3, :cond_8

    .line 672
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mCurItem:I

    if-eqz v1, :cond_7

    .line 674
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnPageSelected(I)V

    .line 676
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 678
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->populate(I)V

    .line 679
    invoke-direct {p0, p1, p2, p4, v1}, Landroidx/viewpager/widget/OriginalViewPager;->scrollToItem(IZIZ)V

    :goto_2
    return-void

    .line 645
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 493
    iget v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 497
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScrollState:I

    .line 502
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/OriginalViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 10

    .line 959
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 961
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 965
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 971
    iget-boolean v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/SpringScroller;->getStartX()I

    move-result v0

    .line 973
    :goto_1
    iget-object v3, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    invoke-virtual {v3}, Lmiuix/androidbasewidget/widget/SpringScroller;->abortAnimation()V

    .line 974
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 976
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 978
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    sub-int v4, p1, v0

    sub-int v5, p2, v3

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 982
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->completeScroll(Z)V

    .line 983
    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->populate()V

    .line 984
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    return-void

    .line 988
    :cond_4
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 v2, 0x2

    .line 989
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/OriginalViewPager;->setScrollState(I)V

    .line 1010
    iput-boolean v1, p0, Landroidx/viewpager/widget/OriginalViewPager;->mIsScrollStarted:Z

    .line 1013
    iget-object v4, p0, Landroidx/viewpager/widget/OriginalViewPager;->mScroller:Lmiuix/androidbasewidget/widget/SpringScroller;

    int-to-float v5, v0

    int-to-float v6, p1

    int-to-float v7, v3

    int-to-float v8, p2

    neg-int p1, p3

    int-to-float v9, p1

    invoke-virtual/range {v4 .. v9}, Lmiuix/androidbasewidget/widget/SpringScroller;->startScroll(FFFFF)V

    .line 1014
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 919
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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
