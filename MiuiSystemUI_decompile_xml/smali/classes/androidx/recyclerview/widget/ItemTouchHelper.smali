.class public final Landroidx/recyclerview/widget/ItemTouchHelper;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field private mActionState:I

.field public mActivePointerId:I

.field public final mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field public mDistances:Ljava/util/List;

.field private mDragScrollStartTimeInMs:J

.field public mDx:F

.field public mDy:F

.field public mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field public mMaxSwipeVelocity:F

.field public final mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

.field public mOverdrawChild:Landroid/view/View;

.field public final mPendingCleanup:Ljava/util/List;

.field public final mRecoverAnimations:Ljava/util/List;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mScrollRunnable:Landroidx/recyclerview/widget/ItemTouchHelper$1;

.field public mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public mSelectedFlags:I

.field public mSelectedStartX:F

.field public mSelectedStartY:F

.field public mSlop:I

.field public mSwapTargets:Ljava/util/List;

.field public mSwipeEscapeVelocity:F

.field public final mTmpPosition:[F

.field public mTmpRect:Landroid/graphics/Rect;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 10
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [F

    .line 13
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 15
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 18
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 21
    const/4 v1, 0x0

    .line 23
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 31
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 33
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 35
    iput-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 38
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 40
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 42
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 44
    iput-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 47
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 49
    return-void
    .line 51
.end method

.method private getSelectedDxDy([F)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 2
    and-int/lit8 v0, v0, 0xc

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 11
    add-float/2addr v0, v2

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    sub-float/2addr v0, v2

    .line 23
    aput v0, p1, v1

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 27
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 31
    move-result v0

    .line 34
    aput v0, p1, v1

    .line 35
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 37
    and-int/lit8 v0, v0, 0x3

    .line 39
    const/4 v1, 0x1

    .line 41
    if-eqz v0, :cond_1

    .line 42
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 44
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 46
    add-float/2addr v0, v2

    .line 48
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 49
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 53
    move-result p0

    .line 56
    int-to-float p0, p0

    .line 57
    sub-float/2addr v0, p0

    .line 58
    aput v0, p1, v1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 66
    move-result p0

    .line 69
    aput p0, p1, v1

    .line 70
    :goto_1
    return-void
    .line 72
.end method

.method public static hitTest(Landroid/view/View;FFFF)Z
    .locals 1

    .line 1
    cmpl-float v0, p1, p3

    .line 2
    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 9
    int-to-float v0, v0

    .line 10
    add-float/2addr p3, v0

    .line 11
    cmpg-float p1, p1, p3

    .line 12
    if-gtz p1, :cond_0

    .line 14
    cmpl-float p1, p2, p4

    .line 16
    if-ltz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p0

    .line 23
    int-to-float p0, p0

    .line 24
    add-float/2addr p4, p0

    .line 25
    cmpg-float p0, p2, p4

    .line 26
    if-gtz p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method


# virtual methods
.method public final attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Landroidx/recyclerview/widget/ItemTouchHelper$2;

    .line 7
    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 21
    const/4 v3, 0x0

    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    iput-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 30
    if-nez v0, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v2

    .line 47
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 48
    const/4 v4, 0x0

    .line 50
    if-ltz v2, :cond_3

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 57
    iget-object v5, v4, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 59
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iget-object v4, v4, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 66
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 68
    invoke-virtual {v6, v5, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 70
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 79
    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 83
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 86
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 88
    if-eqz v0, :cond_5

    .line 90
    iput-boolean v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 92
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 94
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 96
    if-eqz v0, :cond_6

    .line 98
    iput-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 100
    :cond_6
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    if-eqz p1, :cond_8

    .line 104
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 106
    move-result-object p1

    .line 109
    const v0, 0x7f070425    # @dimen/item_touch_helper_swipe_escape_velocity '120.0dp'

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 113
    move-result v0

    .line 116
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 117
    const v0, 0x7f070424    # @dimen/item_touch_helper_swipe_escape_max_velocity '800.0dp'

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 122
    move-result p1

    .line 125
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 126
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 130
    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 134
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 138
    move-result p1

    .line 141
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 142
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 146
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 149
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 158
    if-nez v0, :cond_7

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 167
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 169
    check-cast p1, Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 176
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 178
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 181
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    .line 183
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 187
    move-result-object v0

    .line 190
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 191
    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 193
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 196
    :cond_8
    return-void
    .line 198
.end method

.method public final checkHorizontalSwipe(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0xc

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 6
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    const/16 v2, 0x8

    .line 11
    const/4 v3, 0x4

    .line 13
    if-lez v0, :cond_0

    .line 14
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v3

    .line 18
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 19
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 21
    if-eqz v4, :cond_2

    .line 23
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 25
    const/4 v7, -0x1

    .line 27
    if-le v6, v7, :cond_2

    .line 28
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const/16 v7, 0x3e8

    .line 35
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 37
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 40
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 42
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 44
    move-result v4

    .line 47
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 50
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 52
    move-result v6

    .line 55
    cmpl-float v1, v4, v1

    .line 56
    if-lez v1, :cond_1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    move v2, v3

    .line 61
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 62
    move-result v1

    .line 65
    and-int v3, v2, p1

    .line 66
    if-eqz v3, :cond_2

    .line 68
    if-ne v0, v2, :cond_2

    .line 70
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 72
    cmpl-float v3, v1, v3

    .line 74
    if-ltz v3, :cond_2

    .line 76
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 78
    move-result v3

    .line 81
    cmpl-float v1, v1, v3

    .line 82
    if-lez v1, :cond_2

    .line 84
    return v2

    .line 86
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 89
    move-result v1

    .line 92
    int-to-float v1, v1

    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const/high16 v2, 0x3f000000    # 0.5f

    .line 97
    mul-float/2addr v1, v2

    .line 99
    and-int/2addr p1, v0

    .line 100
    if-eqz p1, :cond_3

    .line 101
    iget p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 103
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 105
    move-result p0

    .line 108
    cmpl-float p0, p0, v1

    .line 109
    if-lez p0, :cond_3

    .line 111
    return v0

    .line 113
    :cond_3
    const/4 p0, 0x0

    .line 114
    return p0
    .line 115
.end method

.method public final checkSelectForSwipe(IILandroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    if-nez p2, :cond_0

    .line 4
    const/4 p2, 0x2

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 9
    if-eq p1, p2, :cond_0

    .line 11
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final checkVerticalSwipe(I)I
    .locals 8

    .line 1
    and-int/lit8 v0, p1, 0x3

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 6
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-lez v0, :cond_0

    .line 13
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 18
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 20
    if-eqz v4, :cond_2

    .line 22
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 24
    const/4 v7, -0x1

    .line 26
    if-le v6, v7, :cond_2

    .line 27
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    const/16 v7, 0x3e8

    .line 34
    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 36
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 39
    iget v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 41
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 43
    move-result v4

    .line 46
    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 47
    iget v7, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 49
    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 51
    move-result v6

    .line 54
    cmpl-float v1, v6, v1

    .line 55
    if-lez v1, :cond_1

    .line 57
    goto :goto_1

    .line 59
    :cond_1
    move v2, v3

    .line 60
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 61
    move-result v1

    .line 64
    and-int v3, v2, p1

    .line 65
    if-eqz v3, :cond_2

    .line 67
    if-ne v2, v0, :cond_2

    .line 69
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 71
    cmpl-float v3, v1, v3

    .line 73
    if-ltz v3, :cond_2

    .line 75
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 77
    move-result v3

    .line 80
    cmpl-float v1, v1, v3

    .line 81
    if-lez v1, :cond_2

    .line 83
    return v2

    .line 85
    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 88
    move-result v1

    .line 91
    int-to-float v1, v1

    .line 92
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    const/high16 v2, 0x3f000000    # 0.5f

    .line 96
    mul-float/2addr v1, v2

    .line 98
    and-int/2addr p1, v0

    .line 99
    if-eqz p1, :cond_3

    .line 100
    iget p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 102
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 104
    move-result p0

    .line 107
    cmpl-float p0, p0, v1

    .line 108
    if-lez p0, :cond_3

    .line 110
    return v0

    .line 112
    :cond_3
    const/4 p0, 0x0

    .line 113
    return p0
    .line 114
.end method

.method public final endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    if-ltz v0, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 18
    iget-object v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 20
    if-ne v2, p1, :cond_0

    .line 22
    iget-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    .line 24
    or-int/2addr p1, p2

    .line 26
    iput-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    .line 27
    iget-boolean p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    .line 29
    if-nez p1, :cond_1

    .line 31
    iget-object p1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 35
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    :cond_2
    return-void
    .line 41
.end method

.method public final findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 6
    move-result p1

    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 14
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 16
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 18
    add-float/2addr v2, v3

    .line 20
    iget v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 21
    iget v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 23
    add-float/2addr v3, v4

    .line 25
    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 33
    move-object v2, v1

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    :goto_0
    if-ltz v2, :cond_2

    .line 44
    move-object v3, v1

    .line 46
    check-cast v3, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 53
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 55
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 57
    iget v5, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mX:F

    .line 59
    iget v3, v3, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mY:F

    .line 61
    invoke-static {v4, v0, p1, v5, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    .line 63
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    return-object v4

    .line 69
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 75
    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildCount()I

    .line 77
    move-result v1

    .line 80
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 81
    if-ltz v1, :cond_4

    .line 83
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/ChildHelper;

    .line 85
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 91
    move-result v3

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 95
    move-result v4

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 99
    move-result v5

    .line 102
    int-to-float v5, v5

    .line 103
    add-float/2addr v5, v3

    .line 104
    cmpl-float v5, v0, v5

    .line 105
    if-ltz v5, :cond_3

    .line 107
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 109
    move-result v5

    .line 112
    int-to-float v5, v5

    .line 113
    add-float/2addr v5, v3

    .line 114
    cmpg-float v3, v0, v5

    .line 115
    if-gtz v3, :cond_3

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 119
    move-result v3

    .line 122
    int-to-float v3, v3

    .line 123
    add-float/2addr v3, v4

    .line 124
    cmpl-float v3, p1, v3

    .line 125
    if-ltz v3, :cond_3

    .line 127
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 129
    move-result v3

    .line 132
    int-to-float v3, v3

    .line 133
    add-float/2addr v3, v4

    .line 134
    cmpg-float v3, p1, v3

    .line 135
    if-gtz v3, :cond_3

    .line 137
    goto :goto_1

    .line 139
    :cond_4
    const/4 v2, 0x0

    .line 140
    :goto_1
    return-object v2
    .line 141
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    return-void
    .line 5
.end method

.method public final moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    .line 8
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 15
    const/4 v3, 0x2

    .line 17
    if-eq v2, v3, :cond_1

    .line 18
    return-void

    .line 20
    :cond_1
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 26
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 28
    add-float/2addr v4, v5

    .line 30
    float-to-int v4, v4

    .line 31
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 32
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 34
    add-float/2addr v5, v6

    .line 36
    float-to-int v5, v5

    .line 37
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 38
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 40
    move-result v6

    .line 43
    sub-int v6, v5, v6

    .line 44
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 46
    move-result v6

    .line 49
    int-to-float v6, v6

    .line 50
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v8

    .line 56
    int-to-float v8, v8

    .line 57
    const/high16 v9, 0x3f000000    # 0.5f

    .line 58
    mul-float/2addr v8, v9

    .line 60
    cmpg-float v6, v6, v8

    .line 61
    if-gez v6, :cond_2

    .line 63
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 65
    move-result v6

    .line 68
    sub-int v6, v4, v6

    .line 69
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 71
    move-result v6

    .line 74
    int-to-float v6, v6

    .line 75
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 76
    move-result v8

    .line 79
    int-to-float v8, v8

    .line 80
    mul-float/2addr v8, v9

    .line 81
    cmpg-float v6, v6, v8

    .line 82
    if-gez v6, :cond_2

    .line 84
    return-void

    .line 86
    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 87
    if-nez v6, :cond_3

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    .line 91
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iput-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iput-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 103
    goto :goto_0

    .line 105
    :cond_3
    check-cast v6, Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 111
    check-cast v6, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 115
    :goto_0
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 118
    iget v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 120
    add-float/2addr v6, v8

    .line 122
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 123
    move-result v6

    .line 126
    const/4 v8, 0x0

    .line 127
    sub-int/2addr v6, v8

    .line 128
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 129
    iget v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 131
    add-float/2addr v9, v10

    .line 133
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 134
    move-result v9

    .line 137
    sub-int/2addr v9, v8

    .line 138
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 139
    move-result v10

    .line 142
    add-int/2addr v10, v6

    .line 143
    add-int/2addr v10, v8

    .line 144
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 145
    move-result v11

    .line 148
    add-int/2addr v11, v9

    .line 149
    add-int/2addr v11, v8

    .line 150
    add-int v12, v6, v10

    .line 151
    div-int/2addr v12, v3

    .line 153
    add-int v13, v9, v11

    .line 154
    div-int/2addr v13, v3

    .line 156
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 159
    move-result-object v14

    .line 162
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 163
    move-result v15

    .line 166
    :goto_1
    if-ge v8, v15, :cond_9

    .line 167
    invoke-virtual {v14, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 169
    move-result-object v3

    .line 172
    if-ne v3, v7, :cond_4

    .line 173
    move/from16 v19, v6

    .line 175
    move/from16 v20, v9

    .line 177
    move/from16 v21, v10

    .line 179
    move-object/from16 v18, v14

    .line 181
    goto/16 :goto_4

    .line 183
    :cond_4
    move-object/from16 v18, v14

    .line 185
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 187
    move-result v14

    .line 190
    if-lt v14, v9, :cond_7

    .line 191
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 193
    move-result v14

    .line 196
    if-gt v14, v11, :cond_7

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 199
    move-result v14

    .line 202
    if-lt v14, v6, :cond_7

    .line 203
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 205
    move-result v14

    .line 208
    if-le v14, v10, :cond_5

    .line 209
    goto/16 :goto_3

    .line 211
    :cond_5
    iget-object v14, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    invoke-virtual {v14, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 215
    move-result-object v14

    .line 218
    move/from16 v19, v6

    .line 219
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 221
    invoke-virtual {v2, v6, v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 223
    move-result v6

    .line 226
    if-eqz v6, :cond_8

    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 229
    move-result v6

    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 233
    move-result v20

    .line 236
    add-int v20, v20, v6

    .line 237
    const/4 v6, 0x2

    .line 239
    div-int/lit8 v20, v20, 0x2

    .line 240
    sub-int v17, v12, v20

    .line 242
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    .line 244
    move-result v17

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 248
    move-result v20

    .line 251
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 252
    move-result v3

    .line 255
    add-int v3, v3, v20

    .line 256
    div-int/2addr v3, v6

    .line 258
    sub-int v3, v13, v3

    .line 259
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 261
    move-result v3

    .line 264
    mul-int v17, v17, v17

    .line 265
    mul-int/2addr v3, v3

    .line 267
    add-int v3, v3, v17

    .line 268
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 270
    check-cast v6, Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 274
    move-result v6

    .line 277
    move/from16 v20, v9

    .line 278
    move/from16 v21, v10

    .line 280
    const/4 v9, 0x0

    .line 282
    const/4 v10, 0x0

    .line 283
    :goto_2
    if-ge v9, v6, :cond_6

    .line 284
    move/from16 v22, v6

    .line 286
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 288
    check-cast v6, Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    move-result-object v6

    .line 295
    check-cast v6, Ljava/lang/Integer;

    .line 296
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 298
    move-result v6

    .line 301
    if-le v3, v6, :cond_6

    .line 302
    add-int/lit8 v10, v10, 0x1

    .line 304
    add-int/lit8 v9, v9, 0x1

    .line 306
    move/from16 v6, v22

    .line 308
    goto :goto_2

    .line 310
    :cond_6
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 311
    check-cast v6, Ljava/util/ArrayList;

    .line 313
    invoke-virtual {v6, v10, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 315
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 318
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    move-result-object v3

    .line 323
    check-cast v6, Ljava/util/ArrayList;

    .line 324
    invoke-virtual {v6, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 326
    goto :goto_4

    .line 329
    :cond_7
    :goto_3
    move/from16 v19, v6

    .line 330
    :cond_8
    move/from16 v20, v9

    .line 332
    move/from16 v21, v10

    .line 334
    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 336
    move-object/from16 v14, v18

    .line 338
    move/from16 v6, v19

    .line 340
    move/from16 v9, v20

    .line 342
    move/from16 v10, v21

    .line 344
    const/4 v3, 0x2

    .line 346
    goto/16 :goto_1

    .line 347
    :cond_9
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 349
    check-cast v3, Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 353
    move-result v6

    .line 356
    if-nez v6, :cond_a

    .line 357
    return-void

    .line 359
    :cond_a
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 360
    move-result v6

    .line 363
    add-int/2addr v6, v4

    .line 364
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 365
    move-result v8

    .line 368
    add-int/2addr v8, v5

    .line 369
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 370
    move-result v9

    .line 373
    sub-int v9, v4, v9

    .line 374
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 376
    move-result v10

    .line 379
    sub-int v10, v5, v10

    .line 380
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 382
    move-result v11

    .line 385
    const/4 v13, 0x0

    .line 386
    move-object v14, v13

    .line 387
    const/4 v13, 0x0

    .line 388
    const/4 v15, -0x1

    .line 389
    :goto_5
    if-ge v13, v11, :cond_11

    .line 390
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 392
    move-result-object v16

    .line 395
    move-object/from16 v12, v16

    .line 396
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 398
    if-lez v9, :cond_b

    .line 400
    move-object/from16 v16, v3

    .line 402
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 406
    move-result v3

    .line 409
    sub-int/2addr v3, v6

    .line 410
    move/from16 v18, v6

    .line 411
    if-gez v3, :cond_c

    .line 413
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 415
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 417
    move-result v6

    .line 420
    move/from16 v19, v11

    .line 421
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 423
    move-result v11

    .line 426
    if-le v6, v11, :cond_d

    .line 427
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 429
    move-result v3

    .line 432
    if-le v3, v15, :cond_d

    .line 433
    move v15, v3

    .line 435
    move-object v14, v12

    .line 436
    goto :goto_6

    .line 437
    :cond_b
    move-object/from16 v16, v3

    .line 438
    move/from16 v18, v6

    .line 440
    :cond_c
    move/from16 v19, v11

    .line 442
    :cond_d
    :goto_6
    if-gez v9, :cond_e

    .line 444
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 446
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 448
    move-result v3

    .line 451
    sub-int/2addr v3, v4

    .line 452
    if-lez v3, :cond_e

    .line 453
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 455
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 457
    move-result v6

    .line 460
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 461
    move-result v11

    .line 464
    if-ge v6, v11, :cond_e

    .line 465
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 467
    move-result v3

    .line 470
    if-le v3, v15, :cond_e

    .line 471
    move v15, v3

    .line 473
    move-object v14, v12

    .line 474
    :cond_e
    if-gez v10, :cond_f

    .line 475
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 477
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 479
    move-result v3

    .line 482
    sub-int/2addr v3, v5

    .line 483
    if-lez v3, :cond_f

    .line 484
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 486
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 488
    move-result v6

    .line 491
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 492
    move-result v11

    .line 495
    if-ge v6, v11, :cond_f

    .line 496
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 498
    move-result v3

    .line 501
    if-le v3, v15, :cond_f

    .line 502
    move v15, v3

    .line 504
    move-object v14, v12

    .line 505
    :cond_f
    if-lez v10, :cond_10

    .line 506
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 508
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 510
    move-result v3

    .line 513
    sub-int/2addr v3, v8

    .line 514
    if-gez v3, :cond_10

    .line 515
    iget-object v6, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    .line 519
    move-result v6

    .line 522
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 523
    move-result v11

    .line 526
    if-le v6, v11, :cond_10

    .line 527
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 529
    move-result v3

    .line 532
    if-le v3, v15, :cond_10

    .line 533
    move v15, v3

    .line 535
    move-object v14, v12

    .line 536
    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 537
    move-object/from16 v3, v16

    .line 539
    move/from16 v6, v18

    .line 541
    move/from16 v11, v19

    .line 543
    goto/16 :goto_5

    .line 545
    :cond_11
    if-nez v14, :cond_12

    .line 547
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 549
    check-cast v1, Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 553
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    .line 556
    check-cast v0, Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 560
    return-void

    .line 563
    :cond_12
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 564
    move-result v3

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 568
    invoke-virtual {v2, v1, v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 571
    move-result v1

    .line 574
    if-eqz v1, :cond_1b

    .line 575
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 577
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 579
    move-result-object v1

    .line 582
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 583
    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 585
    if-eqz v2, :cond_17

    .line 587
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 589
    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    .line 591
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 596
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 599
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 602
    move-result v0

    .line 605
    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 606
    move-result v2

    .line 609
    const/4 v3, 0x1

    .line 610
    if-ge v0, v2, :cond_13

    .line 611
    move v0, v3

    .line 613
    goto :goto_7

    .line 614
    :cond_13
    const/4 v0, -0x1

    .line 615
    :goto_7
    iget-boolean v5, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 616
    if-eqz v5, :cond_15

    .line 618
    if-ne v0, v3, :cond_14

    .line 620
    iget-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 622
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    .line 624
    move-result v0

    .line 627
    iget-object v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 628
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    .line 630
    move-result v3

    .line 633
    iget-object v4, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 634
    invoke-virtual {v4, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 636
    move-result v4

    .line 639
    add-int/2addr v4, v3

    .line 640
    sub-int/2addr v0, v4

    .line 641
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 642
    goto/16 :goto_8

    .line 645
    :cond_14
    iget-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 647
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper$1;->getEndAfterPadding()I

    .line 649
    move-result v0

    .line 652
    iget-object v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 653
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    .line 655
    move-result v3

    .line 658
    sub-int/2addr v0, v3

    .line 659
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 660
    goto :goto_8

    .line 663
    :cond_15
    const/4 v3, -0x1

    .line 664
    if-ne v0, v3, :cond_16

    .line 665
    iget-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 667
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedStart(Landroid/view/View;)I

    .line 669
    move-result v0

    .line 672
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 673
    goto :goto_8

    .line 676
    :cond_16
    iget-object v0, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 677
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedEnd(Landroid/view/View;)I

    .line 679
    move-result v0

    .line 682
    iget-object v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper$1;

    .line 683
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/OrientationHelper$1;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 685
    move-result v3

    .line 688
    sub-int/2addr v0, v3

    .line 689
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 690
    goto :goto_8

    .line 693
    :cond_17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 694
    move-result v2

    .line 697
    if-eqz v2, :cond_19

    .line 698
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    .line 700
    move-result v2

    .line 703
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 704
    move-result v5

    .line 707
    if-gt v2, v5, :cond_18

    .line 708
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 710
    :cond_18
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    .line 713
    move-result v2

    .line 716
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 717
    move-result v5

    .line 720
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 721
    move-result v6

    .line 724
    sub-int/2addr v5, v6

    .line 725
    if-lt v2, v5, :cond_19

    .line 726
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 728
    :cond_19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 731
    move-result v2

    .line 734
    if-eqz v2, :cond_1b

    .line 735
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 737
    move-result v2

    .line 740
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 741
    move-result v5

    .line 744
    if-gt v2, v5, :cond_1a

    .line 745
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 747
    :cond_1a
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 750
    move-result v1

    .line 753
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 754
    move-result v2

    .line 757
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 758
    move-result v4

    .line 761
    sub-int/2addr v2, v4

    .line 762
    if-lt v1, v2, :cond_1b

    .line 763
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 765
    :cond_1b
    :goto_8
    return-void
    .line 768
.end method

.method public final onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 14
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 26
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 29
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 41
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 45
    :cond_2
    :goto_0
    return-void
    .line 48
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 8
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 10
    aget v3, v0, v2

    .line 13
    aget v0, v0, v1

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    move v0, v3

    .line 19
    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 20
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 22
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    check-cast v5, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result p0

    .line 34
    move v6, v2

    .line 35
    :goto_1
    if-ge v6, p0, :cond_3

    .line 36
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v7

    .line 41
    check-cast v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 42
    iget v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mStartDx:F

    .line 44
    iget v9, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mTargetX:F

    .line 46
    cmpl-float v10, v8, v9

    .line 48
    if-nez v10, :cond_1

    .line 50
    iget-object v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 52
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 54
    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    .line 56
    move-result v8

    .line 59
    iput v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mX:F

    .line 60
    goto :goto_2

    .line 62
    :cond_1
    iget v10, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mFraction:F

    .line 63
    invoke-static {v9, v8, v10, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 65
    move-result v8

    .line 68
    iput v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mX:F

    .line 69
    :goto_2
    iget v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mStartDy:F

    .line 71
    iget v9, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mTargetY:F

    .line 73
    cmpl-float v10, v8, v9

    .line 75
    if-nez v10, :cond_2

    .line 77
    iget-object v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 79
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 81
    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    .line 83
    move-result v8

    .line 86
    iput v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mY:F

    .line 87
    goto :goto_3

    .line 89
    :cond_2
    iget v10, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mFraction:F

    .line 90
    invoke-static {v9, v8, v10, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 92
    move-result v8

    .line 95
    iput v8, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mY:F

    .line 96
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    move-result v8

    .line 101
    iget-object v9, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 102
    iget v10, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mX:F

    .line 104
    iget v7, v7, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mY:F

    .line 106
    invoke-static {p2, v9, v10, v7, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 108
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 111
    add-int/lit8 v6, v6, 0x1

    .line 114
    goto :goto_1

    .line 116
    :cond_3
    if-eqz v4, :cond_4

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    move-result p0

    .line 122
    invoke-static {p2, v4, v3, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFZ)V

    .line 123
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 126
    :cond_4
    return-void
    .line 129
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 8
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 10
    aget v3, v0, v1

    .line 13
    aget v0, v0, v2

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 17
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 19
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result p0

    .line 31
    move v4, v1

    .line 32
    :goto_0
    if-ge v4, p0, :cond_1

    .line 33
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 38
    check-cast v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    move-result v6

    .line 44
    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 45
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 47
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    move-result v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 61
    :cond_2
    sub-int/2addr p0, v2

    .line 64
    :goto_1
    if-ltz p0, :cond_5

    .line 65
    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 70
    check-cast p1, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 71
    iget-boolean v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mEnded:Z

    .line 73
    if-eqz v0, :cond_3

    .line 75
    iget-boolean p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 77
    if-nez p1, :cond_3

    .line 79
    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    goto :goto_2

    .line 84
    :cond_3
    if-nez v0, :cond_4

    .line 85
    move v1, v2

    .line 87
    :cond_4
    :goto_2
    add-int/lit8 p0, p0, -0x1

    .line 88
    goto :goto_1

    .line 90
    :cond_5
    if-eqz v1, :cond_6

    .line 91
    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 93
    :cond_6
    return-void
    .line 96
.end method

.method public final removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 7
    :cond_0
    return-void
    .line 9
.end method

.method public final scrollIfNecessary()Z
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-wide/high16 v2, -0x8000000000000000L

    .line 5
    if-nez v0, :cond_0

    .line 7
    iput-wide v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v4

    .line 15
    iget-wide v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 16
    cmp-long v0, v6, v2

    .line 18
    if-nez v0, :cond_1

    .line 20
    const-wide/16 v6, 0x0

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    sub-long v6, v4, v6

    .line 25
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 29
    move-result-object v0

    .line 32
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 33
    if-nez v8, :cond_2

    .line 35
    new-instance v8, Landroid/graphics/Rect;

    .line 37
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iput-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 42
    :cond_2
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 44
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    iget-object v9, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {v0, v9, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 50
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 53
    move-result v8

    .line 56
    const/4 v9, 0x0

    .line 57
    if-eqz v8, :cond_4

    .line 58
    iget v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 60
    iget v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 62
    add-float/2addr v8, v10

    .line 64
    float-to-int v8, v8

    .line 65
    iget-object v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    iget v10, v10, Landroid/graphics/Rect;->left:I

    .line 68
    sub-int v10, v8, v10

    .line 70
    iget-object v11, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 74
    move-result v11

    .line 77
    sub-int/2addr v10, v11

    .line 78
    iget v11, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 79
    cmpg-float v12, v11, v9

    .line 81
    if-gez v12, :cond_3

    .line 83
    if-gez v10, :cond_3

    .line 85
    goto :goto_1

    .line 87
    :cond_3
    cmpl-float v10, v11, v9

    .line 88
    if-lez v10, :cond_4

    .line 90
    iget-object v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 92
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 94
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 96
    move-result v10

    .line 99
    add-int/2addr v10, v8

    .line 100
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 101
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 103
    add-int/2addr v10, v8

    .line 105
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    .line 108
    move-result v8

    .line 111
    iget-object v11, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 114
    move-result v11

    .line 117
    sub-int/2addr v8, v11

    .line 118
    sub-int/2addr v10, v8

    .line 119
    if-lez v10, :cond_4

    .line 120
    :goto_1
    move v11, v10

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v11, v1

    .line 124
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 125
    move-result v0

    .line 128
    if-eqz v0, :cond_6

    .line 129
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 131
    iget v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 133
    add-float/2addr v0, v8

    .line 135
    float-to-int v0, v0

    .line 136
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 137
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 139
    sub-int v8, v0, v8

    .line 141
    iget-object v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getPaddingTop()I

    .line 145
    move-result v10

    .line 148
    sub-int/2addr v8, v10

    .line 149
    iget v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 150
    cmpg-float v12, v10, v9

    .line 152
    if-gez v12, :cond_5

    .line 154
    if-gez v8, :cond_5

    .line 156
    goto :goto_3

    .line 158
    :cond_5
    cmpl-float v8, v10, v9

    .line 159
    if-lez v8, :cond_6

    .line 161
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 163
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 165
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 167
    move-result v8

    .line 170
    add-int/2addr v8, v0

    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 172
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 174
    add-int/2addr v8, v0

    .line 176
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 179
    move-result v0

    .line 182
    iget-object v9, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 185
    move-result v9

    .line 188
    sub-int/2addr v0, v9

    .line 189
    sub-int/2addr v8, v0

    .line 190
    if-lez v8, :cond_6

    .line 191
    :goto_3
    move v0, v8

    .line 193
    goto :goto_4

    .line 194
    :cond_6
    move v0, v1

    .line 195
    :goto_4
    if-eqz v11, :cond_7

    .line 196
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 198
    iget-object v9, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 200
    iget-object v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 202
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 204
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 206
    move-result v10

    .line 209
    iget-object v12, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    .line 212
    move-wide v12, v6

    .line 215
    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 216
    move-result v11

    .line 219
    :cond_7
    move v14, v11

    .line 220
    if-eqz v0, :cond_8

    .line 221
    iget-object v8, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 223
    iget-object v9, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 225
    iget-object v10, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 227
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 229
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 231
    move-result v10

    .line 234
    iget-object v11, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 235
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getHeight()I

    .line 237
    move v11, v0

    .line 240
    move-wide v12, v6

    .line 241
    invoke-virtual/range {v8 .. v13}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    .line 242
    move-result v0

    .line 245
    :cond_8
    if-nez v14, :cond_a

    .line 246
    if-eqz v0, :cond_9

    .line 248
    goto :goto_5

    .line 250
    :cond_9
    iput-wide v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 251
    return v1

    .line 253
    :cond_a
    :goto_5
    iget-wide v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 254
    cmp-long v1, v6, v2

    .line 256
    if-nez v1, :cond_b

    .line 258
    iput-wide v4, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 260
    :cond_b
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    invoke-virtual {p0, v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 264
    const/4 p0, 0x1

    .line 267
    return p0
    .line 268
.end method

.method public final select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 23

    .line 1
    move-object/from16 v10, p0

    .line 2
    move-object/from16 v11, p1

    .line 4
    move/from16 v12, p2

    .line 6
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 8
    if-ne v11, v0, :cond_0

    .line 10
    iget v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 12
    if-ne v12, v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 17
    iput-wide v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 19
    iget v3, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 21
    const/4 v13, 0x1

    .line 23
    invoke-virtual {v10, v11, v13}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 24
    iput v12, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 27
    const/4 v14, 0x2

    .line 29
    if-ne v12, v14, :cond_2

    .line 30
    if-eqz v11, :cond_1

    .line 32
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 34
    iput-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    const-string v1, "Must pass a ViewHolder when dragging"

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0

    .line 46
    :cond_2
    :goto_0
    mul-int/lit8 v0, v12, 0x8

    .line 47
    const/16 v15, 0x8

    .line 49
    add-int/2addr v0, v15

    .line 51
    shl-int v0, v13, v0

    .line 52
    add-int/lit8 v16, v0, -0x1

    .line 54
    iget-object v9, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 56
    const v17, -0x303031

    .line 58
    const v18, 0x303030

    .line 61
    iget-object v7, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 64
    if-eqz v9, :cond_19

    .line 66
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    move-result-object v1

    .line 73
    const/4 v6, 0x0

    .line 74
    if-eqz v1, :cond_18

    .line 75
    if-ne v3, v14, :cond_3

    .line 77
    const/4 v8, 0x0

    .line 79
    goto/16 :goto_7

    .line 80
    :cond_3
    iget v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 82
    if-ne v0, v14, :cond_4

    .line 84
    goto/16 :goto_5

    .line 86
    :cond_4
    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 88
    move-result v0

    .line 91
    iget-object v1, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 94
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 96
    move-result v1

    .line 99
    and-int v2, v0, v18

    .line 100
    if-nez v2, :cond_5

    .line 102
    move v1, v0

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    not-int v4, v2

    .line 106
    and-int/2addr v4, v0

    .line 107
    if-nez v1, :cond_6

    .line 108
    shr-int/lit8 v1, v2, 0x2

    .line 110
    goto :goto_1

    .line 112
    :cond_6
    shr-int/lit8 v1, v2, 0x1

    .line 113
    and-int v2, v1, v17

    .line 115
    or-int/2addr v4, v2

    .line 117
    and-int v1, v1, v18

    .line 118
    shr-int/2addr v1, v14

    .line 120
    :goto_1
    or-int/2addr v1, v4

    .line 121
    :goto_2
    const v2, 0xff00

    .line 122
    and-int/2addr v1, v2

    .line 125
    shr-int/2addr v1, v15

    .line 126
    if-nez v1, :cond_7

    .line 127
    goto/16 :goto_5

    .line 129
    :cond_7
    and-int/2addr v0, v2

    .line 131
    shr-int/2addr v0, v15

    .line 132
    iget v2, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 133
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 135
    move-result v2

    .line 138
    iget v4, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 139
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 141
    move-result v4

    .line 144
    cmpl-float v2, v2, v4

    .line 145
    const v4, -0xc0c0d

    .line 147
    const v5, 0xc0c0c

    .line 150
    if-lez v2, :cond_b

    .line 153
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(I)I

    .line 155
    move-result v2

    .line 158
    if-lez v2, :cond_a

    .line 159
    and-int/2addr v0, v2

    .line 161
    if-nez v0, :cond_f

    .line 162
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 166
    move-result v0

    .line 169
    and-int v1, v2, v5

    .line 170
    if-nez v1, :cond_8

    .line 172
    goto :goto_6

    .line 174
    :cond_8
    not-int v8, v1

    .line 175
    and-int/2addr v2, v8

    .line 176
    if-nez v0, :cond_9

    .line 177
    :goto_3
    shl-int/lit8 v0, v1, 0x2

    .line 179
    goto :goto_4

    .line 181
    :cond_9
    shl-int/lit8 v0, v1, 0x1

    .line 182
    and-int v1, v0, v4

    .line 184
    or-int/2addr v2, v1

    .line 186
    and-int/2addr v0, v5

    .line 187
    shl-int/2addr v0, v14

    .line 188
    :goto_4
    or-int/2addr v0, v2

    .line 189
    move v2, v0

    .line 190
    goto :goto_6

    .line 191
    :cond_a
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(I)I

    .line 192
    move-result v2

    .line 195
    if-lez v2, :cond_e

    .line 196
    goto :goto_6

    .line 198
    :cond_b
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(I)I

    .line 199
    move-result v2

    .line 202
    if-lez v2, :cond_c

    .line 203
    goto :goto_6

    .line 205
    :cond_c
    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(I)I

    .line 206
    move-result v2

    .line 209
    if-lez v2, :cond_e

    .line 210
    and-int/2addr v0, v2

    .line 212
    if-nez v0, :cond_f

    .line 213
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 215
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 217
    move-result v0

    .line 220
    and-int v1, v2, v5

    .line 221
    if-nez v1, :cond_d

    .line 223
    goto :goto_6

    .line 225
    :cond_d
    not-int v8, v1

    .line 226
    and-int/2addr v2, v8

    .line 227
    if-nez v0, :cond_9

    .line 228
    goto :goto_3

    .line 230
    :cond_e
    :goto_5
    const/4 v2, 0x0

    .line 231
    :cond_f
    :goto_6
    move v8, v2

    .line 232
    :goto_7
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 233
    if-eqz v0, :cond_10

    .line 235
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 237
    iput-object v6, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    :cond_10
    const/4 v0, 0x4

    .line 242
    const/4 v1, 0x0

    .line 243
    if-eq v8, v13, :cond_12

    .line 244
    if-eq v8, v14, :cond_12

    .line 246
    if-eq v8, v0, :cond_11

    .line 248
    if-eq v8, v15, :cond_11

    .line 250
    const/16 v2, 0x10

    .line 252
    if-eq v8, v2, :cond_11

    .line 254
    const/16 v2, 0x20

    .line 256
    if-eq v8, v2, :cond_11

    .line 258
    move/from16 v20, v1

    .line 260
    move/from16 v21, v20

    .line 262
    goto :goto_8

    .line 264
    :cond_11
    iget v2, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 265
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 267
    move-result v2

    .line 270
    iget-object v4, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    .line 273
    move-result v4

    .line 276
    int-to-float v4, v4

    .line 277
    mul-float/2addr v2, v4

    .line 278
    move/from16 v21, v1

    .line 279
    move/from16 v20, v2

    .line 281
    goto :goto_8

    .line 283
    :cond_12
    iget v2, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 284
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 286
    move-result v2

    .line 289
    iget-object v4, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 290
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    .line 292
    move-result v4

    .line 295
    int-to-float v4, v4

    .line 296
    mul-float/2addr v2, v4

    .line 297
    move/from16 v20, v1

    .line 298
    move/from16 v21, v2

    .line 300
    :goto_8
    if-ne v3, v14, :cond_13

    .line 302
    move v5, v15

    .line 304
    goto :goto_9

    .line 305
    :cond_13
    if-lez v8, :cond_14

    .line 306
    move v5, v14

    .line 308
    goto :goto_9

    .line 309
    :cond_14
    move v5, v0

    .line 310
    :goto_9
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 311
    invoke-direct {v10, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 313
    const/16 v19, 0x0

    .line 316
    aget v4, v0, v19

    .line 318
    aget v22, v0, v13

    .line 320
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 322
    move-object v0, v2

    .line 324
    move-object/from16 v1, p0

    .line 325
    move-object v13, v2

    .line 327
    move-object v2, v9

    .line 328
    move v14, v5

    .line 329
    move/from16 v5, v22

    .line 330
    move/from16 v6, v20

    .line 332
    move-object/from16 v20, v7

    .line 334
    move/from16 v7, v21

    .line 336
    move-object/from16 v19, v9

    .line 338
    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 340
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 348
    move-result-object v0

    .line 351
    if-nez v0, :cond_16

    .line 352
    if-ne v14, v15, :cond_15

    .line 354
    const-wide/16 v0, 0xc8

    .line 356
    goto :goto_a

    .line 358
    :cond_15
    const-wide/16 v0, 0xfa

    .line 359
    goto :goto_a

    .line 361
    :cond_16
    if-ne v14, v15, :cond_17

    .line 362
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    .line 364
    move-result-wide v0

    .line 367
    goto :goto_a

    .line 368
    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    .line 369
    move-result-wide v0

    .line 372
    :goto_a
    iget-object v2, v13, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 373
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 378
    check-cast v0, Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    move-object/from16 v1, v19

    .line 385
    const/4 v2, 0x0

    .line 387
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 388
    iget-object v0, v13, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 391
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 393
    move-object/from16 v3, v20

    .line 396
    const/4 v0, 0x0

    .line 398
    const/4 v8, 0x1

    .line 399
    goto :goto_b

    .line 400
    :cond_18
    move-object/from16 v20, v7

    .line 401
    move-object v1, v9

    .line 403
    const/4 v2, 0x0

    .line 404
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 405
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 408
    move-object/from16 v3, v20

    .line 410
    invoke-virtual {v3, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 412
    move v8, v2

    .line 415
    const/4 v0, 0x0

    .line 416
    :goto_b
    iput-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 417
    goto :goto_c

    .line 419
    :cond_19
    move-object v3, v7

    .line 420
    const/4 v2, 0x0

    .line 421
    move v8, v2

    .line 422
    :goto_c
    if-eqz v11, :cond_1c

    .line 423
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 425
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 427
    move-result v1

    .line 430
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 431
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 433
    move-result v0

    .line 436
    and-int v4, v1, v18

    .line 437
    if-nez v4, :cond_1a

    .line 439
    goto :goto_e

    .line 441
    :cond_1a
    not-int v5, v4

    .line 442
    and-int/2addr v1, v5

    .line 443
    if-nez v0, :cond_1b

    .line 444
    const/4 v0, 0x2

    .line 446
    goto :goto_d

    .line 447
    :cond_1b
    const/4 v0, 0x2

    .line 448
    const/4 v5, 0x1

    .line 449
    shr-int/2addr v4, v5

    .line 450
    and-int v5, v4, v17

    .line 451
    or-int/2addr v1, v5

    .line 453
    and-int v4, v4, v18

    .line 454
    :goto_d
    shr-int/2addr v4, v0

    .line 456
    or-int/2addr v1, v4

    .line 457
    :goto_e
    and-int v0, v1, v16

    .line 458
    iget v1, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 460
    mul-int/2addr v1, v15

    .line 462
    shr-int/2addr v0, v1

    .line 463
    iput v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 464
    iget-object v0, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 468
    move-result v1

    .line 471
    int-to-float v1, v1

    .line 472
    iput v1, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 475
    move-result v1

    .line 478
    int-to-float v1, v1

    .line 479
    iput v1, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 480
    iput-object v11, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 482
    const/4 v1, 0x2

    .line 484
    if-ne v12, v1, :cond_1c

    .line 485
    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 487
    :cond_1c
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 492
    move-result-object v0

    .line 495
    if-eqz v0, :cond_1e

    .line 496
    iget-object v1, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 498
    if-eqz v1, :cond_1d

    .line 500
    const/4 v2, 0x1

    .line 502
    :cond_1d
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 503
    :cond_1e
    if-nez v8, :cond_1f

    .line 506
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 508
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 510
    move-result-object v0

    .line 513
    const/4 v1, 0x1

    .line 514
    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 515
    :cond_1f
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 517
    iget v1, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 519
    invoke-virtual {v3, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 521
    iget-object v0, v10, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 524
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 526
    return-void
    .line 529
.end method

.method public final updateDxDy(IILandroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 6
    move-result p2

    .line 9
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 10
    sub-float/2addr v0, p3

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 13
    iget p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 15
    sub-float/2addr p2, p3

    .line 17
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 18
    and-int/lit8 p2, p1, 0x4

    .line 20
    const/4 p3, 0x0

    .line 22
    if-nez p2, :cond_0

    .line 23
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    .line 25
    move-result p2

    .line 28
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 29
    :cond_0
    and-int/lit8 p2, p1, 0x8

    .line 31
    if-nez p2, :cond_1

    .line 33
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 35
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 37
    move-result p2

    .line 40
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 41
    :cond_1
    and-int/lit8 p2, p1, 0x1

    .line 43
    if-nez p2, :cond_2

    .line 45
    iget p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 47
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 49
    move-result p2

    .line 52
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 53
    :cond_2
    and-int/lit8 p1, p1, 0x2

    .line 55
    if-nez p1, :cond_3

    .line 57
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 59
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    .line 61
    move-result p1

    .line 64
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 65
    :cond_3
    return-void
    .line 67
.end method
