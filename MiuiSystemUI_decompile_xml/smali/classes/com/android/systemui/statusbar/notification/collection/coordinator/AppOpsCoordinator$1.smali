.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 2
    const-string p1, "AppOpsCoordinator"

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;J)Z
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 4
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 11
    move-result p2

    .line 14
    const/4 p3, 0x0

    .line 15
    if-eqz p2, :cond_4

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 20
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 22
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 26
    move-result p1

    .line 29
    iget-object p2, p0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    .line 30
    monitor-enter p2

    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/systemui/ForegroundServicesUserState;

    .line 39
    const/4 p1, 0x1

    .line 41
    if-nez p0, :cond_0

    .line 42
    monitor-exit p2

    .line 44
    move p0, p3

    .line 45
    goto :goto_3

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v0

    .line 54
    iget-wide v2, p0, Lcom/android/systemui/ForegroundServicesUserState;->mServiceStartTime:J

    .line 55
    sub-long/2addr v0, v2

    .line 57
    const-wide/16 v2, 0x1388

    .line 58
    cmp-long v0, v0, v2

    .line 60
    if-ltz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesUserState;->mRunning:[Ljava/lang/String;

    .line 64
    array-length v1, v0

    .line 66
    move v2, p3

    .line 67
    :goto_0
    if-ge v2, v1, :cond_3

    .line 68
    aget-object v3, v0, v2

    .line 70
    iget-object v4, p0, Lcom/android/systemui/ForegroundServicesUserState;->mImportantNotifications:Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 77
    check-cast v3, Landroid/util/ArraySet;

    .line 78
    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 82
    move-result v3

    .line 85
    if-nez v3, :cond_1

    .line 86
    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    move p0, p1

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move p0, p3

    .line 94
    :goto_2
    monitor-exit p2

    .line 95
    :goto_3
    if-nez p0, :cond_4

    .line 96
    return p1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_4
    return p3
    .line 102
.end method
