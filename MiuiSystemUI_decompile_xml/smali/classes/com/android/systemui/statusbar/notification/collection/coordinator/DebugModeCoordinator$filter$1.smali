.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    .line 2
    const-string p1, "DebugModeFilter"

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator$filter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;->debugModeFilterProvider:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 16
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 18
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 20
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    xor-int/lit8 p0, p0, 0x1

    .line 26
    :goto_0
    return p0
    .line 28
.end method
