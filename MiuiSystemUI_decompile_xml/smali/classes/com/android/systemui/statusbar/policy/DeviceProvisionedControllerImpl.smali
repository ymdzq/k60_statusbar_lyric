.class public final Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundExecutor:Landroid/os/HandlerExecutor;

.field public final buildInfo:Lcom/android/systemui/util/wrapper/BuildInfo;

.field public final deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final deviceProvisionedUri:Landroid/net/Uri;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final frpActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final frpActiveUri:Landroid/net/Uri;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final initted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final listeners:Landroid/util/ArraySet;

.field public final lock:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final observer:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userChangedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;

.field public final userSetupComplete:Landroid/util/SparseBooleanArray;

.field public final userSetupUri:Landroid/net/Uri;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/wrapper/BuildInfo;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->buildInfo:Lcom/android/systemui/util/wrapper/BuildInfo;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 15
    const-string p1, "device_provisioned"

    .line 17
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisionedUri:Landroid/net/Uri;

    .line 23
    const-string/jumbo p1, "secure_frp_mode"

    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->frpActiveUri:Landroid/net/Uri;

    .line 32
    const-string/jumbo p1, "user_setup_complete"

    .line 34
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupUri:Landroid/net/Uri;

    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    const/4 p2, 0x0

    .line 45
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->frpActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 58
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 63
    new-instance p4, Landroid/util/ArraySet;

    .line 65
    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    .line 67
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->listeners:Landroid/util/ArraySet;

    .line 70
    new-instance p4, Ljava/lang/Object;

    .line 72
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 77
    new-instance p4, Landroid/os/HandlerExecutor;

    .line 79
    invoke-direct {p4, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 81
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->backgroundExecutor:Landroid/os/HandlerExecutor;

    .line 84
    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    invoke-direct {p4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 88
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->initted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance p4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;

    .line 93
    invoke-direct {p4, p0, p6}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;Landroid/os/Handler;)V

    .line 95
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->observer:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;

    .line 98
    new-instance p4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;

    .line 100
    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V

    .line 102
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userChangedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;

    .line 105
    check-cast p3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 107
    invoke-virtual {p3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 109
    move-result p0

    .line 112
    invoke-virtual {p1, p0, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 113
    return-void
    .line 116
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->listeners:Landroid/util/ArraySet;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
    .line 16
.end method

.method public final dispatchChange(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->listeners:Landroid/util/ArraySet;

    .line 7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$dispatchChange$1;

    .line 15
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$dispatchChange$1;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    .line 17
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
    .line 26
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "Listeners: "

    .line 2
    const-string v0, "User setup complete: "

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    move-result v1

    .line 11
    const-string v2, "Device provisioned: "

    .line 12
    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->frpActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    move-result v1

    .line 22
    const-string v2, "Factory Reset Protection active: "

    .line 23
    invoke-static {v2, v1, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 25
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 28
    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->listeners:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 61
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v1

    .line 68
    throw p0
    .line 69
.end method

.method public final init()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->initted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 13
    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 15
    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->updateValues(IZZ)V

    .line 19
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userChangedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$userChangedCallback$1;

    .line 22
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->backgroundExecutor:Landroid/os/HandlerExecutor;

    .line 24
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 26
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 28
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 30
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 33
    invoke-interface {v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 35
    move-result v3

    .line 38
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisionedUri:Landroid/net/Uri;

    .line 39
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->observer:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$observer$1;

    .line 41
    invoke-interface {v2, v4, v1, v5, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    invoke-interface {v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 46
    move-result v3

    .line 49
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->frpActiveUri:Landroid/net/Uri;

    .line 50
    invoke-interface {v2, v4, v1, v5, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 52
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupUri:Landroid/net/Uri;

    .line 57
    invoke-interface {v2, p0, v1, v5, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 59
    return-void
    .line 62
.end method

.method public final isCurrentUserSetup()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 2
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final isDeviceProvisioned()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final isUserSetup(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 5
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    monitor-exit v0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-gez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 15
    const-string/jumbo v2, "user_setup_complete"

    .line 17
    invoke-interface {v1, v0, p1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 27
    monitor-enter v1

    .line 29
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 30
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1

    .line 38
    throw p0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 40
    monitor-enter v1

    .line 42
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 43
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 45
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    monitor-exit v1

    .line 49
    :goto_0
    return v0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    monitor-exit v1

    .line 52
    throw p0

    .line 53
    :catchall_2
    move-exception p0

    .line 54
    monitor-exit v0

    .line 55
    throw p0
    .line 56
.end method

.method public final onDeviceProvisionedChanged()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onDeviceProvisionedChanged$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onDeviceProvisionedChanged$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dispatchChange(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onFrpActiveChanged()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onFrpActiveChanged$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onFrpActiveChanged$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dispatchChange(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onUserSetupChanged()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onUserSetupChanged$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onUserSetupChanged$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dispatchChange(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final onUserSwitched()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onUserSwitched$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$onUserSwitched$1;

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->dispatchChange(Lkotlin/jvm/functions/Function1;)V

    .line 4
    return-void
    .line 7
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->listeners:Landroid/util/ArraySet;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
    .line 16
.end method

.method public final updateValues(IZZ)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 8
    const-string v3, "device_provisioned"

    .line 10
    invoke-interface {v2, v3, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    move v2, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v2, v1

    .line 20
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    :cond_1
    if-eqz p3, :cond_3

    .line 24
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->frpActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 28
    const-string/jumbo v2, "secure_frp_mode"

    .line 30
    invoke-interface {p3, v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    .line 33
    move-result p3

    .line 36
    if-eqz p3, :cond_2

    .line 37
    move p3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move p3, v1

    .line 41
    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 45
    monitor-enter p2

    .line 47
    const/4 p3, -0x1

    .line 48
    if-ne p1, p3, :cond_5

    .line 49
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 51
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 53
    move-result p1

    .line 56
    move p3, v1

    .line 57
    :goto_2
    if-ge p3, p1, :cond_7

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 60
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 62
    move-result v2

    .line 65
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 66
    const-string/jumbo v4, "user_setup_complete"

    .line 68
    invoke-interface {v3, v1, v2, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 71
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    move v3, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    move v3, v1

    .line 79
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 80
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 82
    add-int/lit8 p3, p3, 0x1

    .line 85
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_5

    .line 89
    :cond_5
    const/4 p3, -0x2

    .line 90
    if-eq p1, p3, :cond_7

    .line 91
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 93
    const-string/jumbo v2, "user_setup_complete"

    .line 95
    invoke-interface {p3, v1, p1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 98
    move-result p3

    .line 101
    if-eqz p3, :cond_6

    .line 102
    goto :goto_4

    .line 104
    :cond_6
    move v0, v1

    .line 105
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->userSetupComplete:Landroid/util/SparseBooleanArray;

    .line 106
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    goto :goto_6

    .line 111
    :goto_5
    monitor-exit p2

    .line 112
    throw p0

    .line 113
    :cond_7
    :goto_6
    monitor-exit p2

    .line 114
    return-void
    .line 115
.end method
