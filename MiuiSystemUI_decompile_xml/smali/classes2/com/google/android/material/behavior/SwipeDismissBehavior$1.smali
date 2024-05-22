.class public final Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public activePointerId:I

.field public originalCapturedViewLeft:I

.field public final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 4
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;I)I
    .locals 3

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 14
    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 16
    if-nez v2, :cond_2

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p1

    .line 27
    sub-int/2addr v0, p1

    .line 28
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 29
    goto :goto_3

    .line 31
    :cond_1
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    move-result p1

    .line 37
    :goto_1
    move v0, p0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    if-ne v2, v1, :cond_4

    .line 40
    if-eqz v0, :cond_3

    .line 42
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 46
    move-result p1

    .line 49
    goto :goto_1

    .line 50
    :goto_2
    add-int p0, p1, v0

    .line 51
    goto :goto_3

    .line 53
    :cond_3
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 56
    move-result p1

    .line 59
    sub-int/2addr v0, p1

    .line 60
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 61
    goto :goto_3

    .line 63
    :cond_4
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 66
    move-result v1

    .line 69
    sub-int/2addr v0, v1

    .line 70
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 73
    move-result p1

    .line 76
    add-int/2addr p0, p1

    .line 77
    :goto_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 78
    move-result p1

    .line 81
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    .line 82
    move-result p0

    .line 85
    return p0
    .line 86
.end method

.method public final clampViewPositionVertical(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onViewCaptured(ILandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 4
    move-result p1

    .line 7
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 16
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public final onViewDragStateChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final onViewPositionChanged(Landroid/view/View;II)V
    .locals 3

    .line 1
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 2
    int-to-float p3, p3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    move-result v0

    .line 8
    int-to-float v0, v0

    .line 9
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 10
    iget v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 12
    mul-float/2addr v0, v2

    .line 14
    add-float/2addr v0, p3

    .line 15
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 16
    int-to-float p0, p0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 19
    move-result p3

    .line 22
    int-to-float p3, p3

    .line 23
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 24
    mul-float/2addr p3, v1

    .line 26
    add-float/2addr p3, p0

    .line 27
    int-to-float p0, p2

    .line 28
    cmpg-float p2, p0, v0

    .line 29
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    if-gtz p2, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    cmpl-float p2, p0, p3

    .line 39
    const/4 v2, 0x0

    .line 41
    if-ltz p2, :cond_1

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    sub-float/2addr p0, v0

    .line 48
    sub-float/2addr p3, v0

    .line 49
    div-float/2addr p0, p3

    .line 50
    sub-float p0, v1, p0

    .line 51
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 53
    move-result p0

    .line 56
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    .line 57
    move-result p0

    .line 60
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 8

    .line 1
    const/4 p3, -0x1

    .line 2
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 5
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    cmpl-float v1, p2, v0

    .line 10
    const/4 v2, 0x1

    .line 12
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 13
    const/4 v4, 0x0

    .line 15
    if-eqz v1, :cond_5

    .line 16
    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 18
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 20
    move-result v5

    .line 23
    if-ne v5, v2, :cond_0

    .line 24
    move v5, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v5, v4

    .line 28
    :goto_0
    iget v6, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 29
    const/4 v7, 0x2

    .line 31
    if-ne v6, v7, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    if-nez v6, :cond_3

    .line 35
    if-eqz v5, :cond_2

    .line 37
    cmpg-float v1, p2, v0

    .line 39
    if-gez v1, :cond_6

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    if-lez v1, :cond_6

    .line 44
    goto :goto_1

    .line 46
    :cond_3
    if-ne v6, v2, :cond_6

    .line 47
    if-eqz v5, :cond_4

    .line 49
    if-lez v1, :cond_6

    .line 51
    goto :goto_1

    .line 53
    :cond_4
    cmpg-float v1, p2, v0

    .line 54
    if-gez v1, :cond_6

    .line 56
    goto :goto_1

    .line 58
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 59
    move-result v1

    .line 62
    iget v5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 63
    sub-int/2addr v1, v5

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 66
    move-result v5

    .line 69
    int-to-float v5, v5

    .line 70
    iget v6, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 71
    mul-float/2addr v5, v6

    .line 73
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 74
    move-result v5

    .line 77
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 78
    move-result v1

    .line 81
    if-lt v1, v5, :cond_6

    .line 82
    :goto_1
    move v1, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_6
    move v1, v4

    .line 86
    :goto_2
    if-eqz v1, :cond_9

    .line 87
    cmpg-float p2, p2, v0

    .line 89
    if-ltz p2, :cond_8

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 93
    move-result p2

    .line 96
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 97
    if-ge p2, v0, :cond_7

    .line 99
    goto :goto_3

    .line 101
    :cond_7
    add-int/2addr v0, p3

    .line 102
    goto :goto_4

    .line 103
    :cond_8
    :goto_3
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 104
    sub-int v0, p0, p3

    .line 106
    goto :goto_4

    .line 108
    :cond_9
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 109
    move v2, v4

    .line 111
    :goto_4
    iget-object p0, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 114
    move-result p2

    .line 117
    invoke-virtual {p0, v0, p2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 118
    move-result p0

    .line 121
    if-eqz p0, :cond_a

    .line 122
    new-instance p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    .line 124
    invoke-direct {p0, v3, p1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    .line 126
    sget-object p2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 129
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 131
    :cond_a
    return-void
    .line 134
.end method

.method public final tryCaptureView(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    if-ne v0, p1, :cond_1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method
