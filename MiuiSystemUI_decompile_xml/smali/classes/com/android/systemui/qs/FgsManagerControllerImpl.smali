.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/qs/FgsManagerController;


# instance fields
.field public final _showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityManager:Landroid/app/IActivityManager;

.field public final appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public final currentProfileIds:Ljava/util/Set;

.field public final deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final foregroundServiceObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

.field public informJobSchedulerOfPendingAppStop:Z

.field public initialized:Z

.field public final jobScheduler:Landroid/app/job/JobScheduler;

.field public lastNumberOfVisiblePackages:I

.field public final lock:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public newChangesSinceDialogWasDismissed:Z

.field public final onDialogDismissedListeners:Ljava/util/Set;

.field public final onNumberOfPackagesChangedListeners:Ljava/util/Set;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final runningApps:Landroid/util/ArrayMap;

.field public final runningTaskIdentifiers:Ljava/util/Map;

.field public final showFooterDot:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public showStopBtnForUserAllowlistedApps:Z

.field public showUserVisibleJobs:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

.field public final userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/time/SystemClock;Landroid/app/IActivityManager;Landroid/app/job/JobScheduler;Landroid/content/pm/PackageManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 25
    iput-object p12, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 27
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 31
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->_showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 35
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 37
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 39
    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showFooterDot:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 42
    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z

    .line 47
    new-instance p1, Ljava/lang/Object;

    .line 49
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 54
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 56
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 63
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 68
    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    .line 70
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 72
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    .line 75
    new-instance p1, Landroid/util/ArrayMap;

    .line 77
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    .line 82
    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

    .line 84
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 86
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTrackerCallback:Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

    .line 89
    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

    .line 91
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->foregroundServiceObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

    .line 96
    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    .line 98
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 100
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    .line 103
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 105
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    .line 110
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 112
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onDialogDismissedListeners:Ljava/util/Set;

    .line 117
    return-void
    .line 119
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "newChangesSinceDialogWasShown="

    .line 2
    const-string v0, "current user profiles = "

    .line 4
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 6
    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 11
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->newChangesSinceDialogWasDismissed:Z

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 44
    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 45
    const-string p2, "Running task identifiers: ["

    .line 48
    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 53
    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 56
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 58
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 60
    move-result-object p2

    .line 63
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p2

    .line 67
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 83
    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 90
    const-string/jumbo v3, "{"

    .line 92
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 98
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->dump(Ljava/io/PrintWriter;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->dump(Ljava/io/PrintWriter;)V

    .line 104
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 107
    const-string/jumbo v0, "}"

    .line 110
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 117
    const-string p2, "]"

    .line 120
    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string p2, "Loaded package UI info: ["

    .line 125
    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    .line 133
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 135
    move-result-object p0

    .line 138
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object p0

    .line 142
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result p2

    .line 146
    if-eqz p2, :cond_1

    .line 147
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object p2

    .line 152
    check-cast p2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 158
    check-cast v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 159
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 161
    move-result-object p2

    .line 164
    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    .line 165
    const-string/jumbo v2, "{"

    .line 167
    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 173
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->dump(Ljava/io/PrintWriter;)V

    .line 176
    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->dump(Ljava/io/PrintWriter;)V

    .line 179
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 182
    const-string/jumbo p2, "}"

    .line 185
    invoke-virtual {v1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 188
    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 192
    const-string p0, "]"

    .line 195
    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p1

    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    monitor-exit p1

    .line 203
    throw p0
    .line 204
.end method

.method public final getNumVisibleButtonsLocked()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/util/Collection;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_2

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 25
    move v1, v2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_5

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 37
    iget-boolean v4, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    .line 39
    if-nez v4, :cond_2

    .line 41
    invoke-virtual {v3}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    .line 43
    :cond_2
    iget-object v4, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 46
    sget-object v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 48
    if-eq v4, v5, :cond_3

    .line 50
    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    .line 52
    iget v3, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 59
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    const/4 v3, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v3, v2

    .line 68
    :goto_1
    if-eqz v3, :cond_1

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 71
    if-ltz v1, :cond_4

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 76
    const-string v0, "Count overflow has happened."

    .line 78
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 83
    :cond_5
    move v2, v1

    .line 84
    :goto_2
    return v2
    .line 85
.end method

.method public final getNumVisiblePackagesLocked()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/util/Collection;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    goto :goto_2

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 25
    move v1, v2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_5

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    .line 37
    iget-boolean v4, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControlInitialized:Z

    .line 39
    if-nez v4, :cond_2

    .line 41
    invoke-virtual {v3}, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->updateUiControl()V

    .line 43
    :cond_2
    iget-object v4, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 46
    sget-object v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    .line 48
    if-eq v4, v5, :cond_3

    .line 50
    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    .line 52
    iget v3, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 59
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    const/4 v3, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v3, v2

    .line 68
    :goto_1
    if-eqz v3, :cond_1

    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 71
    if-ltz v1, :cond_4

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 76
    const-string v0, "Count overflow has happened."

    .line 78
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 83
    :cond_5
    move v2, v1

    .line 84
    :goto_2
    return v2
    .line 85
.end method

.method public final init()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 11
    const-string/jumbo v2, "systemui"

    .line 13
    const-string/jumbo v3, "task_manager_show_user_visible_jobs"

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const/4 v1, 0x1

    .line 22
    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    move-result v2

    .line 26
    iput-boolean v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    .line 27
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 29
    const-string/jumbo v3, "systemui"

    .line 31
    const-string/jumbo v4, "task_manager_inform_job_scheduler_of_pending_app_stop"

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 40
    move-result v2

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->informJobSchedulerOfPendingAppStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->activityManager:Landroid/app/IActivityManager;

    .line 46
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->foregroundServiceObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$ForegroundServiceObserver;

    .line 48
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    .line 50
    iget-boolean v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showUserVisibleJobs:Z

    .line 53
    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->jobScheduler:Landroid/app/job/JobScheduler;

    .line 57
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userVisibleJobObserver:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserVisibleJobObserver;

    .line 59
    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->registerUserVisibleJobObserver(Landroid/app/job/IUserVisibleJobObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    goto :goto_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 66
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 69
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTrackerCallback:Lcom/android/systemui/qs/FgsManagerControllerImpl$userTrackerCallback$1;

    .line 71
    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 73
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 75
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 77
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    .line 80
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 82
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 84
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 86
    move-result-object v3

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    .line 90
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 92
    move-result v5

    .line 95
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v3

    .line 102
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v5

    .line 106
    if-eqz v5, :cond_2

    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v5

    .line 112
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 113
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_1

    .line 124
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 128
    const-string/jumbo v3, "systemui"

    .line 130
    iget-object v4, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 133
    new-instance v5, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;

    .line 135
    invoke-direct {v5, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 137
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 143
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->_showFooterDot:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 146
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 148
    const-string/jumbo v4, "systemui"

    .line 150
    const-string/jumbo v5, "task_manager_show_footer_dot"

    .line 153
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    const/4 v3, 0x0

    .line 159
    invoke-static {v4, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 160
    move-result v3

    .line 163
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    move-result-object v3

    .line 167
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->deviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 171
    const-string/jumbo v3, "systemui"

    .line 173
    const-string/jumbo v4, "show_stop_button_for_user_allowlisted_apps"

    .line 176
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 182
    move-result v2

    .line 185
    iput-boolean v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->showStopBtnForUserAllowlistedApps:Z

    .line 186
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 188
    invoke-virtual {v2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 190
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 193
    new-instance v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$3;

    .line 195
    invoke-direct {v4, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$init$1$3;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 197
    new-instance v5, Landroid/content/IntentFilter;

    .line 200
    const-string v2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    .line 202
    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 207
    const/4 v7, 0x0

    .line 209
    const/4 v8, 0x4

    .line 210
    const/4 v9, 0x0

    .line 211
    const/16 v10, 0x28

    .line 212
    invoke-static/range {v3 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 214
    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->initialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    monitor-exit v0

    .line 219
    return-void

    .line 220
    :catchall_0
    move-exception p0

    .line 221
    monitor-exit v0

    .line 222
    throw p0
    .line 223
.end method

.method public final logEvent(ZLjava/lang/String;IJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 2
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v6

    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    :goto_0
    move v5, p1

    .line 18
    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;

    .line 19
    move-object v1, p1

    .line 21
    move-object v2, p0

    .line 22
    move-object v3, p2

    .line 23
    move v4, p3

    .line 24
    move-wide v8, p4

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/qs/FgsManagerControllerImpl$logEvent$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/lang/String;IIJJ)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 29
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-void
    .line 34
.end method

.method public final showDialog(Lcom/android/systemui/animation/Expandable;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 5
    if-nez v1, :cond_3

    .line 7
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 9
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    .line 11
    const v3, 0x7f140006    # @style/AlertDialog.Theme.DayNight

    .line 13
    const/4 v8, 0x1

    .line 16
    invoke-direct {v1, v3, v8, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(IZLandroid/content/Context;)V

    .line 17
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    .line 24
    const v4, 0x7f0d00ba    # @layout/fgs_manager_controller 'res/layout/fgs_manager_controller.xml'

    .line 26
    const/4 v9, 0x0

    .line 29
    invoke-static {v3, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    move-result-object v3

    .line 33
    const v4, 0x7f0a035b    # @id/fgs_dialog_title

    .line 34
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v4

    .line 40
    check-cast v4, Landroid/widget/TextView;

    .line 41
    const v5, 0x7f13041c    # @string/fgs_manager_dialog_title 'Active apps'

    .line 43
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 46
    const v4, 0x7f0a0359    # @id/fgs_dialog_know

    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v4

    .line 55
    move-object v10, v4

    .line 56
    check-cast v10, Landroid/widget/TextView;

    .line 57
    const v4, 0x7f1308d6    # @string/phone_locked_foget_password_ok 'Got it'

    .line 59
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(I)V

    .line 62
    const v4, 0x7f0a035a    # @id/fgs_dialog_recycler

    .line 65
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v4

    .line 71
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 74
    invoke-direct {v5, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 76
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    .line 82
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v2

    .line 90
    const v4, 0x7f070345    # @dimen/fgs_manager_list_top_spacing '12.0dp'

    .line 91
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 94
    move-result v5

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    move-object v2, v1

    .line 101
    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 102
    iput-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 107
    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 113
    move-result-object v9

    .line 116
    :cond_0
    if-nez v9, :cond_1

    .line 117
    goto :goto_0

    .line 119
    :cond_1
    const v2, 0x7f140023    # @style/Animation.fgsLaunchAnimation

    .line 120
    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 123
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 125
    move-result-object v2

    .line 128
    if-eqz v2, :cond_2

    .line 129
    const v3, 0x7f080c5f    # @drawable/fgs_dialog_background 'res/drawable/fgs_dialog_background.xml'

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 134
    :cond_2
    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$1;

    .line 137
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$1;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 139
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$2;

    .line 145
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 153
    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;

    .line 155
    invoke-direct {v3, p1, p0, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;-><init>(Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 157
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateAppItemsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_3
    monitor-exit v0

    .line 166
    return-void

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0

    .line 169
    throw p0
    .line 170
.end method

.method public final updateAppItemsLocked(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;

    .line 8
    const/4 v0, 0x1

    .line 10
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;-><init>(ILjava/lang/Object;)V

    .line 11
    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningTaskIdentifiers:Ljava/util/Map;

    .line 18
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 22
    move-result v3

    .line 25
    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 26
    move-result v3

    .line 29
    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 30
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 35
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 58
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;

    .line 63
    iget-wide v5, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$StartTimeAndIdentifiers;->startTime:J

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    move-result-object v3

    .line 70
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->currentProfileIds:Ljava/util/Set;

    .line 75
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 77
    move-result-object v0

    .line 80
    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;

    .line 81
    invoke-direct {v3, p0, v2, v0, p1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItemsLocked$2;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Ljava/util/Map;Ljava/util/Set;Z)V

    .line 83
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
    .line 89
.end method

.method public final updateNumberOfVisibleRunningPackagesLocked()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumVisiblePackagesLocked()I

    .line 2
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lastNumberOfVisiblePackages:I

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    iput v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lastNumberOfVisiblePackages:I

    .line 10
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->newChangesSinceDialogWasDismissed:Z

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onNumberOfPackagesChangedListeners:Ljava/util/Set;

    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$foregroundServicesCount$1$listener$1;

    .line 31
    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;

    .line 33
    invoke-direct {v3, v2, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateNumberOfVisibleRunningPackagesLocked$1$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$foregroundServicesCount$1$listener$1;I)V

    .line 35
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 38
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    return-void
    .line 44
.end method

.method public final visibleButtonsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->getNumVisibleButtonsLocked()I

    .line 5
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    .line 12
    throw p0
    .line 13
.end method
