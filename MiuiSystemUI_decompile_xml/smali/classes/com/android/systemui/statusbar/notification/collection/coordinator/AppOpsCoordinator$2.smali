.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$2;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ForegroundService"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;-><init>(Ljava/lang/String;I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final isInSection(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 9
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 28
    move-result v0

    .line 31
    if-le v0, v2, :cond_0

    .line 32
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v0, p1

    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 39
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 45
    move-result p0

    .line 48
    if-le p0, v2, :cond_1

    .line 49
    const-class p0, Landroid/app/Notification$CallStyle;

    .line 51
    invoke-virtual {v0, p0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 53
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    move p0, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move p0, p1

    .line 61
    :goto_1
    if-eqz p0, :cond_3

    .line 62
    :cond_2
    move p1, v2

    .line 64
    :cond_3
    return p1
    .line 65
.end method
