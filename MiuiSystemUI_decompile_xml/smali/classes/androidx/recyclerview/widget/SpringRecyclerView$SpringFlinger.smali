.class public final Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;
.super Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCurrentFlingVelocityX:I

.field public mCurrentFlingVelocityY:I

.field public mEatRunOnAnimationRequest:Z

.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public mHasReachEdgeBeforeFling:Z

.field public mInterimTarget:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastFlingX:I

.field public mLastFlingY:I

.field public mOverScroller:Lmiuix/overscroller/widget/OverScroller;

.field public mReSchedulePostAnimationCallback:Z

.field public final synthetic this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

.field public final synthetic this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$3;

    .line 9
    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mEatRunOnAnimationRequest:Z

    .line 14
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mReSchedulePostAnimationCallback:Z

    .line 16
    iput v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityX:I

    .line 18
    iput v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityY:I

    .line 20
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterimTarget:Z

    .line 22
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 29
    invoke-direct {v1, p1, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 30
    iput-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public final fling(II)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 4
    iget-object v2, v1, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 6
    iget-object v3, v2, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    .line 8
    iget v3, v3, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 10
    float-to-int v3, v3

    .line 12
    iget-object v2, v2, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    .line 13
    iget v2, v2, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 15
    float-to-int v2, v2

    .line 17
    invoke-virtual {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    .line 18
    move-result v1

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x2

    .line 24
    if-eqz v1, :cond_7

    .line 25
    if-nez v3, :cond_0

    .line 27
    if-eqz v2, :cond_7

    .line 29
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 31
    if-eqz v3, :cond_1

    .line 33
    move v7, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v7, v5

    .line 37
    :goto_0
    iput-boolean v7, v1, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 38
    if-eqz v2, :cond_2

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    move v4, v5

    .line 43
    :goto_1
    iput-boolean v4, v1, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 44
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->resetFlingPosition()V

    .line 49
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->signum(I)I

    .line 52
    move-result v1

    .line 55
    mul-int/2addr v1, v3

    .line 56
    const/high16 v4, -0x80000000

    .line 57
    const v5, 0x7fffffff

    .line 59
    if-lez v1, :cond_3

    .line 62
    neg-int v1, v3

    .line 64
    move v6, v1

    .line 65
    move v7, v6

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    neg-int v1, v3

    .line 68
    if-gez p1, :cond_4

    .line 69
    move v7, v1

    .line 71
    move v6, v4

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v6, v1

    .line 74
    move v7, v5

    .line 75
    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->signum(I)I

    .line 76
    move-result v1

    .line 79
    mul-int/2addr v1, v2

    .line 80
    if-lez v1, :cond_5

    .line 81
    neg-int v1, v2

    .line 83
    move v8, v1

    .line 84
    move v9, v8

    .line 85
    goto :goto_4

    .line 86
    :cond_5
    if-gez p2, :cond_6

    .line 87
    neg-int v5, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    neg-int v4, v2

    .line 91
    :goto_3
    move v8, v4

    .line 92
    move v9, v5

    .line 93
    :goto_4
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 94
    const/4 v2, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    iget-object v4, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 98
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    .line 100
    move-result v10

    .line 103
    iget-object v4, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 104
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    .line 106
    move-result v11

    .line 109
    move/from16 v4, p1

    .line 110
    move/from16 v5, p2

    .line 112
    invoke-virtual/range {v1 .. v11}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->postOnAnimation()V

    .line 117
    goto/16 :goto_8

    .line 120
    :cond_7
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 122
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 124
    iput v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingY:I

    .line 127
    iput v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingX:I

    .line 129
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 131
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$3;

    .line 133
    if-eq v1, v2, :cond_8

    .line 135
    iput-object v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    .line 139
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 141
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v3

    .line 146
    invoke-direct {v1, v3, v2}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 147
    iput-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 150
    :cond_8
    if-eqz p1, :cond_9

    .line 152
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 154
    iget-object v1, v1, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 156
    invoke-virtual {v1, v5}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 158
    move-result v1

    .line 161
    float-to-int v1, v1

    .line 162
    neg-int v1, v1

    .line 163
    move v10, v1

    .line 164
    goto :goto_5

    .line 165
    :cond_9
    move/from16 v10, p1

    .line 166
    :goto_5
    if-eqz p2, :cond_a

    .line 168
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 170
    iget-object v1, v1, Landroidx/recyclerview/widget/RemixRecyclerView;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 172
    invoke-virtual {v1, v4}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    .line 174
    move-result v1

    .line 177
    float-to-int v1, v1

    .line 178
    neg-int v1, v1

    .line 179
    move v11, v1

    .line 180
    goto :goto_6

    .line 181
    :cond_a
    move/from16 v11, p2

    .line 182
    :goto_6
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 184
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 186
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 188
    move-result v1

    .line 191
    iget-object v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 192
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 194
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 196
    move-result v2

    .line 199
    if-eqz v2, :cond_b

    .line 200
    or-int/lit8 v1, v1, 0x2

    .line 202
    :cond_b
    const/4 v2, -0x1

    .line 204
    if-ne v1, v6, :cond_d

    .line 205
    if-lez v11, :cond_c

    .line 207
    move v2, v4

    .line 209
    :cond_c
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    .line 212
    move-result v1

    .line 215
    xor-int/2addr v1, v4

    .line 216
    iput-boolean v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mHasReachEdgeBeforeFling:Z

    .line 217
    goto :goto_7

    .line 219
    :cond_d
    if-ne v1, v4, :cond_f

    .line 220
    if-lez v10, :cond_e

    .line 222
    move v2, v4

    .line 224
    :cond_e
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 225
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    .line 227
    move-result v1

    .line 230
    xor-int/2addr v1, v4

    .line 231
    iput-boolean v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mHasReachEdgeBeforeFling:Z

    .line 232
    :cond_f
    :goto_7
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 234
    const/4 v8, 0x0

    .line 236
    const/4 v9, 0x0

    .line 237
    const/high16 v12, -0x80000000

    .line 238
    const v13, 0x7fffffff

    .line 240
    const/high16 v14, -0x80000000

    .line 243
    const v15, 0x7fffffff

    .line 245
    const/16 v16, 0x0

    .line 248
    const/16 v17, 0x0

    .line 250
    invoke-virtual/range {v7 .. v17}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->postOnAnimation()V

    .line 255
    :goto_8
    return-void
    .line 258
.end method

.method public final postOnAnimation()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mEatRunOnAnimationRequest:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mReSchedulePostAnimationCallback:Z

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 15
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 17
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 19
    :goto_0
    return-void
    .line 22
.end method

.method public final resetFlingPosition()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingY:I

    .line 3
    iput v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingX:I

    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 7
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 9
    int-to-double v2, v0

    .line 11
    iput-wide v2, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 12
    iput-wide v2, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 14
    iput-wide v2, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 16
    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 18
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 20
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 22
    iput-wide v2, p0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 24
    return-void
    .line 26
.end method

.method public final bridge synthetic run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->run$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger()V

    .line 2
    return-void
    .line 5
.end method

.method public final run$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    if-nez v2, :cond_0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->stop()V

    .line 10
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mReSchedulePostAnimationCallback:Z

    .line 15
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mEatRunOnAnimationRequest:Z

    .line 18
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 20
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 23
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    .line 25
    move-result v4

    .line 28
    if-eqz v4, :cond_23

    .line 29
    iget-object v4, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 31
    iget-wide v5, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 33
    double-to-int v5, v5

    .line 35
    iget-object v6, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 36
    iget-wide v7, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 38
    double-to-int v7, v7

    .line 40
    iget-object v8, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 41
    iget v8, v8, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 43
    if-ne v8, v3, :cond_1

    .line 45
    iget-wide v9, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 47
    double-to-float v9, v9

    .line 49
    float-to-int v9, v9

    .line 50
    iput v9, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityX:I

    .line 51
    iget-wide v9, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 53
    double-to-float v9, v9

    .line 55
    float-to-int v9, v9

    .line 56
    iput v9, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityY:I

    .line 57
    :cond_1
    iget v9, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingX:I

    .line 59
    sub-int v9, v5, v9

    .line 61
    iget v10, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingY:I

    .line 63
    sub-int v16, v7, v10

    .line 65
    iput v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingX:I

    .line 67
    iput v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingY:I

    .line 69
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 71
    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 73
    aput v2, v7, v2

    .line 75
    aput v2, v7, v3

    .line 77
    if-ne v8, v3, :cond_4

    .line 79
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 81
    move-result-object v5

    .line 84
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 85
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    .line 87
    move-result-object v7

    .line 90
    const v8, 0x1020002    # @android:id/content

    .line 91
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v7

    .line 97
    :goto_0
    if-eqz v5, :cond_4

    .line 98
    instance-of v8, v5, Lmiuix/core/view/NestedCurrentFling;

    .line 100
    if-eqz v8, :cond_2

    .line 102
    check-cast v5, Lmiuix/core/view/NestedCurrentFling;

    .line 104
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 106
    iget-object v8, v7, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 108
    iget-wide v10, v8, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 110
    double-to-float v8, v10

    .line 112
    iget-object v7, v7, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 113
    iget-wide v10, v7, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 115
    double-to-float v7, v10

    .line 117
    check-cast v5, Lmiuix/springback/view/SpringBackLayout;

    .line 118
    iput v8, v5, Lmiuix/springback/view/SpringBackLayout;->mVelocityX:F

    .line 120
    iput v7, v5, Lmiuix/springback/view/SpringBackLayout;->mVelocityY:F

    .line 122
    goto :goto_1

    .line 124
    :cond_2
    instance-of v8, v5, Landroid/view/ViewGroup;

    .line 125
    if-eqz v8, :cond_3

    .line 127
    if-ne v5, v7, :cond_3

    .line 129
    goto :goto_1

    .line 131
    :cond_3
    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 132
    move-result-object v5

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    :goto_1
    iget-object v10, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 137
    iget-object v14, v10, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 139
    const/4 v15, 0x0

    .line 141
    const/4 v13, 0x1

    .line 142
    move v11, v9

    .line 143
    move/from16 v12, v16

    .line 144
    invoke-virtual/range {v10 .. v15}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(III[I[I)Z

    .line 146
    move-result v5

    .line 149
    if-eqz v5, :cond_5

    .line 150
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 152
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 154
    aget v7, v5, v2

    .line 156
    sub-int/2addr v9, v7

    .line 158
    aget v5, v5, v3

    .line 159
    sub-int v16, v16, v5

    .line 161
    :cond_5
    move/from16 v5, v16

    .line 163
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 165
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 167
    move-result v7

    .line 170
    const/4 v8, 0x2

    .line 171
    if-eq v7, v8, :cond_6

    .line 172
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 174
    invoke-virtual {v7, v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 176
    :cond_6
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 179
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 181
    if-eqz v10, :cond_9

    .line 183
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 185
    aput v2, v10, v2

    .line 187
    aput v2, v10, v3

    .line 189
    invoke-virtual {v7, v9, v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 191
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 194
    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 196
    aget v11, v10, v2

    .line 198
    aget v10, v10, v3

    .line 200
    sub-int/2addr v9, v11

    .line 202
    sub-int/2addr v5, v10

    .line 203
    iget-object v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 204
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 206
    if-eqz v12, :cond_a

    .line 208
    iget-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 210
    if-nez v13, :cond_a

    .line 212
    iget-boolean v13, v12, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 214
    if-eqz v13, :cond_a

    .line 216
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 218
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 220
    move-result v7

    .line 223
    if-nez v7, :cond_7

    .line 224
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 226
    goto :goto_2

    .line 229
    :cond_7
    iget v13, v12, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 230
    if-lt v13, v7, :cond_8

    .line 232
    sub-int/2addr v7, v3

    .line 234
    iput v7, v12, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 235
    invoke-virtual {v12, v11, v10}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 237
    goto :goto_2

    .line 240
    :cond_8
    invoke-virtual {v12, v11, v10}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 241
    goto :goto_2

    .line 244
    :cond_9
    move v10, v2

    .line 245
    move v11, v10

    .line 246
    :cond_a
    :goto_2
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 247
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 249
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 251
    move-result v7

    .line 254
    if-nez v7, :cond_b

    .line 255
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 257
    invoke-virtual {v7}, Landroid/view/ViewGroup;->invalidate()V

    .line 259
    :cond_b
    iget-object v13, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 262
    iget-object v7, v13, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 264
    aput v2, v7, v2

    .line 266
    aput v2, v7, v3

    .line 268
    const/16 v18, 0x0

    .line 270
    const/16 v19, 0x1

    .line 272
    move v14, v11

    .line 274
    move v15, v10

    .line 275
    move/from16 v16, v9

    .line 276
    move/from16 v17, v5

    .line 278
    move-object/from16 v20, v7

    .line 280
    invoke-virtual/range {v13 .. v20}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 282
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 285
    iget-object v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 287
    aget v13, v12, v2

    .line 289
    sub-int/2addr v9, v13

    .line 291
    aget v12, v12, v3

    .line 292
    sub-int/2addr v5, v12

    .line 294
    if-nez v11, :cond_c

    .line 295
    if-eqz v10, :cond_d

    .line 297
    :cond_c
    invoke-virtual {v7, v11, v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 299
    :cond_d
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 302
    invoke-static {v7}, Landroidx/recyclerview/widget/RemixRecyclerView;->access$000(Landroidx/recyclerview/widget/RemixRecyclerView;)Z

    .line 304
    move-result v7

    .line 307
    if-nez v7, :cond_e

    .line 308
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 310
    invoke-virtual {v7}, Landroid/view/ViewGroup;->invalidate()V

    .line 312
    :cond_e
    iget-wide v12, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 315
    double-to-int v7, v12

    .line 317
    iget-wide v12, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 318
    double-to-int v12, v12

    .line 320
    if-ne v7, v12, :cond_f

    .line 321
    move v7, v3

    .line 323
    goto :goto_3

    .line 324
    :cond_f
    move v7, v2

    .line 325
    :goto_3
    iget-wide v12, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrentPosition:D

    .line 326
    double-to-int v12, v12

    .line 328
    iget-wide v13, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 329
    double-to-int v13, v13

    .line 331
    if-ne v12, v13, :cond_10

    .line 332
    move v12, v3

    .line 334
    goto :goto_4

    .line 335
    :cond_10
    move v12, v2

    .line 336
    :goto_4
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 337
    move-result v1

    .line 340
    if-nez v1, :cond_13

    .line 341
    if-nez v7, :cond_11

    .line 343
    if-eqz v9, :cond_12

    .line 345
    :cond_11
    if-nez v12, :cond_13

    .line 347
    if-eqz v5, :cond_12

    .line 349
    goto :goto_5

    .line 351
    :cond_12
    move v1, v2

    .line 352
    goto :goto_6

    .line 353
    :cond_13
    :goto_5
    move v1, v3

    .line 354
    :goto_6
    iget-object v7, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 355
    iget-object v12, v7, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 357
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 359
    if-eqz v12, :cond_14

    .line 361
    iget-boolean v12, v12, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 363
    if-eqz v12, :cond_14

    .line 365
    move v12, v3

    .line 367
    goto :goto_7

    .line 368
    :cond_14
    move v12, v2

    .line 369
    :goto_7
    if-nez v12, :cond_22

    .line 370
    if-eqz v1, :cond_22

    .line 372
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getOverScrollMode()I

    .line 374
    move-result v1

    .line 377
    if-eq v1, v8, :cond_19

    .line 378
    iget-wide v7, v4, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 380
    iget-wide v10, v6, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 382
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 384
    move-result-wide v6

    .line 387
    double-to-float v1, v6

    .line 388
    float-to-int v1, v1

    .line 389
    if-gez v9, :cond_15

    .line 390
    neg-int v4, v1

    .line 392
    goto :goto_8

    .line 393
    :cond_15
    if-lez v9, :cond_16

    .line 394
    move v4, v1

    .line 396
    goto :goto_8

    .line 397
    :cond_16
    move v4, v2

    .line 398
    :goto_8
    if-gez v5, :cond_17

    .line 399
    neg-int v1, v1

    .line 401
    goto :goto_9

    .line 402
    :cond_17
    if-lez v5, :cond_18

    .line 403
    goto :goto_9

    .line 405
    :cond_18
    move v1, v2

    .line 406
    :goto_9
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 407
    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 409
    :cond_19
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 412
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 414
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 416
    move-result v1

    .line 419
    const/4 v4, -0x1

    .line 420
    if-eqz v1, :cond_1b

    .line 421
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 423
    iget-object v1, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 425
    iget-wide v5, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 427
    double-to-int v5, v5

    .line 429
    iget-wide v6, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 430
    double-to-int v1, v6

    .line 432
    if-le v5, v1, :cond_1a

    .line 433
    move v1, v3

    .line 435
    goto :goto_a

    .line 436
    :cond_1a
    move v1, v4

    .line 437
    :goto_a
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 438
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    .line 440
    move-result v1

    .line 443
    goto :goto_c

    .line 444
    :cond_1b
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 445
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 447
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 449
    move-result v1

    .line 452
    if-eqz v1, :cond_1d

    .line 453
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 455
    iget-object v1, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 457
    iget-wide v5, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mFinal:D

    .line 459
    double-to-int v5, v5

    .line 461
    iget-wide v6, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mStart:D

    .line 462
    double-to-int v1, v6

    .line 464
    if-le v5, v1, :cond_1c

    .line 465
    move v1, v3

    .line 467
    goto :goto_b

    .line 468
    :cond_1c
    move v1, v4

    .line 469
    :goto_b
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 470
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    .line 472
    move-result v1

    .line 475
    :goto_c
    xor-int/2addr v1, v3

    .line 476
    goto :goto_d

    .line 477
    :cond_1d
    move v1, v2

    .line 478
    :goto_d
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 479
    iget-boolean v5, v5, Landroidx/recyclerview/widget/RemixRecyclerView;->mSpringEnabled:Z

    .line 481
    if-nez v5, :cond_20

    .line 483
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 485
    iget v5, v5, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 487
    if-ne v5, v3, :cond_20

    .line 489
    iget-boolean v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mHasReachEdgeBeforeFling:Z

    .line 491
    if-nez v5, :cond_20

    .line 493
    if-eqz v1, :cond_20

    .line 495
    const-string v1, "2.0"

    .line 497
    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 499
    move-result v1

    .line 502
    if-eqz v1, :cond_1f

    .line 503
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 505
    if-nez v1, :cond_1e

    .line 507
    new-instance v1, Lmiuix/util/HapticFeedbackCompat;

    .line 509
    iget-object v5, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 511
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 513
    move-result-object v5

    .line 516
    invoke-direct {v1, v5}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 517
    iput-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 520
    :cond_1e
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 522
    const/16 v5, 0xc9

    .line 524
    invoke-virtual {v1, v5}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)V

    .line 526
    goto :goto_e

    .line 529
    :cond_1f
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 530
    sget v5, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 532
    invoke-static {v1, v5}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    .line 534
    :cond_20
    :goto_e
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 537
    if-eqz v1, :cond_23

    .line 539
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 541
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 543
    iget-object v5, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 545
    if-eqz v5, :cond_21

    .line 547
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    .line 549
    :cond_21
    iput v2, v1, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 552
    goto :goto_f

    .line 554
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->postOnAnimation()V

    .line 555
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 558
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    .line 560
    if-eqz v4, :cond_23

    .line 562
    invoke-virtual {v4, v1, v11, v10}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 564
    :cond_23
    :goto_f
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 567
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 569
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 571
    if-eqz v1, :cond_24

    .line 573
    iget-boolean v4, v1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 575
    if-eqz v4, :cond_24

    .line 577
    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 579
    :cond_24
    iput-boolean v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mEatRunOnAnimationRequest:Z

    .line 582
    iget-boolean v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mReSchedulePostAnimationCallback:Z

    .line 584
    if-eqz v1, :cond_25

    .line 586
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 588
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 590
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 593
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 595
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 597
    goto :goto_10

    .line 600
    :cond_25
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 601
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 603
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 606
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 608
    iput v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityY:I

    .line 611
    iput v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityX:I

    .line 613
    :goto_10
    return-void
    .line 615
.end method

.method public final smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RemixRecyclerView;->isOverScrolling()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    goto/16 :goto_5

    .line 10
    :cond_0
    const/high16 v0, -0x80000000

    .line 12
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne p3, v0, :cond_5

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 18
    move-result p3

    .line 21
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 22
    move-result v0

    .line 25
    if-le p3, v0, :cond_1

    .line 26
    move v3, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v3, v2

    .line 30
    :goto_0
    int-to-double v4, v2

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 32
    move-result-wide v4

    .line 35
    double-to-int v4, v4

    .line 36
    mul-int v5, p1, p1

    .line 37
    mul-int v6, p2, p2

    .line 39
    add-int/2addr v6, v5

    .line 41
    int-to-double v5, v6

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    move-result-wide v5

    .line 46
    double-to-int v5, v5

    .line 47
    iget-object v6, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 48
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    .line 52
    move-result v6

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    .line 57
    move-result v6

    .line 60
    :goto_1
    div-int/lit8 v7, v6, 0x2

    .line 61
    int-to-float v5, v5

    .line 63
    const/high16 v8, 0x3f800000    # 1.0f

    .line 64
    mul-float/2addr v5, v8

    .line 66
    int-to-float v6, v6

    .line 67
    div-float/2addr v5, v6

    .line 68
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 69
    move-result v5

    .line 72
    int-to-float v7, v7

    .line 73
    const/high16 v9, 0x3f000000    # 0.5f

    .line 74
    sub-float/2addr v5, v9

    .line 76
    const v9, 0x3ef1463b

    .line 77
    mul-float/2addr v5, v9

    .line 80
    float-to-double v9, v5

    .line 81
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    .line 82
    move-result-wide v9

    .line 85
    double-to-float v5, v9

    .line 86
    mul-float/2addr v5, v7

    .line 87
    add-float/2addr v5, v7

    .line 88
    if-lez v4, :cond_3

    .line 89
    int-to-float p3, v4

    .line 91
    div-float/2addr v5, p3

    .line 92
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 93
    move-result p3

    .line 96
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 97
    mul-float/2addr p3, v0

    .line 99
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 100
    move-result p3

    .line 103
    mul-int/lit8 p3, p3, 0x4

    .line 104
    goto :goto_3

    .line 106
    :cond_3
    if-eqz v3, :cond_4

    .line 107
    goto :goto_2

    .line 109
    :cond_4
    move p3, v0

    .line 110
    :goto_2
    int-to-float p3, p3

    .line 111
    div-float/2addr p3, v6

    .line 112
    add-float/2addr p3, v8

    .line 113
    const/high16 v0, 0x43960000    # 300.0f

    .line 114
    mul-float/2addr p3, v0

    .line 116
    float-to-int p3, p3

    .line 117
    :goto_3
    const/16 v0, 0x7d0

    .line 118
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 120
    :cond_5
    if-nez p4, :cond_6

    .line 123
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroidx/recyclerview/widget/RecyclerView$3;

    .line 125
    :cond_6
    iget-object p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 127
    iget v0, p3, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 129
    const/4 v3, 0x2

    .line 131
    if-ne v0, v3, :cond_7

    .line 132
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterimTarget:Z

    .line 134
    if-nez v0, :cond_7

    .line 136
    iget-object v0, p3, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 138
    iget-wide v4, v0, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 140
    double-to-float v0, v4

    .line 142
    float-to-int v0, v0

    .line 143
    iput v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityY:I

    .line 144
    iget-object p3, p3, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 146
    iget-wide v4, p3, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 148
    double-to-float p3, v4

    .line 150
    float-to-int p3, p3

    .line 151
    iput p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityX:I

    .line 152
    :cond_7
    iget-object p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 154
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 156
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 158
    instance-of v4, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 160
    if-eqz v4, :cond_8

    .line 162
    check-cast v0, Landroidx/recyclerview/widget/LinearSmoothScroller;

    .line 164
    iget v4, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    .line 166
    int-to-float v4, v4

    .line 168
    const v5, 0x3f99999a    # 1.2f

    .line 169
    mul-float/2addr v4, v5

    .line 172
    iget v0, v0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    .line 173
    int-to-float v0, v0

    .line 175
    mul-float/2addr v0, v5

    .line 176
    int-to-float v5, p1

    .line 177
    cmpl-float v4, v4, v5

    .line 178
    if-nez v4, :cond_8

    .line 180
    int-to-float v4, p2

    .line 182
    cmpl-float v0, v0, v4

    .line 183
    if-nez v0, :cond_8

    .line 185
    goto :goto_4

    .line 187
    :cond_8
    move v1, v2

    .line 188
    :goto_4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterimTarget:Z

    .line 189
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 191
    if-eq v0, p4, :cond_9

    .line 193
    iput-object p4, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 195
    new-instance v0, Lmiuix/overscroller/widget/OverScroller;

    .line 197
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 199
    move-result-object p3

    .line 202
    invoke-direct {v0, p3, p4}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 203
    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 206
    :cond_9
    iput v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingY:I

    .line 208
    iput v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mLastFlingX:I

    .line 210
    iget-object p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 212
    invoke-virtual {p3, v3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 214
    iget-object p3, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 217
    iget p4, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityX:I

    .line 219
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mCurrentFlingVelocityY:I

    .line 221
    iput v3, p3, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 223
    int-to-float v1, v2

    .line 225
    iget-object v2, p3, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 226
    invoke-virtual {v2, v1, p1, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScrollByFling(FII)V

    .line 228
    iget-object p1, p3, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 231
    invoke-virtual {p1, v1, p2, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScrollByFling(FII)V

    .line 233
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->postOnAnimation()V

    .line 236
    :goto_5
    return-void
    .line 239
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0$androidx$recyclerview$widget$RemixRecyclerView$ViewFlinger:Landroidx/recyclerview/widget/RemixRecyclerView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 7
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 9
    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 11
    iget-object p0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 14
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->finish()V

    .line 16
    return-void
    .line 19
.end method
