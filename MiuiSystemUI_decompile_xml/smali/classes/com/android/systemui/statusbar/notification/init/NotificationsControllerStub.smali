.class public final Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/init/NotificationsController;


# instance fields
.field public final notificationListener:Lcom/android/systemui/statusbar/NotificationListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final getActiveNotificationsCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinderImpl$BindRowCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/init/NotificationsControllerStub;->notificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationListener;->registerAsSystemService()V

    .line 4
    return-void
    .line 7
.end method

.method public final resetUserExpandedStates()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setNotificationSnoozed(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
