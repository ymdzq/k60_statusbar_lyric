.class public abstract Lcom/android/systemui/statusbar/AlertingNotificationManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAlertEntries:Landroid/util/ArrayMap;

.field public mAutoDismissNotificationDecay:I

.field public final mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

.field public mHandler:Landroid/os/Handler;

.field public final mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

.field public mMinimumDisplayTime:I

.field public mStickyDisplayTime:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public abstract canRemoveImmediately(Ljava/lang/String;)Z
.end method

.method public final getAllEntries()Ljava/util/stream/Stream;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 8
    move-result-object p0

    .line 11
    new-instance v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda0;-><init>()V

    .line 14
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 17
    move-result-object p0

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$$ExternalSyntheticLambda1;-><init>()V

    .line 23
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method

.method public final isAlerting(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public abstract onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
.end method

.method public final releaseAllImmediately()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->logReleaseAllImmediately()V

    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    return-void
    .line 38
.end method

.method public final removeAlertEntry(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 13
    if-eqz v2, :cond_1

    .line 15
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mExpandAnimationRunning:Z

    .line 17
    if-eqz v3, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    const/4 v3, 0x1

    .line 22
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    .line 23
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V

    .line 28
    iget-object p0, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 31
    if-eqz p0, :cond_2

    .line 33
    const/16 p1, 0x800

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 37
    :cond_2
    check-cast v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 40
    const/4 p0, 0x0

    .line 42
    iput-object p0, v1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    .line 45
    iput-object p0, v1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    .line 48
    const/4 p0, 0x0

    .line 50
    iput-boolean p0, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->expanded:Z

    .line 51
    iput-boolean p0, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->remoteInputActive:Z

    .line 53
    iput-boolean p0, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->mGutsShownPinned:Z

    .line 55
    iput-boolean p0, v1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->extended:Z

    .line 57
    return-void
    .line 59
.end method

.method public final removeNotification(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->logRemoveNotification(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 13
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    return v1

    .line 18
    :cond_0
    if-nez p2, :cond_3

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->canRemoveImmediately(Ljava/lang/String;)Z

    .line 21
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    .line 28
    if-eqz p0, :cond_2

    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->removeAutoRemovalCallbacks()V

    .line 32
    iget-wide p0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEarliestRemovaltime:J

    .line 35
    iget-object p2, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    .line 37
    iget-object p2, p2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    move-result-wide v1

    .line 47
    sub-long/2addr p0, v1

    .line 48
    iget-object p2, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    .line 49
    iget-object p2, p2, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    .line 53
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeAlertEntry(Ljava/lang/String;)V

    .line 60
    return v1
    .line 63
.end method
