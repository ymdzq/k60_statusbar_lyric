.class public final Landroidx/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 4
    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez p1, :cond_5

    .line 17
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 25
    move-result p1

    .line 28
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 31
    move-result p1

    .line 34
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 37
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 41
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 44
    move-result-object p1

    .line 47
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 48
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 50
    if-nez p1, :cond_8

    .line 52
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 54
    check-cast p1, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    .line 65
    move-result-object v4

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result v5

    .line 72
    add-int/2addr v5, v2

    .line 73
    :goto_0
    if-ltz v5, :cond_3

    .line 74
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v2

    .line 79
    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;

    .line 80
    iget-object v6, v2, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 82
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 84
    if-ne v6, v4, :cond_2

    .line 86
    move-object v0, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v5, v5, -0x1

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 93
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 95
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mX:F

    .line 97
    sub-float/2addr p1, v2

    .line 99
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    .line 100
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 102
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mY:F

    .line 104
    sub-float/2addr p1, v2

    .line 106
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    .line 107
    iget-object p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 109
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 111
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 114
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 116
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 118
    check-cast p1, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 128
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 130
    iget-object v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 132
    invoke-virtual {p1, v2, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 134
    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 137
    iget v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->mActionState:I

    .line 139
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 141
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 144
    invoke-virtual {p0, p1, v3, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 146
    goto :goto_3

    .line 149
    :cond_5
    const/4 v4, 0x3

    .line 150
    if-eq p1, v4, :cond_7

    .line 151
    if-ne p1, v1, :cond_6

    .line 153
    goto :goto_2

    .line 155
    :cond_6
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 156
    if-eq v0, v2, :cond_8

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 160
    move-result v0

    .line 163
    if-ltz v0, :cond_8

    .line 164
    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(IILandroid/view/MotionEvent;)V

    .line 166
    goto :goto_3

    .line 169
    :cond_7
    :goto_2
    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 170
    invoke-virtual {p0, v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 172
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    if-eqz p1, :cond_9

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    :cond_9
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 182
    if-eqz p0, :cond_a

    .line 184
    goto :goto_4

    .line 186
    :cond_a
    move v1, v3

    .line 187
    :goto_4
    return v1
    .line 188
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 9
    return-void
    .line 12
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 13
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 16
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result v0

    .line 25
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 28
    move-result v2

    .line 31
    if-ltz v2, :cond_2

    .line 32
    invoke-virtual {p0, v0, v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkSelectForSwipe(IILandroid/view/MotionEvent;)V

    .line 34
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 37
    if-nez v3, :cond_3

    .line 39
    return-void

    .line 41
    :cond_3
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x1

    .line 43
    if-eq v0, v5, :cond_8

    .line 44
    const/4 v6, 0x2

    .line 46
    if-eq v0, v6, :cond_7

    .line 47
    const/4 v2, 0x3

    .line 49
    if-eq v0, v2, :cond_6

    .line 50
    const/4 v1, 0x6

    .line 52
    if-eq v0, v1, :cond_4

    .line 53
    goto :goto_1

    .line 55
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 56
    move-result v0

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 60
    move-result v1

    .line 63
    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 64
    if-ne v1, v2, :cond_9

    .line 66
    if-nez v0, :cond_5

    .line 68
    move v4, v5

    .line 70
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    move-result v1

    .line 74
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 75
    iget v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 77
    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 79
    goto :goto_1

    .line 82
    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 83
    if-eqz p1, :cond_8

    .line 85
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 87
    goto :goto_0

    .line 90
    :cond_7
    if-ltz v2, :cond_9

    .line 91
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 93
    invoke-virtual {p0, v0, v2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->updateDxDy(IILandroid/view/MotionEvent;)V

    .line 95
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 98
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Landroidx/recyclerview/widget/ItemTouchHelper$1;

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 105
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$1;->run()V

    .line 108
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 113
    goto :goto_1

    .line 116
    :cond_8
    :goto_0
    const/4 p1, 0x0

    .line 117
    invoke-virtual {p0, p1, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 118
    iput v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 121
    :cond_9
    :goto_1
    return-void
    .line 123
.end method
