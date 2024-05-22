.class public final Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$2;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$2;->this$0:Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 9
    move-result-object v1

    .line 12
    iget v1, v1, Landroid/app/Notification;->flags:I

    .line 13
    and-int/lit8 v1, v1, 0x40

    .line 15
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    move v1, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v2

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerInjectorKt;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    move v0, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v2

    .line 34
    :goto_1
    if-eqz v0, :cond_5

    .line 35
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 37
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    move-result-object v0

    .line 42
    iget v0, v0, Landroid/app/Notification;->flags:I

    .line 43
    and-int/lit8 v0, v0, 0x40

    .line 45
    if-eqz v0, :cond_2

    .line 47
    move v0, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v0, v2

    .line 51
    :goto_2
    if-nez v0, :cond_3

    .line 52
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerInjectorKt;->isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    .line 54
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    move v2, v3

    .line 60
    :cond_3
    if-nez v2, :cond_4

    .line 61
    goto :goto_3

    .line 63
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    .line 64
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string v1, "packageName"

    .line 69
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->getTargetPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$$ExternalSyntheticLambda0;

    .line 78
    const-string/jumbo v1, "updateNotificationUsageInfo"

    .line 80
    invoke-direct {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/notificationcenter/MiuiNotificationCenter;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_5
    :goto_3
    return-void
    .line 91
.end method
