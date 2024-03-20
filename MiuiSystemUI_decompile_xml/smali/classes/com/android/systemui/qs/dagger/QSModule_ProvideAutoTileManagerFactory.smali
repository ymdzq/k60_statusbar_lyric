.class public abstract Lcom/android/systemui/qs/dagger/QSModule_ProvideAutoTileManagerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideAutoTileManager(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;Lcom/android/systemui/qs/ReduceBrightColorsController;Lcom/android/systemui/statusbar/policy/WalletController;Lcom/android/systemui/statusbar/policy/SafetyController;Z)Lcom/android/systemui/statusbar/phone/AutoTileManager;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 2
    move-object v0, v12

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object/from16 v4, p3

    .line 8
    move-object/from16 v5, p4

    .line 10
    move-object/from16 v6, p5

    .line 12
    move-object/from16 v7, p6

    .line 14
    move-object/from16 v8, p7

    .line 16
    move-object/from16 v9, p8

    .line 18
    move-object/from16 v10, p9

    .line 20
    move/from16 v11, p10

    .line 22
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/AutoAddTracker$Builder;Lcom/android/systemui/qs/QSHost;Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;Lcom/android/systemui/qs/ReduceBrightColorsController;Lcom/android/systemui/statusbar/policy/WalletController;Lcom/android/systemui/statusbar/policy/SafetyController;Z)V

    .line 24
    iget-boolean v0, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mInitialized:Z

    .line 27
    const-string v1, "AutoTileManager"

    .line 29
    if-eqz v0, :cond_0

    .line 31
    const-string v0, "Trying to re-initialize"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto/16 :goto_2

    .line 38
    :cond_0
    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 40
    iget-object v2, v0, Lcom/android/systemui/qs/AutoAddTracker;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 42
    const-string v3, "AutoAddTracker"

    .line 44
    invoke-static {v2, v3, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/qs/AutoAddTracker;->loadTiles()V

    .line 49
    iget-object v2, v0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 52
    move-object v3, v2

    .line 54
    check-cast v3, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    const-string v3, "qs_auto_tiles"

    .line 60
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    move-result-object v3

    .line 65
    const/4 v4, 0x0

    .line 66
    iget-object v5, v0, Lcom/android/systemui/qs/AutoAddTracker;->contentObserver:Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;

    .line 67
    const/4 v6, -0x1

    .line 69
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 70
    iget-object v2, v0, Lcom/android/systemui/qs/AutoAddTracker;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 73
    iget-object v3, v0, Lcom/android/systemui/qs/AutoAddTracker;->restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    .line 75
    sget-object v5, Lcom/android/systemui/qs/AutoAddTracker;->FILTER:Landroid/content/IntentFilter;

    .line 77
    iget-object v6, v0, Lcom/android/systemui/qs/AutoAddTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 79
    iget v0, v0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 81
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 83
    move-result-object v0

    .line 86
    const/4 v7, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    const/16 v9, 0x30

    .line 89
    move-object p0, v2

    .line 91
    move-object p1, v3

    .line 92
    move-object p2, v5

    .line 93
    move-object/from16 p3, v6

    .line 94
    move-object/from16 p4, v0

    .line 96
    move/from16 p5, v7

    .line 98
    move-object/from16 p6, v8

    .line 100
    move/from16 p7, v9

    .line 102
    invoke-static/range {p0 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 104
    const/4 v0, 0x1

    .line 107
    :try_start_0
    iget-object v2, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 113
    const v3, 0x7f030063    # @array/config_quickSettingsAutoAdd

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 117
    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    array-length v3, v2

    .line 121
    move v5, v4

    .line 122
    :goto_0
    if-ge v5, v3, :cond_2

    .line 123
    aget-object v6, v2, v5

    .line 125
    const-string v7, ":"

    .line 127
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 129
    move-result-object v7

    .line 132
    array-length v8, v7

    .line 133
    const/4 v9, 0x2

    .line 134
    if-ne v8, v9, :cond_1

    .line 135
    aget-object v6, v7, v4

    .line 137
    aget-object v7, v7, v0

    .line 139
    new-instance v8, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;

    .line 141
    iget-object v9, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 143
    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 145
    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mCurrentUser:Landroid/os/UserHandle;

    .line 147
    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    .line 149
    move-result v11

    .line 152
    move-object p0, v8

    .line 153
    move-object p1, v12

    .line 154
    move-object p2, v9

    .line 155
    move-object/from16 p3, v10

    .line 156
    move-object/from16 p4, v6

    .line 158
    move/from16 p5, v11

    .line 160
    move-object/from16 p6, v7

    .line 162
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoAddSettingList:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    goto :goto_1

    .line 172
    :cond_1
    const-string v7, "Malformed item in array: "

    .line 173
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v6

    .line 178
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 182
    goto :goto_0

    .line 184
    :catch_0
    const-string v2, "Missing config resource"

    .line 185
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->startControllersAndSettingsListeners()V

    .line 190
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mInitialized:Z

    .line 193
    :goto_2
    return-object v12
    .line 195
.end method
