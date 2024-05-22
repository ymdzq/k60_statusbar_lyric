.class Landroidx/recyclerview/widget/SpringRecyclerView$1;
.super Lmiuix/spring/view/SpringHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic this$0:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    invoke-direct {p0}, Lmiuix/spring/view/SpringHelper;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final canScrollHorizontally()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final canScrollVertically()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method public final dispatchNestedPreScroll(III[I[I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    iget-boolean v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    .line 9
    iget v1, v1, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 11
    float-to-int v1, v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    iput-boolean v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 16
    :cond_0
    iget-boolean v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 18
    if-eqz v1, :cond_1

    .line 20
    iget-object p0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    .line 22
    iget p0, p0, Lmiuix/spring/view/SpringHelper$AxisHandler;->mDistance:F

    .line 24
    float-to-int p0, p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    iput-boolean v2, v0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 29
    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    .line 31
    move v4, p1

    .line 33
    move v5, p2

    .line 34
    move v6, p3

    .line 35
    move-object v7, p4

    .line 36
    move-object v8, p5

    .line 37
    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;->super_dispatchNestedPreScroll(III[I[I)Z

    .line 38
    move-result p0

    .line 41
    return p0
    .line 42
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .locals 18

    .line 1
    move/from16 v8, p3

    .line 2
    move/from16 v9, p4

    .line 4
    move-object/from16 v10, p0

    .line 6
    iget-object v11, v10, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 8
    iget-object v0, v11, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    .line 10
    move/from16 v1, p1

    .line 12
    move/from16 v2, p2

    .line 14
    move/from16 v3, p3

    .line 16
    move/from16 v4, p4

    .line 18
    move-object/from16 v5, p5

    .line 20
    move/from16 v6, p6

    .line 22
    move-object/from16 v7, p7

    .line 24
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;->super_dispatchNestedScroll(IIII[II[I)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->springAvailable()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    iget v0, v11, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 35
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_3

    .line 38
    iget-boolean v0, v11, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 40
    const/4 v2, 0x1

    .line 42
    if-nez v0, :cond_1

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollHorizontally()Z

    .line 45
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    if-eqz v8, :cond_1

    .line 51
    iget-object v0, v11, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 53
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 55
    iput-boolean v2, v3, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 57
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->resetFlingPosition()V

    .line 62
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 65
    neg-int v15, v8

    .line 67
    iget-object v0, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    .line 70
    move-result v17

    .line 73
    iget-object v12, v3, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/DynamicScroller;

    .line 74
    const/4 v13, 0x0

    .line 76
    iget v0, v12, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 77
    if-nez v0, :cond_1

    .line 79
    iget-object v0, v12, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 81
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v12}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 85
    :cond_0
    iget-wide v3, v12, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 88
    double-to-float v0, v3

    .line 90
    float-to-int v0, v0

    .line 91
    move v14, v15

    .line 92
    move/from16 v16, v0

    .line 93
    invoke-virtual/range {v12 .. v17}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    .line 95
    :cond_1
    iget-boolean v0, v11, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 98
    if-nez v0, :cond_3

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->canScrollVertically()Z

    .line 102
    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    if-eqz v9, :cond_3

    .line 108
    iget-object v0, v11, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 110
    iget-object v3, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 112
    iput-boolean v2, v3, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    .line 114
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setScrollState(I)V

    .line 116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->resetFlingPosition()V

    .line 119
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->mOverScroller:Lmiuix/overscroller/widget/OverScroller;

    .line 122
    neg-int v2, v9

    .line 124
    iget-object v0, v0, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 127
    move-result v0

    .line 130
    iget-object v1, v1, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/DynamicScroller;

    .line 131
    const/4 v3, 0x0

    .line 133
    iget v4, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mState:I

    .line 134
    if-nez v4, :cond_3

    .line 136
    iget-object v4, v1, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 138
    if-eqz v4, :cond_2

    .line 140
    invoke-virtual {v1}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 142
    :cond_2
    iget-wide v4, v1, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->mCurrVelocity:D

    .line 145
    double-to-float v4, v4

    .line 147
    float-to-int v4, v4

    .line 148
    move-object/from16 p0, v1

    .line 149
    move/from16 p1, v3

    .line 151
    move/from16 p2, v2

    .line 153
    move/from16 p3, v2

    .line 155
    move/from16 p4, v4

    .line 157
    move/from16 p5, v0

    .line 159
    invoke-virtual/range {p0 .. p5}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    .line 161
    :cond_3
    return-void
    .line 164
.end method

.method public final getHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final springAvailable()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public vibrate()V
    .locals 2

    .line 1
    const-string v0, "2.0"

    .line 2
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->this$0:Landroidx/recyclerview/widget/SpringRecyclerView;

    .line 8
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 25
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 27
    const/16 v0, 0xc9

    .line 29
    invoke-virtual {p0, v0}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    sget p0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    .line 35
    invoke-static {v1, p0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 37
    :goto_0
    return-void
    .line 40
.end method
