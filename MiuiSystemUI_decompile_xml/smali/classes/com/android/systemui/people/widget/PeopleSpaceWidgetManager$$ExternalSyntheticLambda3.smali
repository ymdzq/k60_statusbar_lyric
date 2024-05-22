.class public final synthetic Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/systemui/people/NotificationHelper;->notificationEntryComparator:Lcom/android/systemui/people/NotificationHelper$1;

    .line 9
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 15
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 19
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 25
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 27
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    move v2, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    :goto_0
    if-eqz v2, :cond_2

    .line 36
    invoke-static {p1}, Lcom/android/systemui/people/NotificationHelper;->isMissedCallOrHasContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBubblesOptional:Ljava/util/Optional;

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 46
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 55
    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 56
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 58
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 60
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 65
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 66
    invoke-virtual {p0, v2, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-eqz p0, :cond_1

    .line 72
    move p0, v0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    const-string p1, "Exception checking if notification is suppressed: "

    .line 77
    const-string v2, "PeopleNotifHelper"

    .line 79
    invoke-static {p1, p0, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 81
    :cond_1
    move p0, v1

    .line 84
    :goto_1
    if-nez p0, :cond_2

    .line 85
    goto :goto_2

    .line 87
    :cond_2
    move v0, v1

    .line 88
    :goto_2
    return v0
    .line 89
.end method
