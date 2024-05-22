.class public final Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.super Lcom/android/systemui/statusbar/notification/collection/ListEntry;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

.field public hasSentReply:Z

.field public headsUpStatusBarText:Ljava/lang/CharSequence;

.field public headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

.field public hideSensitiveByAppLock:Z

.field public initializationTime:J

.field public interruption:Z

.field public isFold:Z

.field public isVisual:Z

.field public isVisualInFloat:Z

.field public lastFullScreenIntentLaunchTime:J

.field public lastRemoteInputSent:J

.field public mBlockable:Z

.field public mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field public mBucket:I

.field public mCachedContrastColor:I

.field public mCachedContrastColorIsFor:I

.field public mCancellationReason:I

.field public final mDismissInterceptors:Ljava/util/List;

.field public mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

.field public mExpandAnimationRunning:Z

.field public mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

.field public mIsAlerting:Z

.field public mIsDemoted:Z

.field public mIsMarkedForUserTriggeredMovement:Z

.field public final mKey:Ljava/lang/String;

.field public final mLifetimeExtenders:Ljava/util/List;

.field public final mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

.field public mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field public mRemoteEditImeAnimatingAway:Z

.field public mRemoteEditImeVisible:Z

.field public mRowController:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

.field public mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

.field public mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

.field public mSensitive:Z

.field public modalRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public needUpdateBadgeNum:Z

.field public remoteInputAttachment:Landroid/view/ContentInfo;

.field public remoteInputMimeType:Ljava/lang/String;

.field public remoteInputText:Ljava/lang/CharSequence;

.field public remoteInputTextWhenReset:Ljava/lang/CharSequence;

.field public remoteInputUri:Landroid/net/Uri;

.field public row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public targetSdk:I

.field public visualPosition:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;J)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;-><init>(Ljava/lang/String;J)V

    .line 12
    new-instance p3, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mLifetimeExtenders:Ljava/util/List;

    .line 20
    new-instance p3, Ljava/util/ArrayList;

    .line 22
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissInterceptors:Ljava/util/List;

    .line 27
    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 30
    sget-object p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;->NOT_DISMISSED:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 32
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mDismissState:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$DismissState;

    .line 34
    new-instance p3, Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 36
    const/4 p4, 0x0

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p3, p4, v0, v0, v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;-><init>(ZLcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/StatusBarIconView;Lcom/android/systemui/statusbar/notification/icon/IconPack;)V

    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIcons:Lcom/android/systemui/statusbar/notification/icon/IconPack;

    .line 43
    const-wide/16 v1, -0x7d0

    .line 45
    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    .line 47
    const/4 p3, 0x1

    .line 49
    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColor:I

    .line 50
    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCachedContrastColorIsFor:I

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 54
    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastRemoteInputSent:J

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    .line 58
    const/4 v1, 0x3

    .line 60
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 61
    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 66
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSensitive:Z

    .line 68
    new-instance p3, Lcom/android/systemui/util/ListenerSet;

    .line 70
    invoke-direct {p3}, Lcom/android/systemui/util/ListenerSet;-><init>()V

    .line 72
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mOnSensitivityChangedListeners:Lcom/android/systemui/util/ListenerSet;

    .line 75
    const/4 p3, 0x6

    .line 77
    iput p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBucket:I

    .line 78
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    .line 80
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 85
    move-result-object p3

    .line 88
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 97
    return-void
    .line 100
.end method


# virtual methods
.method public final abortTask()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/statusbar/InflationTask;->abort()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 10
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
    .line 15
.end method

.method public final getAttachedNotifChildren()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    .line 8
    move-result-object p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    return-object v0

    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 34
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    return-object v0
    .line 44
.end method

.method public final getChannel()Landroid/app/NotificationChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getImportance()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public getRunningTask()Lcom/android/systemui/statusbar/InflationTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRunningTask:Lcom/android/systemui/statusbar/InflationTask;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hasFinishedInitialization()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 2
    const-wide/16 v2, -0x1

    .line 4
    cmp-long v0, v0, v2

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    .line 14
    const-wide/16 v4, 0x190

    .line 16
    add-long/2addr v2, v4

    .line 18
    cmp-long p0, v0, v2

    .line 19
    if-lez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
    .line 26
