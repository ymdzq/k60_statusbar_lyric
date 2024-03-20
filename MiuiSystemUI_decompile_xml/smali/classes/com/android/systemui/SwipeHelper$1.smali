.class public final Lcom/android/systemui/SwipeHelper$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mViewOffset:[I

.field public final synthetic this$0:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SwipeHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [I

    .line 8
    iput-object p1, p0, Lcom/android/systemui/SwipeHelper$1;->mViewOffset:[I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 4
    if-eqz v1, :cond_2

    .line 6
    iget-boolean v2, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 8
    if-nez v2, :cond_2

    .line 10
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 13
    instance-of v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->mViewOffset:[I

    .line 19
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 24
    iget-object v1, v0, Lcom/android/systemui/SwipeHelper;->mDownLocation:[F

    .line 26
    const/4 v3, 0x0

    .line 28
    aget v4, v1, v3

    .line 29
    float-to-int v4, v4

    .line 31
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper$1;->mViewOffset:[I

    .line 32
    aget v6, v5, v3

    .line 34
    sub-int/2addr v4, v6

    .line 36
    aget v1, v1, v2

    .line 37
    float-to-int v1, v1

    .line 39
    aget v5, v5, v2

    .line 40
    sub-int/2addr v1, v5

    .line 42
    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 43
    const/4 v5, 0x2

    .line 45
    invoke-virtual {v0, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 49
    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 51
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 53
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->doLongClickCallback(II)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 58
    iget-object v1, v0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 60
    sget-object v4, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 62
    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 64
    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 66
    invoke-virtual {v0, v4}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    instance-of v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 74
    if-eqz v0, :cond_1

    .line 76
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 78
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 80
    move-result-object v0

    .line 83
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 84
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    .line 86
    move-result v0

    .line 89
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 90
    move-result-object v1

    .line 93
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 94
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 96
    move-result-object v1

    .line 99
    iget-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 100
    if-eqz v4, :cond_0

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    iget-object v4, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 105
    :goto_0
    if-eqz v4, :cond_1

    .line 107
    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    .line 109
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    if-nez v0, :cond_1

    .line 115
    goto :goto_1

    .line 117
    :cond_1
    move v2, v3

    .line 118
    :goto_1
    if-eqz v2, :cond_2

    .line 119
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper$1;->this$0:Lcom/android/systemui/SwipeHelper;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/SwipeHelper;->mTouchedView:Landroid/view/View;

    .line 125
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;->onLongPressSent(Landroid/view/View;)V

    .line 127
    :cond_2
    return-void
    .line 130
.end method
