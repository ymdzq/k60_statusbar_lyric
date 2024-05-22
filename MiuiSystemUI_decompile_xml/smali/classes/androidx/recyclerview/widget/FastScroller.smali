.class public final Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# static fields
.field public static final EMPTY_STATE_SET:[I

.field public static final PRESSED_STATE_SET:[I


# instance fields
.field public mAnimationState:I

.field public mDragState:I

.field public final mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

.field public mHorizontalDragX:F

.field public final mHorizontalRange:[I

.field public mHorizontalThumbCenterX:I

.field public final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public final mHorizontalThumbHeight:I

.field public mHorizontalThumbWidth:I

.field public final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mHorizontalTrackHeight:I

.field public final mMargin:I

.field public mNeedHorizontalScrollbar:Z

.field public mNeedVerticalScrollbar:Z

.field public final mOnScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mRecyclerViewHeight:I

.field public mRecyclerViewWidth:I

.field public final mScrollbarMinimumRange:I

.field public final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field public mState:I

.field public mVerticalDragY:F

.field public final mVerticalRange:[I

.field public mVerticalThumbCenterY:I

.field public final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field public mVerticalThumbHeight:I

.field public final mVerticalThumbWidth:I

.field public final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public final mVerticalTrackWidth:I


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
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 9
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [I

    .line 12
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    .line 14
    return-void
    .line 16
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 8
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 10
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 14
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 16
    const/4 v1, 0x2

    .line 18
    new-array v2, v1, [I

    .line 19
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 21
    new-array v2, v1, [I

    .line 23
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 25
    new-array v1, v1, [F

    .line 27
    fill-array-data v1, :array_0

    .line 29
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    move-result-object v1

    .line 35
    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 36
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 38
    new-instance v0, Landroidx/recyclerview/widget/FastScroller$1;

    .line 40
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 42
    iput-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    .line 45
    new-instance v2, Landroidx/recyclerview/widget/FastScroller$2;

    .line 47
    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 49
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/FastScroller$2;

    .line 52
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 54
    iput-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 58
    iput-object p5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    .line 62
    move-result v3

    .line 65
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    .line 66
    move-result v3

    .line 69
    iput v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 70
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 72
    move-result v3

    .line 75
    invoke-static {p6, v3}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v3

    .line 79
    iput v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 80
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    .line 82
    move-result p4

    .line 85
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    .line 86
    move-result p4

    .line 89
    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 90
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    move-result p4

    .line 95
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    .line 96
    move-result p4

    .line 99
    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 100
    iput p7, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 102
    iput p8, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    .line 104
    const/16 p4, 0xff

    .line 106
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 108
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    .line 114
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 116
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    .line 122
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    .line 124
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    if-ne p2, p1, :cond_0

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    if-eqz p2, :cond_3

    .line 135
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 137
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 147
    if-ne p3, p0, :cond_1

    .line 149
    const/4 p3, 0x0

    .line 151
    iput-object p3, p2, Landroidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 152
    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 156
    if-eqz p2, :cond_2

    .line 158
    check-cast p2, Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    :cond_3
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 170
    if-eqz p1, :cond_4

    .line 172
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 174
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 186
    :cond_4
    :goto_0
    return-void

    .line 189
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 190
.end method


# virtual methods
.method public final isPointInsideHorizontalThumb(FF)Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 2
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 4
    sub-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    cmpl-float p2, p2, v0

    .line 8
    if-ltz p2, :cond_0

    .line 10
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 12
    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 14
    div-int/lit8 v0, p0, 0x2

    .line 16
    sub-int v0, p2, v0

    .line 18
    int-to-float v0, v0

    .line 20
    cmpl-float v0, p1, v0

    .line 21
    if-ltz v0, :cond_0

    .line 23
    div-int/lit8 p0, p0, 0x2

    .line 25
    add-int/2addr p0, p2

    .line 27
    int-to-float p0, p0

    .line 28
    cmpg-float p0, p1, p0

    .line 29
    if-gtz p0, :cond_0

    .line 31
    const/4 p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    :goto_0
    return p0
    .line 36
.end method

.method public final isPointInsideVerticalThumb(FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 17
    if-eqz v0, :cond_1

    .line 19
    int-to-float v0, v3

    .line 21
    cmpg-float p1, p1, v0

    .line 22
    if-gtz p1, :cond_2

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 27
    sub-int/2addr v0, v3

    .line 29
    int-to-float v0, v0

    .line 30
    cmpl-float p1, p1, v0

    .line 31
    if-ltz p1, :cond_2

    .line 33
    :goto_1
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 35
    iget p0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 37
    div-int/lit8 p0, p0, 0x2

    .line 39
    sub-int v0, p1, p0

    .line 41
    int-to-float v0, v0

    .line 43
    cmpl-float v0, p2, v0

    .line 44
    if-ltz v0, :cond_2

    .line 46
    add-int/2addr p0, p1

    .line 48
    int-to-float p0, p0

    .line 49
    cmpg-float p0, p2, p0

    .line 50
    if-gtz p0, :cond_2

    .line 52
    move v1, v2

    .line 54
    :cond_2
    return v1
    .line 55
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 8

    .line 1
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p2, v0, :cond_5

    .line 11
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 17
    move-result v0

    .line 20
    if-eq p2, v0, :cond_0

    .line 21
    goto/16 :goto_2

    .line 23
    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 25
    if-eqz p2, :cond_4

    .line 27
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 29
    const/4 v0, 0x0

    .line 31
    if-eqz p2, :cond_3

    .line 32
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 34
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    .line 36
    sub-int/2addr p2, v2

    .line 38
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 39
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    .line 41
    div-int/lit8 v5, v4, 0x2

    .line 43
    sub-int/2addr v3, v5

    .line 45
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 46
    invoke-virtual {v5, v1, v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 48
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 51
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    .line 53
    iget-object v7, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {v7, v1, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 62
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 64
    move-result v4

    .line 67
    const/4 v6, 0x1

    .line 68
    if-ne v4, v6, :cond_1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    move v6, v1

    .line 72
    :goto_0
    if-eqz v6, :cond_2

    .line 73
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    int-to-float p2, v2

    .line 78
    int-to-float v4, v3

    .line 79
    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    const/high16 p2, -0x40800000    # -1.0f

    .line 83
    const/high16 v4, 0x3f800000    # 1.0f

    .line 85
    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 87
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 93
    neg-int p2, v2

    .line 96
    int-to-float p2, p2

    .line 97
    neg-int v2, v3

    .line 98
    int-to-float v2, v2

    .line 99
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    goto :goto_1

    .line 103
    :cond_2
    int-to-float v2, p2

    .line 104
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 105
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    int-to-float v2, v3

    .line 111
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    neg-int p2, p2

    .line 118
    int-to-float p2, p2

    .line 119
    neg-int v2, v3

    .line 120
    int-to-float v2, v2

    .line 121
    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 125
    if-eqz p2, :cond_4

    .line 127
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 129
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 131
    sub-int/2addr p2, v2

    .line 133
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 134
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 136
    div-int/lit8 v5, v4, 0x2

    .line 138
    sub-int/2addr v3, v5

    .line 140
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 141
    invoke-virtual {v5, v1, v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 143
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 146
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 148
    iget-object p0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {p0, v1, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    int-to-float v1, p2

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 156
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 159
    int-to-float p0, v3

    .line 162
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    neg-int p0, v3

    .line 169
    int-to-float p0, p0

    .line 170
    neg-int p2, p2

    .line 171
    int-to-float p2, p2

    .line 172
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    :cond_4
    return-void

    .line 176
    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 177
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    .line 179
    move-result p1

    .line 182
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 183
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 185
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 187
    move-result p1

    .line 190
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 191
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 193
    return-void
    .line 196
.end method

.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 2
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 8
    move-result p1

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 12
    move-result v2

    .line 15
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    .line 16
    move-result p1

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 20
    move-result v2

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result v3

    .line 27
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    .line 28
    move-result v2

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 32
    move-result v3

    .line 35
    if-nez v3, :cond_4

    .line 36
    if-nez p1, :cond_0

    .line 38
    if-eqz v2, :cond_4

    .line 40
    :cond_0
    if-eqz v2, :cond_1

    .line 42
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 46
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    int-to-float p1, p1

    .line 51
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    .line 55
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 59
    move-result p1

    .line 62
    float-to-int p1, p1

    .line 63
    int-to-float p1, p1

    .line 64
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 67
    goto :goto_1

    .line 70
    :cond_3
    if-ne p1, v0, :cond_4

    .line 71
    goto :goto_1

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    :goto_1
    return v1
    .line 75
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    if-nez v0, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result v3

    .line 22
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    .line 23
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    move-result v3

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 31
    move-result v4

    .line 34
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    .line 35
    move-result v3

    .line 38
    if-nez v0, :cond_1

    .line 39
    if-eqz v3, :cond_f

    .line 41
    :cond_1
    if-eqz v3, :cond_2

    .line 43
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 47
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    int-to-float p1, p1

    .line 52
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    if-eqz v0, :cond_3

    .line 56
    iput v2, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 60
    move-result p1

    .line 63
    float-to-int p1, p1

    .line 64
    int-to-float p1, p1

    .line 65
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 66
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 68
    goto/16 :goto_4

    .line 71
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 73
    move-result v0

    .line 76
    const/4 v3, 0x0

    .line 77
    if-ne v0, v1, :cond_5

    .line 78
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 80
    if-ne v0, v2, :cond_5

    .line 82
    const/4 p1, 0x0

    .line 84
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 85
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 87
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    .line 89
    iput v3, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 92
    goto/16 :goto_4

    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 96
    move-result v0

    .line 99
    if-ne v0, v2, :cond_f

    .line 100
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 102
    if-ne v0, v2, :cond_f

    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 106
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 109
    const/high16 v4, 0x40000000    # 2.0f

    .line 111
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    .line 113
    if-ne v0, v1, :cond_a

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 117
    move-result v0

    .line 120
    iget-object v6, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    .line 121
    aput v5, v6, v3

    .line 123
    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 125
    sub-int/2addr v7, v5

    .line 127
    aput v7, v6, v1

    .line 128
    int-to-float v8, v5

    .line 130
    int-to-float v7, v7

    .line 131
    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    .line 132
    move-result v0

    .line 135
    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    .line 136
    move-result v0

    .line 139
    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    .line 140
    int-to-float v7, v7

    .line 142
    sub-float/2addr v7, v0

    .line 143
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 144
    move-result v7

    .line 147
    cmpg-float v7, v7, v4

    .line 148
    if-gez v7, :cond_6

    .line 150
    goto :goto_2

    .line 152
    :cond_6
    iget v7, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 153
    iget-object v8, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    .line 157
    move-result v8

    .line 160
    iget-object v9, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 163
    move-result v9

    .line 166
    iget v10, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    .line 167
    aget v11, v6, v1

    .line 169
    aget v6, v6, v3

    .line 171
    sub-int/2addr v11, v6

    .line 173
    if-nez v11, :cond_8

    .line 174
    :cond_7
    move v6, v3

    .line 176
    goto :goto_1

    .line 177
    :cond_8
    sub-float v6, v0, v7

    .line 178
    int-to-float v7, v11

    .line 180
    div-float/2addr v6, v7

    .line 181
    sub-int/2addr v8, v10

    .line 182
    int-to-float v7, v8

    .line 183
    mul-float/2addr v6, v7

    .line 184
    float-to-int v6, v6

    .line 185
    add-int/2addr v9, v6

    .line 186
    if-ge v9, v8, :cond_7

    .line 187
    if-ltz v9, :cond_7

    .line 189
    :goto_1
    if-eqz v6, :cond_9

    .line 191
    iget-object v7, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 193
    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 195
    :cond_9
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    .line 198
    :cond_a
    :goto_2
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    .line 200
    if-ne v0, v2, :cond_f

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 204
    move-result p1

    .line 207
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    .line 208
    aput v5, v0, v3

    .line 210
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 212
    sub-int/2addr v2, v5

    .line 214
    aput v2, v0, v1

    .line 215
    int-to-float v5, v5

    .line 217
    int-to-float v2, v2

    .line 218
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    .line 219
    move-result p1

    .line 222
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 223
    move-result p1

    .line 226
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 227
    int-to-float v2, v2

    .line 229
    sub-float/2addr v2, p1

    .line 230
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 231
    move-result v2

    .line 234
    cmpg-float v2, v2, v4

    .line 235
    if-gez v2, :cond_b

    .line 237
    goto :goto_4

    .line 239
    :cond_b
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 240
    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    .line 244
    move-result v4

    .line 247
    iget-object v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 250
    move-result v5

    .line 253
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    .line 254
    aget v1, v0, v1

    .line 256
    aget v0, v0, v3

    .line 258
    sub-int/2addr v1, v0

    .line 260
    if-nez v1, :cond_d

    .line 261
    :cond_c
    move v0, v3

    .line 263
    goto :goto_3

    .line 264
    :cond_d
    sub-float v0, p1, v2

    .line 265
    int-to-float v1, v1

    .line 267
    div-float/2addr v0, v1

    .line 268
    sub-int/2addr v4, v6

    .line 269
    int-to-float v1, v4

    .line 270
    mul-float/2addr v0, v1

    .line 271
    float-to-int v0, v0

    .line 272
    add-int/2addr v5, v0

    .line 273
    if-ge v5, v4, :cond_c

    .line 274
    if-ltz v5, :cond_c

    .line 276
    :goto_3
    if-eqz v0, :cond_e

    .line 278
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 280
    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 282
    :cond_e
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    .line 285
    :cond_f
    :goto_4
    return-void
    .line 287
.end method

.method public final setState(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Landroidx/recyclerview/widget/FastScroller$1;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 4
    const/4 v2, 0x2

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 9
    if-eq v3, v2, :cond_0

    .line 11
    sget-object v3, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    .line 13
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 15
    iget-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 23
    iget-object v3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    .line 31
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 34
    if-ne v3, v2, :cond_2

    .line 36
    if-eq p1, v2, :cond_2

    .line 38
    sget-object v2, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    .line 40
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 42
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 47
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    const/16 v2, 0x4b0

    .line 52
    int-to-long v2, v2

    .line 54
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    goto :goto_1

    .line 58
    :cond_2
    const/4 v1, 0x1

    .line 59
    if-ne p1, v1, :cond_3

    .line 60
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 64
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    const/16 v2, 0x5dc

    .line 69
    int-to-long v2, v2

    .line 71
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    :cond_3
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    .line 75
    return-void
    .line 77
.end method

.method public final show()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    const/4 v2, 0x3

    .line 8
    if-eq v0, v2, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    :cond_1
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 16
    const/4 p0, 0x2

    .line 18
    new-array p0, p0, [F

    .line 19
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/Float;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 27
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aput v2, p0, v3

    .line 32
    const/high16 v2, 0x3f800000    # 1.0f

    .line 34
    aput v2, p0, v0

    .line 36
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 38
    const-wide/16 v2, 0x1f4

    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    const-wide/16 v2, 0x0

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 48
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    :goto_0
    return-void
    .line 54
.end method
