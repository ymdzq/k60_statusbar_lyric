.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$userTrackerCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator$userTrackerCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->settingsManager:Lcom/miui/systemui/SettingsManager;

    .line 4
    iget-boolean p1, p1, Lcom/miui/systemui/SettingsManager;->notifFold:Z

    .line 6
    const-string p2, "UNIMPORTANT"

    .line 8
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    const-string p1, "enable_fold"

    .line 13
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->transferNotifications(Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "disable_fold"

    .line 19
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->transferNotifications(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->shouldShow()Z

    .line 24
    move-result p1

    .line 27
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 28
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 30
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 32
    move-result-object p2

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;->foldEntranceController:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 36
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->checkFoldEntrance(Landroid/os/UserHandle;Z)V

    .line 38
    return-void
    .line 41
.end method
