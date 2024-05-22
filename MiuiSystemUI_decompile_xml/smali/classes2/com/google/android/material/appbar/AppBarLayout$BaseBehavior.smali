.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lcom/google/android/material/appbar/HeaderBehavior;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public coordinatorLayoutA11yScrollable:Z

.field public lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

.field public lastStartedType:I

.field public offsetAnimator:Landroid/animation/ValueAnimator;

.field public offsetDelta:I

.field public onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;

.field public savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 12
    instance-of v3, v2, Landroidx/core/view/NestedScrollingChild;

    .line 13
    if-nez v3, :cond_1

    .line 15
    instance-of v3, v2, Landroid/widget/ListView;

    .line 17
    if-nez v3, :cond_1

    .line 19
    instance-of v3, v2, Landroid/widget/ScrollView;

    .line 21
    if-eqz v3, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    return-object v2

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return-object p0
    .line 31
.end method

.method public static updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V
    .locals 7

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    const/4 v4, 0x0

    .line 12
    if-ge v3, v1, :cond_1

    .line 13
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v5

    .line 18
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 19
    move-result v6

    .line 22
    if-lt v0, v6, :cond_0

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 25
    move-result v6

    .line 28
    if-gt v0, v6, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    move-object v5, v4

    .line 35
    :goto_1
    const/4 v0, 0x1

    .line 36
    if-eqz v5, :cond_3

    .line 37
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v1

    .line 42
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 43
    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 45
    and-int/lit8 v3, v1, 0x1

    .line 47
    if-eqz v3, :cond_3

    .line 49
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 51
    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 53
    move-result v3

    .line 56
    if-lez p3, :cond_2

    .line 57
    and-int/lit8 p3, v1, 0xc

    .line 59
    if-eqz p3, :cond_2

    .line 61
    neg-int p2, p2

    .line 63
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 64
    move-result p3

    .line 67
    sub-int/2addr p3, v3

    .line 68
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 69
    move-result v1

    .line 72
    sub-int/2addr p3, v1

    .line 73
    if-lt p2, p3, :cond_3

    .line 74
    goto :goto_2

    .line 76
    :cond_2
    and-int/lit8 p3, v1, 0x2

    .line 77
    if-eqz p3, :cond_3

    .line 79
    neg-int p2, p2

    .line 81
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 82
    move-result p3

    .line 85
    sub-int/2addr p3, v3

    .line 86
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 87
    move-result v1

    .line 90
    sub-int/2addr p3, v1

    .line 91
    if-lt p2, p3, :cond_3

    .line 92
    :goto_2
    move p2, v0

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    move p2, v2

    .line 96
    :goto_3
    iget-boolean p3, p1, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 97
    if-eqz p3, :cond_4

    .line 99
    invoke-static {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 101
    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    .line 105
    move-result p2

    .line 108
    :cond_4
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 109
    move-result p2

    .line 112
    if-nez p4, :cond_9

    .line 113
    if-eqz p2, :cond_a

    .line 115
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 117
    iget-object p0, p0, Landroidx/coordinatorlayout/widget/DirectedAcyclicGraph;->mGraph:Landroidx/collection/SimpleArrayMap;

    .line 119
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 124
    check-cast p0, Ljava/util/ArrayList;

    .line 125
    if-nez p0, :cond_5

    .line 127
    goto :goto_4

    .line 129
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .line 130
    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    :goto_4
    if-nez v4, :cond_6

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 137
    move-result-object v4

    .line 140
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 141
    move-result p0

    .line 144
    move p2, v2

    .line 145
    :goto_5
    if-ge p2, p0, :cond_8

    .line 146
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    move-result-object p3

    .line 151
    check-cast p3, Landroid/view/View;

    .line 152
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 154
    move-result-object p3

    .line 157
    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 158
    iget-object p3, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 160
    instance-of p4, p3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 162
    if-eqz p4, :cond_7

    .line 164
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 166
    iget p0, p3, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 168
    if-eqz p0, :cond_8

    .line 170
    move v2, v0

    .line 172
    goto :goto_6

    .line 173
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 174
    goto :goto_5

    .line 176
    :cond_8
    :goto_6
    if-eqz v2, :cond_a

    .line 177
    :cond_9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->jumpDrawablesToCurrentState()V

    .line 179
    :cond_a
    return-void
    .line 182
.end method


# virtual methods
.method public final animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 2
    move-result v0

    .line 5
    sub-int/2addr v0, p3

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 12
    move-result v2

    .line 15
    cmpl-float v1, v2, v1

    .line 16
    if-lez v1, :cond_0

    .line 18
    int-to-float v0, v0

    .line 20
    div-float/2addr v0, v2

    .line 21
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 22
    mul-float/2addr v0, v1

    .line 24
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 25
    move-result v0

    .line 28
    mul-int/lit8 v0, v0, 0x3

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    int-to-float v0, v0

    .line 32
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 33
    move-result v1

    .line 36
    int-to-float v1, v1

    .line 37
    div-float/2addr v0, v1

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    add-float/2addr v0, v1

    .line 41
    const/high16 v1, 0x43160000    # 150.0f

    .line 42
    mul-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 46
    move-result v1

    .line 49
    if-ne v1, p3, :cond_1

    .line 50
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 52
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 62
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 64
    goto :goto_2

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 68
    if-nez v2, :cond_2

    .line 70
    new-instance v2, Landroid/animation/ValueAnimator;

    .line 72
    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 77
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 79
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 81
    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 84
    new-instance v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;

    .line 86
    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 95
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 98
    const/16 p2, 0x258

    .line 100
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result p2

    .line 105
    int-to-long v2, p2

    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 107
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 110
    filled-new-array {v1, p3}, [I

    .line 112
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 116
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 119
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 121
    :cond_3
    :goto_2
    return-void
    .line 124
.end method

.method public final canDragView(Landroid/view/View;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;

    .line 4
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 13
    move-result-object p0

    .line 16
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 17
    const/4 p1, 0x2

    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 23
    if-eqz p0, :cond_2

    .line 25
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 30
    check-cast p0, Landroid/view/View;

    .line 31
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    const/4 p1, -0x1

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 42
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    move v1, p0

    .line 50
    :cond_2
    :goto_0
    return v1
    .line 51
.end method

.method public final getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    .line 4
    move-result p0

    .line 7
    neg-int p0, p0

    .line 8
    return p0
    .line 9
.end method

.method public final getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 2
    move-result v0

    .line 5
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 6
    add-int/2addr v0, p0

    .line 8
    return v0
    .line 9
.end method

.method public isOffsetAnimatorRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final onFlingFinished(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 4
    iget-boolean p0, p1, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-static {p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->findFirstScrollingChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    .line 15
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    .line 4
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    .line 7
    move-result p3

    .line 10
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 11
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    and-int/lit8 v3, p3, 0x8

    .line 17
    if-nez v3, :cond_3

    .line 19
    iget-boolean p3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    .line 21
    if-eqz p3, :cond_0

    .line 23
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 25
    move-result p3

    .line 28
    neg-int p3, p3

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 30
    goto :goto_2

    .line 33
    :cond_0
    iget-boolean p3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    .line 34
    if-eqz p3, :cond_1

    .line 36
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 38
    goto :goto_2

    .line 41
    :cond_1
    iget p3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 42
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 44
    move-result-object p3

    .line 47
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 48
    move-result v0

    .line 51
    neg-int v0, v0

    .line 52
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 53
    iget-boolean v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 55
    if-eqz v3, :cond_2

    .line 57
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 59
    invoke-static {p3}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 61
    move-result p3

    .line 64
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 65
    move-result v3

    .line 68
    add-int/2addr v3, p3

    .line 69
    add-int/2addr v3, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 72
    move-result p3

    .line 75
    int-to-float p3, p3

    .line 76
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 77
    iget v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 79
    mul-float/2addr p3, v3

    .line 81
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 82
    move-result p3

    .line 85
    add-int v3, p3, v0

    .line 86
    :goto_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 88
    goto :goto_2

    .line 91
    :cond_3
    if-eqz p3, :cond_8

    .line 92
    and-int/lit8 v0, p3, 0x4

    .line 94
    if-eqz v0, :cond_4

    .line 96
    move v0, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move v0, v2

    .line 100
    :goto_1
    and-int/lit8 v3, p3, 0x2

    .line 101
    if-eqz v3, :cond_6

    .line 103
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    .line 105
    move-result p3

    .line 108
    neg-int p3, p3

    .line 109
    if-eqz v0, :cond_5

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 112
    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 116
    goto :goto_2

    .line 119
    :cond_6
    and-int/2addr p3, v1

    .line 120
    if-eqz p3, :cond_8

    .line 121
    if-eqz v0, :cond_7

    .line 123
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 125
    goto :goto_2

    .line 128
    :cond_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 129
    :cond_8
    :goto_2
    iput v2, p2, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 132
    const/4 p3, 0x0

    .line 134
    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 137
    move-result p3

    .line 140
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 141
    move-result v0

    .line 144
    neg-int v0, v0

    .line 145
    invoke-static {p3, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 146
    move-result p3

    .line 149
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 150
    if-eqz v0, :cond_9

    .line 152
    invoke-virtual {v0, p3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 154
    goto :goto_3

    .line 157
    :cond_9
    iput p3, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 158
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 160
    move-result p3

    .line 163
    invoke-static {p1, p2, p3, v2, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 167
    move-result p3

    .line 170
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 174
    return v1
    .line 177
.end method

.method public final onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 1

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 8
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    const/4 p5, -0x2

    .line 12
    const/4 v0, 0x0

    .line 13
    if-ne p0, p5, :cond_0

    .line 14
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    move-result p0

    .line 19
    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;III)V

    .line 20
    const/4 v0, 0x1

    .line 23
    :cond_0
    return v0
    .line 24
.end method

.method public final bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 6

    .line 1
    move-object v2, p2

    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V

    return-void
.end method

.method public final onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V
    .locals 8

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    .line 3
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    :goto_0
    move v6, v0

    move v7, v1

    if-eq v6, v7, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v5, v0, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    const/4 p1, 0x1

    .line 7
    aput p0, p5, p1

    .line 8
    :cond_1
    iget-boolean p0, p2, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_2
    return-void
.end method

.method public final onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III[I)V
    .locals 6

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    if-gez p5, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    .line 6
    move-result p3

    .line 9
    neg-int v4, p3

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 12
    move-result p3

    .line 15
    sub-int v3, p3, p5

    .line 16
    move-object v0, p0

    .line 18
    move-object v1, p1

    .line 19
    move-object v2, p2

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 21
    move-result p3

    .line 24
    const/4 p4, 0x1

    .line 25
    aput p3, p6, p4

    .line 26
    :cond_0
    if-nez p5, :cond_1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public final onRestoreInstanceState(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    instance-of p1, p2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 8
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 10
    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 16
    :goto_0
    return-void
    .line 18
.end method

.method public final onSaveInstanceState(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p0

    .line 13
    :goto_0
    return-object v0
    .line 14
.end method

.method public final onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    and-int/lit8 p4, p5, 0x2

    .line 4
    const/4 p5, 0x0

    .line 6
    if-eqz p4, :cond_3

    .line 7
    iget-boolean p4, p2, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 9
    const/4 v0, 0x1

    .line 11
    if-nez p4, :cond_2

    .line 12
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 14
    move-result p4

    .line 17
    if-eqz p4, :cond_0

    .line 18
    move p4, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p4, p5

    .line 22
    :goto_0
    if-eqz p4, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    .line 25
    move-result p1

    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 29
    move-result p3

    .line 32
    sub-int/2addr p1, p3

    .line 33
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    .line 34
    move-result p2

    .line 37
    if-gt p1, p2, :cond_1

    .line 38
    move p1, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move p1, p5

    .line 42
    :goto_1
    if-eqz p1, :cond_3

    .line 43
    :cond_2
    move p5, v0

    .line 45
    :cond_3
    if-eqz p5, :cond_4

    .line 46
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetAnimator:Landroid/animation/ValueAnimator;

    .line 48
    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 52
    :cond_4
    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 56
    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    .line 58
    return p5
    .line 60
.end method

.method public final onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    .line 2
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastStartedType:I

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    if-ne p4, v0, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 11
    iget-boolean p1, p2, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 25
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->lastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
    .line 32
.end method

.method public final saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_5

    .line 12
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 18
    move-result v4

    .line 21
    add-int/2addr v4, p0

    .line 22
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 23
    move-result v5

    .line 26
    add-int/2addr v5, p0

    .line 27
    if-gtz v5, :cond_4

    .line 28
    if-ltz v4, :cond_4

    .line 30
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 32
    if-nez p1, :cond_0

    .line 34
    sget-object p1, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState$1;

    .line 36
    :cond_0
    invoke-direct {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 38
    const/4 p1, 0x1

    .line 41
    if-nez p0, :cond_1

    .line 42
    move v5, p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v5, v1

    .line 46
    :goto_1
    iput-boolean v5, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyExpanded:Z

    .line 47
    if-nez v5, :cond_2

    .line 49
    neg-int p0, p0

    .line 51
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 52
    move-result v5

    .line 55
    if-lt p0, v5, :cond_2

    .line 56
    move p0, p1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move p0, v1

    .line 60
    :goto_2
    iput-boolean p0, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->fullyScrolled:Z

    .line 61
    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 63
    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 65
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 67
    move-result p0

    .line 70
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 71
    move-result p2

    .line 74
    add-int/2addr p2, p0

    .line 75
    if-ne v4, p2, :cond_3

    .line 76
    move v1, p1

    .line 78
    :cond_3
    iput-boolean v1, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 79
    int-to-float p0, v4

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 82
    move-result p1

    .line 85
    int-to-float p1, p1

    .line 86
    div-float/2addr p0, p1

    .line 87
    iput p0, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 88
    return-object v0

    .line 90
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    const/4 p0, 0x0

    .line 94
    return-object p0
    .line 95
.end method

.method public final setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p4

    .line 6
    move-object/from16 v3, p2

    .line 8
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 12
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v2, :cond_d

    .line 17
    if-lt v4, v2, :cond_d

    .line 19
    move/from16 v6, p5

    .line 21
    if-gt v4, v6, :cond_d

    .line 23
    invoke-static/range {p3 .. p5}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 25
    move-result v2

    .line 28
    if-eq v4, v2, :cond_e

    .line 29
    iget-boolean v6, v3, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 31
    if-eqz v6, :cond_4

    .line 33
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 35
    move-result v6

    .line 38
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 39
    move-result v7

    .line 42
    move v8, v5

    .line 43
    :goto_0
    if-ge v8, v7, :cond_4

    .line 44
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v9

    .line 49
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v10

    .line 53
    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 54
    iget-object v11, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 58
    move-result v12

    .line 61
    if-lt v6, v12, :cond_3

    .line 62
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 64
    move-result v12

    .line 67
    if-gt v6, v12, :cond_3

    .line 68
    if-eqz v11, :cond_4

    .line 70
    iget v7, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 72
    and-int/lit8 v8, v7, 0x1

    .line 74
    if-eqz v8, :cond_0

    .line 76
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 78
    move-result v8

    .line 81
    iget v12, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 82
    add-int/2addr v8, v12

    .line 84
    iget v10, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 85
    add-int/2addr v8, v10

    .line 87
    add-int/2addr v8, v5

    .line 88
    and-int/lit8 v7, v7, 0x2

    .line 89
    if-eqz v7, :cond_1

    .line 91
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 93
    invoke-static {v9}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 95
    move-result v7

    .line 98
    sub-int/2addr v8, v7

    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move v8, v5

    .line 101
    :cond_1
    :goto_1
    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 102
    invoke-static {v9}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 104
    move-result v7

    .line 107
    if-eqz v7, :cond_2

    .line 108
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 110
    move-result v7

    .line 113
    sub-int/2addr v8, v7

    .line 114
    :cond_2
    if-lez v8, :cond_4

    .line 115
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 117
    move-result v7

    .line 120
    sub-int/2addr v6, v7

    .line 121
    int-to-float v7, v8

    .line 122
    int-to-float v6, v6

    .line 123
    div-float/2addr v6, v7

    .line 124
    invoke-interface {v11, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 125
    move-result v6

    .line 128
    mul-float/2addr v6, v7

    .line 129
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 130
    move-result v6

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    .line 134
    move-result v7

    .line 137
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 138
    move-result v8

    .line 141
    add-int/2addr v8, v6

    .line 142
    mul-int/2addr v8, v7

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 145
    goto :goto_0

    .line 147
    :cond_4
    move v8, v2

    .line 148
    :goto_2
    iget-object v6, v0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 149
    if-eqz v6, :cond_5

    .line 151
    invoke-virtual {v6, v8}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 153
    move-result v6

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    iput v8, v0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->tempTopBottomOffset:I

    .line 158
    move v6, v5

    .line 160
    :goto_3
    sub-int v7, v4, v2

    .line 161
    sub-int v8, v2, v8

    .line 163
    iput v8, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 165
    const/4 v8, 0x1

    .line 167
    if-eqz v6, :cond_a

    .line 168
    move v9, v5

    .line 170
    :goto_4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 171
    move-result v10

    .line 174
    if-ge v9, v10, :cond_a

    .line 175
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 177
    move-result-object v10

    .line 180
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    move-result-object v10

    .line 184
    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 185
    iget-object v11, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollEffect:Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;

    .line 187
    if-eqz v11, :cond_9

    .line 189
    iget v10, v10, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 191
    and-int/2addr v10, v8

    .line 193
    if-eqz v10, :cond_9

    .line 194
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 196
    move-result-object v10

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 200
    move-result v12

    .line 203
    int-to-float v12, v12

    .line 204
    iget-object v13, v11, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->relativeRect:Landroid/graphics/Rect;

    .line 205
    invoke-virtual {v10, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 207
    invoke-virtual {v3, v10, v13}, Landroid/widget/LinearLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 213
    move-result v14

    .line 216
    neg-int v14, v14

    .line 217
    invoke-virtual {v13, v5, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 218
    iget v14, v13, Landroid/graphics/Rect;->top:I

    .line 221
    int-to-float v14, v14

    .line 223
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 224
    move-result v12

    .line 227
    sub-float/2addr v14, v12

    .line 228
    const/4 v12, 0x0

    .line 229
    cmpg-float v15, v14, v12

    .line 230
    if-gtz v15, :cond_8

    .line 232
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 234
    move-result v15

    .line 237
    int-to-float v15, v15

    .line 238
    div-float v15, v14, v15

    .line 239
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 241
    move-result v15

    .line 244
    cmpg-float v16, v15, v12

    .line 245
    const/high16 v17, 0x3f800000    # 1.0f

    .line 247
    if-gez v16, :cond_6

    .line 249
    goto :goto_5

    .line 251
    :cond_6
    cmpl-float v12, v15, v17

    .line 252
    if-lez v12, :cond_7

    .line 254
    move/from16 v12, v17

    .line 256
    goto :goto_5

    .line 258
    :cond_7
    move v12, v15

    .line 259
    :goto_5
    neg-float v14, v14

    .line 260
    sub-float v12, v17, v12

    .line 261
    mul-float/2addr v12, v12

    .line 263
    sub-float v17, v17, v12

    .line 264
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    .line 266
    move-result v12

    .line 269
    int-to-float v12, v12

    .line 270
    const v13, 0x3e99999a    # 0.3f

    .line 271
    mul-float/2addr v12, v13

    .line 274
    mul-float v12, v12, v17

    .line 275
    sub-float/2addr v14, v12

    .line 277
    invoke-virtual {v10, v14}, Landroid/view/View;->setTranslationY(F)V

    .line 278
    iget-object v11, v11, Lcom/google/android/material/appbar/AppBarLayout$CompressChildScrollEffect;->ghostRect:Landroid/graphics/Rect;

    .line 281
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 283
    neg-float v12, v14

    .line 286
    float-to-int v12, v12

    .line 287
    invoke-virtual {v11, v5, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 288
    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 291
    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 293
    goto :goto_6

    .line 296
    :cond_8
    sget-object v11, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 297
    const/4 v11, 0x0

    .line 299
    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat$Api18Impl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x1

    .line 306
    goto/16 :goto_4

    .line 308
    :cond_a
    if-nez v6, :cond_b

    .line 310
    iget-boolean v6, v3, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 312
    if-eqz v6, :cond_b

    .line 314
    invoke-virtual {v1, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 316
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->getTopAndBottomOffset()I

    .line 319
    move-result v6

    .line 322
    invoke-virtual {v3, v6}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    .line 323
    if-ge v2, v4, :cond_c

    .line 326
    const/4 v8, -0x1

    .line 328
    :cond_c
    invoke-static {v1, v3, v2, v8, v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAppBarLayoutDrawableState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;IIZ)V

    .line 329
    move v5, v7

    .line 332
    goto :goto_7

    .line 333
    :cond_d
    iput v5, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->offsetDelta:I

    .line 334
    :cond_e
    :goto_7
    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 336
    return v5
    .line 339
.end method

.method public final snapToChildIfNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 6
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 11
    move-result v0

    .line 14
    sub-int/2addr v0, v1

    .line 15
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 16
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_0
    const/4 v5, 0x1

    .line 22
    const/16 v6, 0x20

    .line 23
    if-ge v4, v2, :cond_3

    .line 25
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v7

    .line 30
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 31
    move-result v8

    .line 34
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 35
    move-result v9

    .line 38
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    move-result-object v7

    .line 42
    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 43
    iget v10, v7, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 45
    and-int/2addr v10, v6

    .line 47
    if-ne v10, v6, :cond_0

    .line 48
    move v10, v5

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    move v10, v3

    .line 52
    :goto_1
    if-eqz v10, :cond_1

    .line 53
    iget v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    sub-int/2addr v8, v10

    .line 57
    iget v7, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 58
    add-int/2addr v9, v7

    .line 60
    :cond_1
    neg-int v7, v0

    .line 61
    if-gt v8, v7, :cond_2

    .line 62
    if-lt v9, v7, :cond_2

    .line 64
    goto :goto_2

    .line 66
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    const/4 v4, -0x1

    .line 70
    :goto_2
    if-ltz v4, :cond_d

    .line 71
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 73
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object v7

    .line 80
    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 81
    iget v8, v7, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 83
    and-int/lit8 v9, v8, 0x11

    .line 85
    const/16 v10, 0x11

    .line 87
    if-ne v9, v10, :cond_d

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 91
    move-result v9

    .line 94
    neg-int v9, v9

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 96
    move-result v10

    .line 99
    neg-int v10, v10

    .line 100
    if-nez v4, :cond_4

    .line 101
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 103
    invoke-static {p2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 105
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 111
    move-result v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 117
    move-result v4

    .line 120
    sub-int/2addr v9, v4

    .line 121
    :cond_4
    and-int/lit8 v4, v8, 0x2

    .line 122
    const/4 v11, 0x2

    .line 124
    if-ne v4, v11, :cond_5

    .line 125
    move v4, v5

    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move v4, v3

    .line 129
    :goto_3
    if-eqz v4, :cond_6

    .line 130
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 132
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 134
    move-result v2

    .line 137
    add-int/2addr v10, v2

    .line 138
    goto :goto_5

    .line 139
    :cond_6
    and-int/lit8 v4, v8, 0x5

    .line 140
    const/4 v12, 0x5

    .line 142
    if-ne v4, v12, :cond_7

    .line 143
    move v4, v5

    .line 145
    goto :goto_4

    .line 146
    :cond_7
    move v4, v3

    .line 147
    :goto_4
    if-eqz v4, :cond_9

    .line 148
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 150
    invoke-static {v2}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 152
    move-result v2

    .line 155
    add-int/2addr v2, v10

    .line 156
    if-ge v0, v2, :cond_8

    .line 157
    move v9, v2

    .line 159
    goto :goto_5

    .line 160
    :cond_8
    move v10, v2

    .line 161
    :cond_9
    :goto_5
    and-int/lit8 v2, v8, 0x20

    .line 162
    if-ne v2, v6, :cond_a

    .line 164
    goto :goto_6

    .line 166
    :cond_a
    move v5, v3

    .line 167
    :goto_6
    if-eqz v5, :cond_b

    .line 168
    iget v2, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 170
    add-int/2addr v9, v2

    .line 172
    iget v2, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 173
    sub-int/2addr v10, v2

    .line 175
    :cond_b
    add-int v2, v10, v9

    .line 176
    div-int/2addr v2, v11

    .line 178
    if-ge v0, v2, :cond_c

    .line 179
    move v9, v10

    .line 181
    :cond_c
    add-int/2addr v9, v1

    .line 182
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 183
    move-result v0

    .line 186
    neg-int v0, v0

    .line 187
    invoke-static {v9, v0, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 188
    move-result v0

    .line 191
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->animateOffsetTo(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    .line 192
    :cond_d
    return-void
    .line 195
.end method

.method public final updateAccessibilityActions(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 11

    .line 1
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 4
    move-result v0

    .line 7
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 8
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 12
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 15
    invoke-virtual {v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    .line 17
    move-result v1

    .line 20
    invoke-static {v1, p1}, Landroidx/core/view/ViewCompat;->removeActionWithId(ILandroid/view/View;)V

    .line 21
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 24
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    move-result v1

    .line 37
    move v2, v0

    .line 38
    :goto_0
    const/4 v3, 0x0

    .line 39
    if-ge v2, v1, :cond_2

    .line 40
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v5

    .line 49
    check-cast v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 50
    iget-object v5, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 52
    instance-of v5, v5, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    .line 54
    if-eqz v5, :cond_1

    .line 56
    move-object v8, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    move-object v8, v3

    .line 63
    :goto_1
    if-nez v8, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 67
    move-result v1

    .line 70
    move v2, v0

    .line 71
    :goto_2
    const/4 v10, 0x1

    .line 72
    if-ge v2, v1, :cond_5

    .line 73
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 75
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    move-result-object v4

    .line 82
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 83
    iget v4, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 85
    if-eqz v4, :cond_4

    .line 87
    move v1, v10

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_2

    .line 93
    :cond_5
    move v1, v0

    .line 94
    :goto_3
    if-nez v1, :cond_6

    .line 95
    return-void

    .line 97
    :cond_6
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 98
    move-result-object v1

    .line 101
    if-eqz v1, :cond_7

    .line 102
    move v1, v10

    .line 104
    goto :goto_4

    .line 105
    :cond_7
    move v1, v0

    .line 106
    :goto_4
    if-nez v1, :cond_8

    .line 107
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;

    .line 109
    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;)V

    .line 111
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 114
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 117
    move-result v1

    .line 120
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 121
    move-result v2

    .line 124
    neg-int v2, v2

    .line 125
    if-eq v1, v2, :cond_9

    .line 126
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 128
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;

    .line 130
    invoke-direct {v2, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 132
    invoke-static {p1, v1, v3, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 135
    move v0, v10

    .line 138
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    .line 139
    move-result v1

    .line 142
    if-eqz v1, :cond_b

    .line 143
    const/4 v1, -0x1

    .line 145
    invoke-virtual {v8, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 146
    move-result v1

    .line 149
    if-eqz v1, :cond_a

    .line 150
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    .line 152
    move-result v1

    .line 155
    neg-int v9, v1

    .line 156
    if-eqz v9, :cond_b

    .line 157
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 159
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;

    .line 161
    move-object v4, v1

    .line 163
    move-object v5, p0

    .line 164
    move-object v6, p1

    .line 165
    move-object v7, p2

    .line 166
    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$3;-><init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    .line 167
    invoke-static {p1, v0, v3, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 170
    goto :goto_5

    .line 173
    :cond_a
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 174
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;

    .line 176
    invoke-direct {v1, p2, v10}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 178
    invoke-static {p1, v0, v3, v1}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 181
    goto :goto_5

    .line 184
    :cond_b
    move v10, v0

    .line 185
    :goto_5
    iput-boolean v10, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->coordinatorLayoutA11yScrollable:Z

    .line 186
    return-void
    .line 188
.end method
