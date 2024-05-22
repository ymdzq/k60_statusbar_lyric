.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 17
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 19
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 21
    move-result v1

    .line 24
    xor-int/2addr v1, v2

    .line 25
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 26
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 28
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 30
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    move-result v1

    .line 37
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 40
    move-result v1

    .line 43
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 46
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 51
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 53
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 55
    if-eqz v5, :cond_1

    .line 57
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 59
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 61
    move-result v5

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v5, v3

    .line 66
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 67
    if-nez v6, :cond_2

    .line 69
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 71
    iget-boolean v6, v6, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 73
    if-nez v6, :cond_2

    .line 75
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOnlyScrollingInThisMotion()Z

    .line 77
    move-result v6

    .line 80
    if-nez v6, :cond_2

    .line 81
    if-nez v4, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandHelper()Lcom/android/systemui/ExpandHelper;

    .line 85
    move-result-object v6

    .line 88
    invoke-virtual {v6, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    move-result v6

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v6, v3

    .line 94
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 95
    if-nez v7, :cond_3

    .line 97
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 99
    iget-boolean v7, v7, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 101
    if-nez v7, :cond_3

    .line 103
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 105
    if-nez v7, :cond_3

    .line 107
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    .line 109
    move-result v7

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move v7, v3

    .line 114
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 115
    if-nez v8, :cond_4

    .line 117
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 119
    if-nez v8, :cond_4

    .line 121
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 123
    if-nez v8, :cond_4

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandedInThisMotion()Z

    .line 127
    move-result v8

    .line 130
    if-nez v8, :cond_4

    .line 131
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOnlyScrollingInThisMotion()Z

    .line 133
    move-result v8

    .line 136
    if-nez v8, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDisallowDismissInThisMotion()Z

    .line 139
    move-result v8

    .line 142
    if-nez v8, :cond_4

    .line 143
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 145
    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    move-result v8

    .line 150
    goto :goto_3

    .line 151
    :cond_4
    move v8, v3

    .line 152
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 153
    move-result v9

    .line 156
    if-ne v9, v2, :cond_5

    .line 157
    move v9, v2

    .line 159
    goto :goto_4

    .line 160
    :cond_5
    move v9, v3

    .line 161
    :goto_4
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 162
    move-result v4

    .line 165
    if-nez v4, :cond_6

    .line 166
    if-eqz v9, :cond_6

    .line 168
    if-nez v8, :cond_6

    .line 170
    if-nez v6, :cond_6

    .line 172
    if-nez v7, :cond_6

    .line 174
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 176
    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    .line 178
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 181
    move-result v1

    .line 184
    if-ne v1, v2, :cond_7

    .line 185
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 187
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 189
    if-eqz p0, :cond_8

    .line 191
    if-eqz v7, :cond_8

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 195
    move-result p1

    .line 198
    if-eqz p1, :cond_8

    .line 199
    const/4 p1, 0x2

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 202
    :cond_8
    if-nez v8, :cond_a

    .line 205
    if-nez v7, :cond_a

    .line 207
    if-nez v6, :cond_a

    .line 209
    if-eqz v5, :cond_9

    .line 211
    goto :goto_5

    .line 213
    :cond_9
    move v2, v3

    .line 214
    :cond_a
    :goto_5
    return v2
    .line 215
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x3

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    move-result v1

    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move v1, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v1, v3

    .line 26
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 27
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 29
    if-eqz v0, :cond_2

    .line 32
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 34
    if-eqz v5, :cond_2

    .line 36
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 38
    invoke-virtual {v5, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 40
    move-result v5

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v5, v4

    .line 45
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 46
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOnlyScrollingInThisMotion()Z

    .line 48
    move-result v6

    .line 51
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 52
    iget-boolean v8, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 54
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 56
    if-nez v9, :cond_5

    .line 58
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIsExpanded()Z

    .line 60
    move-result v7

    .line 63
    if-eqz v7, :cond_5

    .line 64
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 66
    iget-boolean v7, v7, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 68
    if-nez v7, :cond_5

    .line 70
    if-nez v6, :cond_5

    .line 72
    if-nez v0, :cond_5

    .line 74
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 76
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandHelper()Lcom/android/systemui/ExpandHelper;

    .line 78
    move-result-object v7

    .line 81
    if-eqz v1, :cond_3

    .line 82
    iput-boolean v4, v7, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 84
    :cond_3
    invoke-virtual {v7, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 86
    move-result v7

    .line 89
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 90
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 92
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandedInThisMotion()Z

    .line 94
    move-result v9

    .line 97
    if-eqz v9, :cond_4

    .line 98
    if-nez v10, :cond_4

    .line 100
    if-eqz v8, :cond_4

    .line 102
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 104
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDisallowScrollingInThisMotion()Z

    .line 106
    move-result v8

    .line 109
    if-nez v8, :cond_4

    .line 110
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 112
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 117
    move-result-object v9

    .line 120
    invoke-virtual {v9, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 121
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 124
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 127
    :cond_4
    move v8, v10

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    move v7, v4

    .line 132
    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 133
    if-nez v9, :cond_6

    .line 135
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 137
    iget-boolean v10, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 139
    if-eqz v10, :cond_6

    .line 141
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 143
    iget-boolean v10, v10, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 145
    if-nez v10, :cond_6

    .line 147
    if-nez v8, :cond_6

    .line 149
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDisallowScrollingInThisMotion()Z

    .line 151
    move-result v9

    .line 154
    if-nez v9, :cond_6

    .line 155
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 157
    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 159
    move-result v9

    .line 162
    goto :goto_4

    .line 163
    :cond_6
    move v9, v4

    .line 164
    :goto_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 165
    if-nez v10, :cond_7

    .line 167
    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 169
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 171
    if-nez v11, :cond_7

    .line 173
    if-nez v8, :cond_7

    .line 175
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandedInThisMotion()Z

    .line 177
    move-result v8

    .line 180
    if-nez v8, :cond_7

    .line 181
    if-nez v6, :cond_7

    .line 183
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 185
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDisallowDismissInThisMotion()Z

    .line 187
    move-result v6

    .line 190
    if-nez v6, :cond_7

    .line 191
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 193
    invoke-virtual {v6, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 195
    move-result v6

    .line 198
    goto :goto_5

    .line 199
    :cond_7
    move v6, v4

    .line 200
    :goto_5
    if-eqz v0, :cond_a

    .line 201
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 203
    move-result v8

    .line 206
    if-nez v8, :cond_a

    .line 207
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 209
    move-result-object v8

    .line 212
    instance-of v8, v8, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 213
    if-eqz v8, :cond_a

    .line 215
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 217
    move-result-object v0

    .line 220
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 221
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    .line 223
    if-eqz v0, :cond_8

    .line 225
    if-nez v1, :cond_9

    .line 227
    :cond_8
    if-nez v6, :cond_a

    .line 229
    if-eqz v9, :cond_a

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    .line 233
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 236
    move-result v0

    .line 239
    if-ne v0, v3, :cond_c

    .line 240
    if-nez v6, :cond_b

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 244
    const/16 v1, 0xb

    .line 246
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 248
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 251
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 253
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 255
    move-result p1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 259
    if-nez v0, :cond_d

    .line 261
    const-string p0, "StackScrollerController"

    .line 263
    const-string/jumbo p1, "traceJankOnTouchEvent, mJankMonitor is null"

    .line 265
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    goto :goto_6

    .line 271
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 272
    const/4 v1, 0x2

    .line 274
    if-eqz p1, :cond_10

    .line 275
    if-eq p1, v3, :cond_f

    .line 277
    if-eq p1, v2, :cond_e

    .line 279
    goto :goto_6

    .line 281
    :cond_e
    if-eqz v9, :cond_11

    .line 282
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 284
    goto :goto_6

    .line 287
    :cond_f
    if-eqz v9, :cond_11

    .line 288
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFlingAfterUpEvent:Z

    .line 290
    if-nez p0, :cond_11

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 294
    goto :goto_6

    .line 297
    :cond_10
    if-eqz v9, :cond_11

    .line 298
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 300
    :cond_11
    :goto_6
    if-nez v6, :cond_13

    .line 303
    if-nez v9, :cond_13

    .line 305
    if-nez v7, :cond_13

    .line 307
    if-eqz v5, :cond_12

    .line 309
    goto :goto_7

    .line 311
    :cond_12
    move v3, v4

    .line 312
    :cond_13
    :goto_7
    return v3
    .line 313
.end method
