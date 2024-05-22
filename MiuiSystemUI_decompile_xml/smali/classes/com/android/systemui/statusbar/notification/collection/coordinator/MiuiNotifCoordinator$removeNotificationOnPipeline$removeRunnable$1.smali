.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotificationOnPipeline$removeRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/NotifCollection$DismissedByUserStatsCreator;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotificationOnPipeline$removeRunnable$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final createDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator$removeNotificationOnPipeline$removeRunnable$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;->visibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 6
    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 11
    move-result-object p0

    .line 14
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 15
    return-object v0
    .line 18
.end method
