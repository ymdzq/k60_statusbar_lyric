.class public abstract Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.super Lcom/android/systemui/statusbar/AlertingNotificationManager;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field public final mContext:Landroid/content/Context;

.field public mHasPinnedNotification:Z

.field public final mListeners:Lcom/android/systemui/util/ListenerSet;

.field public mSnoozeLengthMs:I

.field public final mSnoozedPackages:Landroid/util/ArrayMap;

.field public final mTouchAcceptanceDelay:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUser:I


# direct methods
.method public static -$$Nest$smisCriticalCallNotif(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    const-class v1, Landroid/app/Notification$CallStyle;

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 18
    const-string v4, "android.callType"

    .line 20
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 22
    move-result v1

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    if-nez v1, :cond_1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 33
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 35
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    const-string p0, "call"

    .line 41
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    :cond_1
    move v2, v3

    .line 51
    :cond_2
    return v2
    .line 52
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;Landroid/os/Handler;)V

    .line 2
    new-instance p2, Lcom/android/systemui/util/ListenerSet;

    .line 5
    invoke-direct {p2}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 12
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 14
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p2

    .line 21
    const p4, 0x7f0b0069    # @integer/heads_up_notification_minimum_time '2000'

    .line 22
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 25
    move-result p4

    .line 28
    iput p4, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mMinimumDisplayTime:I

    .line 29
    const p4, 0x7f0b0109    # @integer/sticky_heads_up_notification_time '60000'

    .line 31
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 34
    move-result p4

    .line 37
    iput p4, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mStickyDisplayTime:I

    .line 38
    const p4, 0x7f0b0068    # @integer/heads_up_notification_decay '5000'

    .line 40
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 43
    move-result p4

    .line 46
    iput p4, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAutoDismissNotificationDecay:I

    .line 47
    const p4, 0x7f0b010b    # @integer/touch_acceptance_delay '700'

    .line 49
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 52
    move-result p4

    .line 55
    iput p4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    .line 56
    new-instance p4, Landroid/util/ArrayMap;

    .line 58
    invoke-direct {p4}, Landroid/util/ArrayMap;-><init>()V

    .line 60
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 63
    const p4, 0x7f0b0067    # @integer/heads_up_default_snooze_length_ms '60000'

    .line 65
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 68
    move-result p2

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    move-result-object p4

    .line 75
    const-string p5, "heads_up_snooze_length_ms"

    .line 76
    invoke-static {p4, p5, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 78
    move-result p2

    .line 81
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 82
    new-instance p2, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;

    .line 84
    invoke-direct {p2, p0, p3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object p0

    .line 92
    invoke-static {p5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    move-result-object p1

    .line 96
    const/4 p3, 0x0

    .line 97
    invoke-virtual {p0, p1, p3, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    return-void
    .line 101
.end method

.method public static hasFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 8
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


# virtual methods
.method public final addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ListenerSet;->addIfAbsent(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 8
    return-object p0
    .line 10
.end method

.method public final getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public final getTopHeadsUpEntry()Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    .line 34
    move-result v2

    .line 37
    if-gez v2, :cond_1

    .line 38
    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 40
    move-object v1, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return-object v1
    .line 44
.end method

.method public onAlertEntryRemoved(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUp(Z)V

    .line 9
    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 12
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Z)V

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 20
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 21
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    const v1, 0x8ca1

    .line 27
    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 30
    iget-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 38
    sget-object v3, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logNotificationActuallyRemoved$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logNotificationActuallyRemoved$2;

    .line 40
    const/4 v4, 0x0

    .line 42
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 43
    const-string v5, "HeadsUpManager"

    .line 45
    invoke-virtual {p1, v5, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 47
    move-result-object v1

    .line 50
    invoke-static {v0, v1, p1, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/log/LogMessage;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/log/LogMessage;)V

    .line 51
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 59
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 69
    check-cast p1, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 70
    invoke-interface {p1, v0, v2}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 72
    goto :goto_0

    .line 75
    :cond_1
    return-void
    .line 76
.end method

.method public final setEntryPinned(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Z)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 9
    sget-object v3, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logSetEntryPinned$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logSetEntryPinned$2;

    .line 11
    iget-object v4, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 13
    const-string v5, "HeadsUpManager"

    .line 15
    const/4 v6, 0x0

    .line 17
    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-interface {v2, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 29
    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    iget-object v0, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 35
    const/4 v2, 0x1

    .line 37
    if-nez p2, :cond_0

    .line 38
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->wasUnpinned:Z

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    .line 42
    move-result p1

    .line 45
    if-eq p1, p2, :cond_9

    .line 46
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 48
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setPinned(Z)V

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 57
    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p1

    .line 64
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 77
    move-result-object v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    iget-object v3, v3, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 83
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    .line 85
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    move p1, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 p1, 0x0

    .line 93
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 94
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    .line 96
    if-ne p1, v3, :cond_4

    .line 98
    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    sget-object v3, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 104
    sget-object v7, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logUpdatePinnedMode$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logUpdatePinnedMode$2;

    .line 106
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 108
    invoke-virtual {v1, v5, v3, v7, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 110
    move-result-object v3

    .line 113
    invoke-interface {v3, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 114
    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 120
    if-eqz p1, :cond_5

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 124
    const-string v3, "note_peek"

    .line 126
    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 128
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v1

    .line 134
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v2

    .line 138
    if-eqz v2, :cond_6

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v2

    .line 144
    check-cast v2, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 145
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinnedModeChanged(Z)V

    .line 147
    goto :goto_1

    .line 150
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 151
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 153
    if-eqz p1, :cond_7

    .line 155
    sget-object v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager$NotificationPeekEvent;->NOTIFICATION_PEEK:Lcom/android/systemui/statusbar/policy/HeadsUpManager$NotificationPeekEvent;

    .line 157
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 159
    move-result p1

    .line 162
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 163
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 165
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 167
    move-result-object v2

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 171
    invoke-interface {p0, v1, p1, v3, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 173
    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object p0

    .line 179
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result p1

    .line 183
    if-eqz p1, :cond_9

    .line 184
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object p1

    .line 189
    check-cast p1, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 190
    if-eqz p2, :cond_8

    .line 192
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 194
    goto :goto_3

    .line 197
    :cond_8
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;->onHeadsUpUnPinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 198
    goto :goto_3

    .line 201
    :cond_9
    return-void
    .line 202
.end method

.method public abstract shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method

.method public snooze()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mClock:Lcom/android/systemui/statusbar/AlertingNotificationManager$Clock;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v0

    .line 10
    const-wide/32 v2, 0xea60

    .line 11
    add-long/2addr v0, v2

    .line 14
    sput-wide v0, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->sSnoozeUntil:J

    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 19
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_10

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 39
    move-result-object v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 46
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 48
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 50
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    move-result-object v4

    .line 57
    const-string v5, "miui_float_notification_snooze_strategy"

    .line 58
    const/4 v6, 0x0

    .line 60
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 61
    move-result v4

    .line 64
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 65
    sget-object v7, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 67
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/InCallUtils;->isInCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 69
    move-result v5

    .line 72
    const/4 v7, 0x1

    .line 73
    const/4 v8, 0x0

    .line 74
    if-eqz v5, :cond_1

    .line 75
    goto :goto_2

    .line 77
    :cond_1
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 78
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 80
    move-result-object v5

    .line 83
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 84
    const-string/jumbo v9, "verify_code"

    .line 86
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 89
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    goto :goto_2

    .line 95
    :cond_2
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 96
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 98
    move-result-object v1

    .line 101
    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 102
    if-eqz v1, :cond_3

    .line 104
    move v1, v7

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move v1, v6

    .line 108
    :goto_1
    if-eqz v1, :cond_4

    .line 109
    :goto_2
    move v6, v7

    .line 111
    goto/16 :goto_9

    .line 112
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->sSnoozeNotify:Z

    .line 114
    if-eqz v1, :cond_5

    .line 116
    sget-boolean v1, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    .line 118
    if-eqz v1, :cond_e

    .line 120
    :cond_5
    const/4 v1, 0x2

    .line 122
    if-ne v4, v1, :cond_6

    .line 123
    goto/16 :goto_8

    .line 125
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    if-nez v4, :cond_7

    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object v4

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    move-result-object v5

    .line 138
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 139
    move-result-object v5

    .line 142
    const v9, 0x7f13078c    # @string/miui_snooze_toast_hint_default 'Upcoming notifications will be hidden for %d minute. '

    .line 143
    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    move-result-object v4

    .line 154
    const v5, 0x7f13078d    # @string/miui_snooze_toast_hint_until_unlock_screen 'Upcoming notifications will be hidden until the device is locked. '

    .line 155
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 158
    move-result-object v4

    .line 161
    :goto_3
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 165
    move-result v4

    .line 168
    const v5, 0x7f13078b    # @string/miui_snooze_to_settings 'Settings'

    .line 169
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    move-result-object v5

    .line 175
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 179
    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    .line 184
    const-string v10, "#0D84FF"

    .line 186
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 188
    move-result v10

    .line 191
    invoke-direct {v9, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 195
    move-result v1

    .line 198
    const/16 v10, 0x21

    .line 199
    invoke-virtual {v5, v9, v4, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/views/ClickableToast;

    .line 204
    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/views/ClickableToast;-><init>(Landroid/content/Context;)V

    .line 206
    iget-object v4, v1, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 209
    const v9, 0x7f0a01f2    # @id/click_btn_text

    .line 211
    if-eqz v4, :cond_8

    .line 214
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 216
    move-result-object v4

    .line 219
    check-cast v4, Landroid/widget/TextView;

    .line 220
    goto :goto_4

    .line 222
    :cond_8
    move-object v4, v8

    .line 223
    :goto_4
    if-nez v4, :cond_9

    .line 224
    goto :goto_5

    .line 226
    :cond_9
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_5
    new-instance v4, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector$$ExternalSyntheticLambda1;

    .line 230
    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 232
    iget-object v3, v1, Lcom/android/systemui/statusbar/views/ClickableToast;->mView:Landroid/view/View;

    .line 235
    if-eqz v3, :cond_a

    .line 237
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    move-result-object v3

    .line 242
    check-cast v3, Landroid/widget/TextView;

    .line 243
    goto :goto_6

    .line 245
    :cond_a
    move-object v3, v8

    .line 246
    :goto_6
    if-nez v3, :cond_b

    .line 247
    goto :goto_7

    .line 249
    :cond_b
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :goto_7
    if-eqz v3, :cond_c

    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_c
    iget-object v3, v1, Lcom/android/systemui/statusbar/views/ClickableToast;->mShowRunnable:Lcom/android/systemui/statusbar/views/ClickableToast$2;

    .line 258
    sget-object v4, Lcom/android/systemui/statusbar/views/ClickableToast;->sHandler:Landroid/os/Handler;

    .line 260
    if-eqz v3, :cond_d

    .line 262
    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    :cond_d
    new-instance v3, Lcom/android/systemui/statusbar/views/ClickableToast$2;

    .line 267
    invoke-direct {v3, v1, v7}, Lcom/android/systemui/statusbar/views/ClickableToast$2;-><init>(Lcom/android/systemui/statusbar/views/ClickableToast;I)V

    .line 269
    iput-object v3, v1, Lcom/android/systemui/statusbar/views/ClickableToast;->mShowRunnable:Lcom/android/systemui/statusbar/views/ClickableToast$2;

    .line 272
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    const-class v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 277
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 279
    move-result-object v1

    .line 282
    check-cast v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    new-instance v3, Lcom/miui/systemui/events/SnoozeToastVisible;

    .line 288
    invoke-direct {v3}, Lcom/miui/systemui/events/SnoozeToastVisible;-><init>()V

    .line 290
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 293
    invoke-interface {v1, v3}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 295
    :goto_8
    sput-boolean v7, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->sSnoozeNotify:Z

    .line 298
    :cond_e
    :goto_9
    if-eqz v6, :cond_f

    .line 300
    const-wide/16 v1, 0x0

    .line 302
    sput-wide v1, Lcom/android/systemui/statusbar/policy/HeadsUpManagerInjector;->sSnoozeUntil:J

    .line 304
    goto/16 :goto_0

    .line 306
    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mUser:I

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ","

    .line 318
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 330
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    sget-object v3, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 335
    sget-object v4, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logPackageSnoozed$2;->INSTANCE:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger$logPackageSnoozed$2;

    .line 337
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 339
    const-string v5, "HeadsUpManager"

    .line 341
    invoke-virtual {v2, v5, v3, v4, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 343
    move-result-object v3

    .line 346
    invoke-interface {v3, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 353
    move-result-wide v2

    .line 356
    iget v4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 357
    int-to-long v4, v4

    .line 359
    add-long/2addr v2, v4

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 361
    move-result-object v2

    .line 364
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozedPackages:Landroid/util/ArrayMap;

    .line 365
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    goto/16 :goto_0

    .line 370
    :cond_10
    return-void
    .line 372
.end method

.method public final unpinAll(Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 4
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_6

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 25
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 36
    if-eqz v2, :cond_4

    .line 38
    iget-object v2, v2, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 40
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationUtil;->PKG_HOME:Ljava/lang/String;

    .line 42
    if-eqz v2, :cond_3

    .line 44
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 46
    if-eqz v6, :cond_3

    .line 48
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 50
    move-result-object v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 56
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMostImportantNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 60
    move-result v6

    .line 63
    if-nez v6, :cond_2

    .line 64
    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 68
    move-result-object v6

    .line 71
    iget-object v6, v6, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 72
    if-eqz v6, :cond_1

    .line 74
    move v6, v3

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    move v6, v5

    .line 78
    :goto_1
    if-nez v6, :cond_2

    .line 79
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 81
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 83
    move-result-object v2

    .line 86
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isFocusNotification(Landroid/app/Notification;)Z

    .line 87
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    :cond_2
    move v2, v3

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v2, v5

    .line 95
    :goto_2
    if-eqz v2, :cond_4

    .line 96
    move v3, v5

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Z)V

    .line 100
    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    .line 103
    iget-object v2, v4, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 106
    if-eqz v2, :cond_0

    .line 108
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 110
    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mustStayOnScreen()Z

    .line 114
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    goto :goto_3

    .line 120
    :cond_5
    move v3, v5

    .line 121
    :goto_3
    if-eqz v3, :cond_0

    .line 122
    iget-object v2, v4, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 124
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 126
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setHeadsUpIsVisible()V

    .line 130
    goto :goto_0

    .line 133
    :cond_6
    :goto_4
    return v3
    .line 134
.end method

.method public final updateNotification(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 8
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mLogger:Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;

    .line 16
    invoke-virtual {v3, p1, p2, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManagerLogger;->logUpdateNotification(Ljava/lang/String;ZZ)V

    .line 18
    if-nez v0, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 24
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 26
    if-eqz v2, :cond_2

    .line 28
    const/16 v3, 0x800

    .line 30
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 32
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->updateEntry(Z)V

    .line 37
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;

    .line 40
    move-result-object p1

    .line 43
    if-eqz p2, :cond_4

    .line 44
    if-eqz p1, :cond_4

    .line 46
    iget-object p2, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 48
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->shouldHeadsUpBecomePinned(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 50
    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setEntryPinned(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Z)V

    .line 54
    :cond_4
    return-void
    .line 57
.end method
