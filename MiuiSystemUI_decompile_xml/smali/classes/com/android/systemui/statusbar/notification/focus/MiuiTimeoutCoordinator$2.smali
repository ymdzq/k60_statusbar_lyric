.class public final Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

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
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mBgHandler:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda1;

    .line 6
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMiuiTimeout()J

    .line 16
    move-result-wide v0

    .line 19
    const-wide/16 v2, 0x0

    .line 20
    cmp-long v2, v0, v2

    .line 22
    if-lez v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mBgHandler:Landroid/os/Handler;

    .line 26
    new-instance v3, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;

    .line 28
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V

    .line 30
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    return-void
    .line 36
.end method

.method public final onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mBgHandler:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda1;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mBgHandler:Landroid/os/Handler;

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 16
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMiuiTimeout()J

    .line 18
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    cmp-long p2, v0, v2

    .line 24
    if-lez p2, :cond_0

    .line 26
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;->mBgHandler:Landroid/os/Handler;

    .line 28
    new-instance v2, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)V

    .line 32
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_0
    return-void
    .line 38
.end method
