.class public final Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

.field public final personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 2
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->isConversation()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x3

    .line 10
    if-nez v1, :cond_0

    .line 11
    move v0, v3

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 15
    move-result-object v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    move v0, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 23
    move-result-object v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 29
    move-result v0

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v3

    .line 37
    :goto_0
    if-eqz v0, :cond_3

    .line 38
    move v0, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 v0, 0x2

    .line 42
    :goto_1
    if-ne v0, v4, :cond_4

    .line 43
    goto :goto_5

    .line 45
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 46
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->personExtractor:Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;

    .line 48
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    .line 50
    if-eqz v5, :cond_5

    .line 52
    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;->isPersonNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 54
    move-result v1

    .line 57
    goto :goto_2

    .line 58
    :cond_5
    move v1, v3

    .line 59
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v0

    .line 63
    if-ne v0, v4, :cond_6

    .line 64
    goto :goto_5

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->groupManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 67
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    .line 69
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 71
    move-result-object v5

    .line 74
    if-ne v5, p1, :cond_7

    .line 75
    goto :goto_3

    .line 77
    :cond_7
    move v2, v3

    .line 78
    :goto_3
    if-nez v2, :cond_8

    .line 79
    goto :goto_4

    .line 81
    :cond_8
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;

    .line 82
    move-result-object p1

    .line 85
    if-eqz p1, :cond_a

    .line 86
    new-instance v1, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;

    .line 88
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;)V

    .line 90
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p0

    .line 96
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result p1

    .line 100
    if-eqz p1, :cond_a

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl$getPeopleTypeOfSummary$childTypes$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 110
    check-cast p1, Ljava/lang/Number;

    .line 111
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 113
    move-result p1

    .line 116
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 117
    move-result v3

    .line 120
    if-ne v3, v4, :cond_9

    .line 121
    :cond_a
    :goto_4
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 123
    move-result v4

    .line 126
    :goto_5
    return v4
    .line 127
.end method