.end method

.method public final isBubble()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 8
    and-int/lit16 p0, p0, 0x1000

    .line 10
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

.method public final isCanceled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mCancellationReason:I

    .line 2
    const/4 v0, -0x1

    .line 4
    if-eq p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final isClearable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isUpdatableFocusNotification(Landroid/app/Notification;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 16
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    return v1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    .line 25
    move-result-object p0

    .line 28
    if-eqz p0, :cond_3

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v0

    .line 36
    if-lez v0, :cond_3

    .line 37
    move v0, v1

    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v2

    .line 43
    if-ge v0, v2, :cond_3

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 50
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 52
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 54
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    return v1

    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_3
    const/4 p0, 0x1

    .line 64
    return p0
    .line 65
.end method

.method public isDemoted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    .line 2
    return p0
    .line 4
.end method

.method public isExemptFromDndVisualSuppression()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8
    const-string v2, "call"

    .line 10
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v1, :cond_1

    .line 18
    iget-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 20
    const-string v4, "msg"

    .line 22
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    iget-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 30
    const-string v4, "alarm"

    .line 32
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    iget-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 40
    const-string v4, "event"

    .line 42
    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "reminder"

    .line 52
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    goto :goto_0

    .line 61
    :cond_0
    move v0, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    move v0, v3

    .line 64
    :goto_1
    if-eqz v0, :cond_2

    .line 65
    return v2

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 68
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    .line 74
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    return v3

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 81
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 83
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 87
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    return v3

    .line 93
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockable:Z

    .line 94
    if-nez p0, :cond_5

    .line 96
    return v3

    .line 98
    :cond_5
    return v2
    .line 99
.end method

.method public final isRowPinned()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final isStickyAndNotDemoted()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/app/Notification;->flags:I

    .line 8
    and-int/lit16 v0, v0, 0x4000

    .line 10
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_1

    .line 19
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    .line 21
    if-nez v3, :cond_1

    .line 23
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsDemoted:Z

    .line 29
    if-nez p0, :cond_2

    .line 31
    move v1, v2

    .line 33
    :cond_2
    return v1
    .line 34
.end method

.method public final isSummaryWithChildren()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final legacyIsDismissableRecursive()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/focus/FocusUtils;->isUpdatableFocusNotification(Landroid/app/Notification;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 20
    if-eqz v0, :cond_0

    .line 22
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v2

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    return v2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 30
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    return v2

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    .line 39
    move-result-object p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    check-cast p0, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 47
    move-result v0

    .line 50
    if-lez v0, :cond_4

    .line 51
    move v0, v2

    .line 53
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 54
    move-result v3

    .line 57
    if-ge v0, v3, :cond_4

    .line 58
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 64
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 66
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    .line 68
    move-result v3

    .line 71
    if-eqz v3, :cond_3

    .line 72
    return v2

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_1

    .line 77
    :cond_4
    return v1
    .line 78
.end method

.method public final rowExists()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public setCreationElapsedRealTime(J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setRanking(Landroid/service/notification/NotificationListenerService$Ranking;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 24
    invoke-virtual {p1, v0}, Landroid/service/notification/NotificationListenerService$Ranking;->withAudiblyAlertedInfo(Landroid/service/notification/NotificationListenerService$Ranking;)Landroid/service/notification/NotificationListenerService$Ranking;

    .line 26
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 32
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockable:Z

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isBlockable()Z

    .line 56
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockable:Z

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBlockable:Z

    .line 66
    :goto_0
    return-void

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    const-string v2, "New key "

    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getKey()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string p1, " doesn\'t match existing key "

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    .line 100
.end method

.method public final setSbn(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 24
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 29
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    .line 39
    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "New key "

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p1, " doesn\'t match existing key "

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0
    .line 73
.end method

.method public final shouldSuppressVisualEffect(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isExemptFromDndVisualSuppression()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 10
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    .line 12
    move-result p0

    .line 15
    and-int/2addr p0, p1

    .line 16
    if-eqz p0, :cond_1

    .line 17
    const/4 v1, 0x1

    .line 19
    :cond_1
    return v1
    .line 20
.end method
