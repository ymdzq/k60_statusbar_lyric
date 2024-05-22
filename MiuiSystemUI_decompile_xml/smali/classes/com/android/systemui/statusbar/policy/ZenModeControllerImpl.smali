.class public final Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mCallbacksLock:Ljava/lang/Object;

.field public mConfig:Landroid/service/notification/ZenModeConfig;

.field public final mConfigSetting:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

.field public mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

.field public final mContext:Landroid/content/Context;

.field public final mModeSetting:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

.field public final mNoMan:Landroid/app/NotificationManager;

.field public final mReceiver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

.field public mRegistered:Z

.field public final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public mUserId:I

.field public volatile mZenMode:I

.field public mZenUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/settings/UserTracker;)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move-object v8, p1

    .line 3
    move-object/from16 v9, p2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 21
    new-instance v10, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    .line 23
    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    .line 25
    iput-object v10, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

    .line 30
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    .line 32
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$4;

    .line 35
    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 37
    move-object/from16 v0, p3

    .line 39
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 41
    new-instance v11, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    .line 43
    const-string/jumbo v4, "zen_mode"

    .line 45
    move-object/from16 v12, p6

    .line 48
    check-cast v12, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 52
    move-result v5

    .line 55
    const/4 v6, 0x0

    .line 56
    move-object v0, v11

    .line 57
    move-object v1, p0

    .line 58
    move-object/from16 v2, p5

    .line 59
    move-object/from16 v3, p2

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    .line 63
    iput-object v11, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    .line 66
    new-instance v13, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    .line 68
    const-string/jumbo v4, "zen_mode_config_etag"

    .line 70
    invoke-virtual {v12}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 73
    move-result v5

    .line 76
    const/4 v6, 0x1

    .line 77
    move-object v0, v13

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    .line 79
    iput-object v13, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    .line 82
    const-string v0, "notification"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 89
    check-cast v0, Landroid/app/NotificationManager;

    .line 90
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 92
    const/4 v0, 0x1

    .line 94
    invoke-virtual {v11, v0}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 95
    invoke-virtual {v11}, Lcom/android/systemui/qs/SettingObserver;->getValue()I

    .line 98
    move-result v1

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenMode(I)V

    .line 102
    invoke-virtual {v13, v0}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenModeConfig()V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateConsolidatedNotificationPolicy()V

    .line 111
    const-string v0, "alarm"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    check-cast v0, Landroid/app/AlarmManager;

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 122
    invoke-direct {v0, p0, v9}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    .line 124
    iput-object v0, v7, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 127
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 129
    const-class v0, Landroid/os/UserManager;

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    move-result-object v0

    .line 137
    check-cast v0, Landroid/os/UserManager;

    .line 138
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 140
    invoke-direct {v0, v9}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 142
    invoke-virtual {v12, v10, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 145
    const-string v0, "ZenModeControllerImpl"

    .line 148
    move-object/from16 v1, p4

    .line 150
    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 152
    return-void
    .line 155
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
    .line 16
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "ZenModeControllerImpl:"

    .line 2
    const-string v0, "  mZenMode="

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 10
    const-string v1, "  mConfig="

    .line 12
    invoke-static {p2, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    const-string v0, "  mConsolidatedNotificationPolicy="

    .line 32
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    const-string v0, "  mZenUpdateTime="

    .line 51
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v0, "MM-dd HH:mm:ss"

    .line 56
    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenUpdateTime:J

    .line 58
    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    return-void
    .line 74
.end method

.method public fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable;I)V

    .line 10
    invoke-static {p0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 13
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
    .line 20
.end method

.method public final isZenAvailable()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 4
    const-string v1, "device_provisioned"

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->mResolver:Landroid/content/ContentResolver;

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->this$0:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 23
    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 25
    const-string/jumbo v3, "user_setup_complete"

    .line 27
    invoke-static {v0, v3, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    move p0, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move p0, v2

    .line 38
    :goto_1
    if-eqz p0, :cond_2

    .line 39
    move v2, v1

    .line 41
    :cond_2
    return v2
    .line 42
.end method

.method public final isZenModeOn()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
    .line 16
.end method

.method public final setZen(ILjava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0, p1, p2}, Landroid/provider/MiuiSettings$SoundMode;->setZenModeOn(Landroid/content/Context;ZLjava/lang/String;)V

    .line 9
    return-void
    .line 12
.end method

.method public updateConsolidatedNotificationPolicy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 18
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 21
    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;

    .line 23
    const/4 v3, 0x2

    .line 25
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable;I)V

    .line 26
    invoke-static {p0, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 29
    monitor-exit v1

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_0
    :goto_0
    return-void
    .line 37
.end method

.method public updateZenMode(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenUpdateTime:J

    .line 8
    return-void
    .line 10
.end method

.method public updateZenModeConfig()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 17
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    move-object v1, v2

    .line 25
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v3

    .line 31
    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenUpdateTime:J

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    .line 34
    if-eqz v0, :cond_2

    .line 37
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 39
    :cond_2
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 47
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 50
    new-instance v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;

    .line 52
    const/4 v4, 0x1

    .line 54
    invoke-direct {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable;I)V

    .line 55
    invoke-static {v1, v3}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 58
    monitor-exit v0

    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 66
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    .line 68
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 72
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 77
    if-nez v1, :cond_4

    .line 78
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConsolidatedNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacksLock:Ljava/lang/Object;

    .line 82
    monitor-enter v1

    .line 84
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 85
    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;

    .line 87
    const/4 v3, 0x2

    .line 89
    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcelable;I)V

    .line 90
    invoke-static {p0, v2}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 93
    monitor-exit v1

    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    throw p0

    .line 100
    :cond_4
    :goto_2
    return-void
    .line 101
.end method
