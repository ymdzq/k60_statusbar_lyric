.class public final Lcom/android/systemui/screenrecord/RecordingController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mInteractiveBroadcastOption:Landroid/os/Bundle;

.field public mIsRecording:Z

.field public mIsStarting:Z

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field protected final mStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field public mStopIntent:Landroid/app/PendingIntent;

.field final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Context;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserContextProvider;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingController;->mCountDownTimer:Lcom/android/systemui/screenrecord/RecordingController$3;

    .line 6
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance p3, Lcom/android/systemui/screenrecord/RecordingController$1;

    .line 15
    invoke-direct {p3, p0}, Lcom/android/systemui/screenrecord/RecordingController$1;-><init>(Lcom/android/systemui/screenrecord/RecordingController;)V

    .line 17
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 20
    new-instance p3, Lcom/android/systemui/screenrecord/RecordingController$2;

    .line 22
    invoke-direct {p3, p0}, Lcom/android/systemui/screenrecord/RecordingController$2;-><init>(Lcom/android/systemui/screenrecord/RecordingController;)V

    .line 24
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 29
    iput-object p4, p0, Lcom/android/systemui/screenrecord/RecordingController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 33
    iput-object p5, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 35
    iput-object p7, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 39
    move-result-object p1

    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    .line 44
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 47
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mInteractiveBroadcastOption:Landroid/os/Bundle;

    .line 51
    return-void
    .line 53
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final stopRecording()V
    .locals 3

    .line 1
    const-string v0, "RecordingController"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStopIntent:Landroid/app/PendingIntent;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingController;->mInteractiveBroadcastOption:Landroid/os/Bundle;

    .line 8
    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Stop intent was null"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "Error stopping: "

    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :goto_1
    return-void
    .line 46
.end method

.method public final declared-synchronized updateState(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 11
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 22
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingController;->mIsRecording:Z

    .line 25
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingController;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;

    .line 43
    if-eqz p1, :cond_1

    .line 45
    invoke-interface {v1}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onRecordingStart()V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;->onRecordingEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    .line 58
    throw p1
    .line 59
.end method
