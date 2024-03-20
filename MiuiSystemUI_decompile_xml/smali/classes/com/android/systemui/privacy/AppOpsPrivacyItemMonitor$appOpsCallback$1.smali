.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onActiveStateChanged(Ljava/lang/String;ZII)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_MIC_CAMERA:[I

    .line 12
    invoke-static {p3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-nez v1, :cond_0

    .line 22
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_LOCATION:[I

    .line 26
    invoke-static {p3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 28
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    iget-boolean v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    if-nez v1, :cond_1

    .line 36
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 40
    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 42
    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 44
    move-result-object v1

    .line 47
    instance-of v2, v1, Ljava/util/Collection;

    .line 48
    const/4 v3, 0x0

    .line 50
    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    goto :goto_1

    .line 59
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v1

    .line 63
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_5

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 73
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 74
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 76
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 78
    move-result v4

    .line 81
    const/4 v5, 0x1

    .line 82
    if-ne v2, v4, :cond_4

    .line 83
    move v2, v5

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    move v2, v3

    .line 87
    :goto_0
    if-eqz v2, :cond_3

    .line 88
    move v3, v5

    .line 90
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 91
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->USER_INDEPENDENT_OPS:[I

    .line 98
    invoke-static {p3, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 100
    move-result v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 106
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedItemFromAppOps(Ljava/lang/String;ZII)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_7
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v0

    .line 117
    throw p0
    .line 118
.end method
