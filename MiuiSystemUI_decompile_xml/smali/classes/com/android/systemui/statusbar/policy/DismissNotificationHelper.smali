.class public final Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final visibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->visibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->visibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    .line 6
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Lcom/android/internal/statusbar/NotificationVisibility;

    .line 8
    move-result-object p2

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(ILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    .line 18
    return-void
    .line 21
.end method
