.class public final Lcom/android/systemui/ForegroundServiceNotificationListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ForegroundServiceNotificationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 13
    move-result v1

    .line 16
    new-instance v2, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/ExpandedNotification;I)V

    .line 19
    const/4 p1, 0x1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 23
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    .line 25
    return-void
    .line 28
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 9
    move-result p2

    .line 12
    new-instance v0, Lcom/android/systemui/ForegroundServiceNotificationListener$2;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/ForegroundServiceNotificationListener$2;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/ExpandedNotification;)V

    .line 15
    const/4 p1, 0x0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 19
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    .line 21
    return-void
    .line 24
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener$1;->this$0:Lcom/android/systemui/ForegroundServiceNotificationListener;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 13
    move-result v1

    .line 16
    new-instance v2, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;

    .line 17
    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/ForegroundServiceNotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ForegroundServiceNotificationListener;Lcom/android/systemui/statusbar/notification/ExpandedNotification;I)V

    .line 19
    const/4 p1, 0x1

    .line 22
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceNotificationListener;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 23
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/ForegroundServiceController;->updateUserState(ILcom/android/systemui/ForegroundServiceController$UserStateUpdateCallback;Z)V

    .line 25
    return-void
    .line 28
.end method
