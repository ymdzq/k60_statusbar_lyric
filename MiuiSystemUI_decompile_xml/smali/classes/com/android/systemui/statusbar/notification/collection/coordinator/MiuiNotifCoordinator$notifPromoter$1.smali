.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$notifPromoter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "MiuiPromoter"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final shouldPromoteToTopLevel(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 4
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 12
    const/4 v1, 0x0

    .line 14
    if-nez p0, :cond_1

    .line 15
    move p0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 21
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 27
    move-result p0

    .line 30
    :goto_0
    if-nez p0, :cond_3

    .line 31
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 33
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isCustomViewNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 35
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    goto :goto_1

    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    :goto_1
    return v0
    .line 43
.end method
