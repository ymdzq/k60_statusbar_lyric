.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemMonitor;


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

.field public static final OPS:[I

.field public static final OPS_LOCATION:[I

.field public static final OPS_MIC_CAMERA:[I

.field public static final USER_INDEPENDENT_OPS:[I


# instance fields
.field public final appOpsCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

.field public final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

.field public final configCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;

.field public listening:Z

.field public locationAvailable:Z

.field public final lock:Ljava/lang/Object;

.field public final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public micCameraAvailable:Z

.field public final privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;-><init>(I)V

    .line 5
    sput-object v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    .line 8
    const/4 v0, 0x6

    .line 10
    new-array v2, v0, [I

    .line 11
    fill-array-data v2, :array_0

    .line 13
    sput-object v2, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_MIC_CAMERA:[I

    .line 16
    const/4 v3, 0x1

    .line 18
    filled-new-array {v1, v3}, [I

    .line 19
    move-result-object v3

    .line 22
    sput-object v3, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_LOCATION:[I

    .line 23
    const/16 v4, 0x8

    .line 25
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 27
    move-result-object v2

    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    sput-object v2, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS:[I

    .line 35
    const/16 v0, 0x65

    .line 37
    const/16 v1, 0x64

    .line 39
    filled-new-array {v0, v1}, [I

    .line 41
    move-result-object v0

    .line 44
    sput-object v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->USER_INDEPENDENT_OPS:[I

    .line 45
    return-void

    .line 47
    :array_0
    .array-data 4
        0x1a
        0x65
        0x1b
        0x64
        0x78
        0x79
    .end array-data
    .line 48
.end method

.method public constructor <init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/privacy/PrivacyConfig;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/privacy/logging/PrivacyLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 20
    iget-boolean p1, p3, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    .line 24
    iget-boolean p1, p3, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    .line 28
    new-instance p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;-><init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

    .line 35
    new-instance p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$userTrackerCallback$1;

    .line 37
    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$userTrackerCallback$1;-><init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 42
    new-instance p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;-><init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->configCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;

    .line 49
    invoke-virtual {p3, p1}, Lcom/android/systemui/privacy/PrivacyConfig;->addCallback(Lcom/android/systemui/privacy/PrivacyConfig$Callback;)V

    .line 51
    return-void
    .line 54
.end method

.method public static synthetic getUserTrackerCallback$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final dispatchOnPrivacyItemsChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 10
    new-instance v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;)V

    .line 14
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 19
    :cond_0
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0

    .line 24
    throw p0
    .line 25
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "Callback: "

    .line 2
    const-string v0, "locationAvailable: "

    .line 4
    const-string v1, "micCameraAvailable: "

    .line 6
    const-string v2, "Listening: "

    .line 8
    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    .line 10
    move-result-object p1

    .line 13
    const-string v3, "AppOpsPrivacyItemMonitor:"

    .line 14
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 22
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    iget-boolean v4, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->listening:Z

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 39
    iget-boolean v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 56
    iget-boolean v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 89
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    monitor-exit v3

    .line 93
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 94
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 98
    move-result-object p0

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    .line 102
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 104
    move-result v0

    .line 107
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object p0

    .line 114
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 124
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 125
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v0

    .line 132
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    goto :goto_0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v0, "Current user ids: "

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 160
    return-void

    .line 163
    :catchall_0
    move-exception p0

    .line 164
    :try_start_3
    monitor-exit v3

    .line 165
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    :catchall_1
    move-exception p0

    .line 167
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 168
    throw p0
    .line 171
.end method

.method public final getActivePrivacyItems()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 2
    check-cast v0, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getActiveAppOps(Z)Ljava/util/List;

    .line 7
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 13
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 15
    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 19
    monitor-enter v3

    .line 21
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v5

    .line 36
    if-eqz v5, :cond_7

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v5

    .line 42
    move-object v6, v5

    .line 43
    check-cast v6, Lcom/android/systemui/appops/AppOpItem;

    .line 44
    instance-of v7, v2, Ljava/util/Collection;

    .line 46
    const/4 v8, 0x0

    .line 48
    if-eqz v7, :cond_1

    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    move-result v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    goto :goto_2

    .line 57
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v7

    .line 61
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v9

    .line 65
    if-eqz v9, :cond_4

    .line 66
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v9

    .line 71
    check-cast v9, Landroid/content/pm/UserInfo;

    .line 72
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 74
    iget v10, v6, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 76
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 78
    move-result v10

    .line 81
    if-ne v9, v10, :cond_3

    .line 82
    move v9, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move v9, v8

    .line 86
    :goto_1
    if-eqz v9, :cond_2

    .line 87
    move v7, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    :goto_2
    move v7, v8

    .line 91
    :goto_3
    if-nez v7, :cond_5

    .line 92
    sget-object v7, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->USER_INDEPENDENT_OPS:[I

    .line 94
    iget v6, v6, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 96
    invoke-static {v6, v7}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 98
    move-result v6

    .line 101
    if-eqz v6, :cond_6

    .line 102
    :cond_5
    move v8, v1

    .line 104
    :cond_6
    if-eqz v8, :cond_0

    .line 105
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_0

    .line 110
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 116
    move-result-object v1

    .line 119
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result v2

    .line 123
    if-eqz v2, :cond_9

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    move-result-object v2

    .line 129
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->toPrivacyItemLocked(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;

    .line 132
    move-result-object v2

    .line 135
    if-eqz v2, :cond_8

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    goto :goto_4

    .line 141
    :cond_9
    monitor-exit v3

    .line 142
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 143
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v3

    .line 149
    throw p0
    .line 150
.end method

.method public final onCurrentProfilesChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 12
    move-result v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 33
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logCurrentProfilesChanged(Ljava/util/List;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 50
    return-void
    .line 53
.end method

.method public final setListeningStateLocked()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->listening:Z

    .line 18
    if-ne v2, v0, :cond_2

    .line 20
    return-void

    .line 22
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->listening:Z

    .line 23
    iget-object v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 25
    iget-object v3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

    .line 27
    sget-object v4, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS:[I

    .line 29
    iget-object v5, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 31
    if-eqz v0, :cond_3

    .line 33
    check-cast v5, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 35
    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 40
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 42
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 44
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->onCurrentProfilesChanged()V

    .line 49
    goto :goto_2

    .line 52
    :cond_3
    check-cast v5, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    array-length v0, v4

    .line 58
    move v6, v1

    .line 59
    :goto_1
    if-ge v6, v0, :cond_5

    .line 60
    iget-object v7, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 62
    aget v8, v4, v6

    .line 64
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->contains(I)Z

    .line 66
    move-result v7

    .line 69
    if-eqz v7, :cond_4

    .line 70
    iget-object v7, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 72
    aget v8, v4, v6

    .line 74
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v7

    .line 79
    check-cast v7, Ljava/util/Set;

    .line 80
    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 85
    goto :goto_1

    .line 87
    :cond_5
    iget-object v0, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 88
    check-cast v0, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 95
    check-cast v0, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    invoke-virtual {v5, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    .line 105
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 108
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 110
    invoke-virtual {v2, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 112
    :goto_2
    return-void
    .line 115
.end method

.method public final startListening(Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0

    .line 13
    throw p0
    .line 14
.end method

.method public final stopListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->setListeningStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
    .line 15
.end method

.method public final toPrivacyItemLocked(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_LOCATION:[I

    .line 2
    iget v1, p1, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 4
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-boolean p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_MIC_CAMERA:[I

    .line 15
    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-boolean p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    const/4 p0, 0x0

    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    if-nez p0, :cond_2

    .line 28
    return-object v0

    .line 30
    :cond_2
    if-eqz v1, :cond_5

    .line 31
    const/4 p0, 0x1

    .line 33
    if-eq v1, p0, :cond_5

    .line 34
    const/16 p0, 0x1a

    .line 36
    if-eq v1, p0, :cond_4

    .line 38
    const/16 p0, 0x1b

    .line 40
    if-eq v1, p0, :cond_3

    .line 42
    const/16 p0, 0x64

    .line 44
    if-eq v1, p0, :cond_3

    .line 46
    const/16 p0, 0x65

    .line 48
    if-eq v1, p0, :cond_4

    .line 50
    const/16 p0, 0x78

    .line 52
    if-eq v1, p0, :cond_3

    .line 54
    const/16 p0, 0x79

    .line 56
    if-eq v1, p0, :cond_3

    .line 58
    return-object v0

    .line 60
    :cond_3
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    .line 61
    goto :goto_1

    .line 63
    :cond_4
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    .line 64
    goto :goto_1

    .line 66
    :cond_5
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    .line 67
    :goto_1
    move-object v1, p0

    .line 69
    new-instance v2, Lcom/android/systemui/privacy/PrivacyApplication;

    .line 70
    iget-object p0, p1, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 72
    iget v0, p1, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 74
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;I)V

    .line 76
    new-instance p0, Lcom/android/systemui/privacy/PrivacyItem;

    .line 79
    iget-wide v3, p1, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    .line 81
    iget-boolean v5, p1, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    .line 83
    move-object v0, p0

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;JZ)V

    .line 86
    return-object p0
    .line 89
.end method
