.class public final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController;
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public volatile mHasTetherableWifiRegexs:Z

.field public mHotspotState:I

.field public volatile mIsTetheringSupported:Z

.field public final mIsTetheringSupportedConfig:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public volatile mNumConnectedDevices:I

.field public final mTetheringCallback:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

.field public final mTetheringManager:Landroid/net/TetheringManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWaitingForTerminalState:Z

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static -$$Nest$mfireHotspotAvailabilityChanged(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    .line 29
    move-result v2

    .line 32
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotAvailabilityChanged(Z)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
    .line 40
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "HotspotController"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringCallback:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 26
    const-class p2, Landroid/net/TetheringManager;

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object p2

    .line 33
    check-cast p2, Landroid/net/TetheringManager;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 36
    const-string/jumbo v1, "wifi"

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 45
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object p1

    .line 54
    const p3, 0x7f050061    # @bool/config_show_wifi_tethering 'true'

    .line 55
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 58
    move-result p1

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupportedConfig:Z

    .line 62
    if-eqz p1, :cond_0

    .line 64
    new-instance p1, Landroid/os/HandlerExecutor;

    .line 66
    invoke-direct {p1, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 68
    invoke-virtual {p2, p1, v0}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 71
    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 74
    const-string p1, "HotspotControllerImpl"

    .line 76
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 78
    return-void
    .line 81
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 2
    const-string v0, "addCallback "

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 6
    monitor-enter v1

    .line 8
    if-eqz p1, :cond_4

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    goto :goto_1

    .line 19
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 20
    if-eqz v2, :cond_1

    .line 22
    const-string v2, "HotspotController"

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v0

    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne v0, v2, :cond_2

    .line 57
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 61
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 63
    invoke-direct {v0, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 65
    invoke-virtual {p1, v0, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 68
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 72
    new-instance v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$$ExternalSyntheticLambda0;

    .line 74
    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_3
    :goto_0
    monitor-exit v1

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    monitor-exit v1

    .line 84
    :goto_2
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
    .line 88
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "HotspotController state:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string p2, "  available="

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotSupported()Z

    .line 12
    move-result p2

    .line 15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 16
    const-string p2, "  mHotspotState="

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 24
    packed-switch p2, :pswitch_data_0

    .line 26
    const/4 p2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    const-string p2, "FAILED"

    .line 31
    goto :goto_0

    .line 33
    :pswitch_1
    const-string p2, "ENABLED"

    .line 34
    goto :goto_0

    .line 36
    :pswitch_2
    const-string p2, "ENABLING"

    .line 37
    goto :goto_0

    .line 39
    :pswitch_3
    const-string p2, "DISABLED"

    .line 40
    goto :goto_0

    .line 42
    :pswitch_4
    const-string p2, "DISABLING"

    .line 43
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    const-string p2, "  mNumConnectedDevices="

    .line 48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    iget p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    const-string p2, "  mWaitingForTerminalState="

    .line 58
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 63
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 65
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 70
.end method

.method public final fireHotspotChangedCallback()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    .line 29
    move-result v2

    .line 32
    iget v3, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 33
    invoke-interface {v1, v3, v2}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(IZ)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
    .line 42
.end method

.method public final isHotspotEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 2
    const/16 v0, 0xd

    .line 4
    if-ne p0, v0, :cond_0

    .line 6
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
    .line 11
.end method

.method public final isHotspotSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupportedConfig:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mIsTetheringSupported:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHasTetherableWifiRegexs:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 16
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 20
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 24
    move-result p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method public final maybeResetSoftApState()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 7
    const/16 v1, 0xb

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    const/16 v1, 0xd

    .line 14
    if-eq v0, v1, :cond_2

    .line 16
    const/16 v1, 0xe

    .line 18
    if-eq v0, v1, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 23
    invoke-virtual {v0, v2}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 25
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 28
    :goto_0
    return-void
    .line 30
.end method

.method public final onConnectedClientsChanged(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    move-result p1

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    .line 8
    return-void
    .line 11
.end method

.method public final onStateChanged(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->maybeResetSoftApState()V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    .line 7
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback()V

    .line 16
    return-void
    .line 19
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const-string v0, "HotspotController"

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v2, "removeCallback "

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 31
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 47
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 51
    :cond_2
    monitor-exit v0

    .line 54
    :goto_0
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
    .line 58
.end method

.method public final setHotspotEnabled(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 2
    const-string v1, "HotspotController"

    .line 4
    if-eqz v0, :cond_1

    .line 6
    sget-boolean p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 8
    if-eqz p0, :cond_0

    .line 10
    const-string p0, "Ignoring setHotspotEnabled; waiting for terminal state."

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_3

    .line 19
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForTerminalState:Z

    .line 22
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    .line 24
    if-eqz p1, :cond_2

    .line 26
    const-string p1, "Starting tethering"

    .line 28
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 33
    new-instance v1, Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 35
    invoke-direct {v1, v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->setShouldShowEntitlementUi(Z)Landroid/net/TetheringManager$TetheringRequest$Builder;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    .line 44
    move-result-object v0

    .line 47
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 48
    new-instance v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;

    .line 50
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    .line 52
    invoke-virtual {p1, v0, v1, v2}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mTetheringManager:Landroid/net/TetheringManager;

    .line 59
    invoke-virtual {p0, v0}, Landroid/net/TetheringManager;->stopTethering(I)V

    .line 61
    :goto_0
    return-void
    .line 64
.end method
