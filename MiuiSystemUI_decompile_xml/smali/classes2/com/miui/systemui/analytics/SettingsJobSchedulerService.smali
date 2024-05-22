.class public Lcom/miui/systemui/analytics/SettingsJobSchedulerService;
.super Landroid/app/job/JobService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-class v0, Landroid/app/job/JobScheduler;

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 8
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x493e2

    .line 14
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v4

    .line 29
    if-eqz v4, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Landroid/app/job/JobInfo;

    .line 36
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    .line 38
    move-result v4

    .line 41
    if-ne v4, v1, :cond_1

    .line 42
    move v3, v2

    .line 44
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 45
    return-void

    .line 47
    :cond_3
    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 54
    new-instance v3, Landroid/content/ComponentName;

    .line 56
    const-class v4, Lcom/miui/systemui/analytics/SettingsJobSchedulerService;

    .line 58
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    .line 63
    invoke-direct {p0, v1, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 65
    const-wide/32 v3, 0x5265c00

    .line 68
    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 71
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 74
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 77
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 84
    move-result p0

    .line 87
    if-lez p0, :cond_4

    .line 88
    const-string p0, "SettingsJobSchedulerService"

    .line 90
    const-string v0, "SettingsJobSchedulerService schedule success"

    .line 92
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :cond_4
    :goto_1
    return-void
    .line 102
.end method

.method public static trackSettings()V
    .locals 43

    .line 1
    const-class v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    new-instance v2, Lcom/miui/systemui/events/NotchStatusEvent;

    .line 17
    sget-object v3, Lcom/miui/systemui/events/StatusBarEvent;->Companion:Lcom/miui/systemui/events/StatusBarEvent$Companion;

    .line 19
    iget-object v4, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v3, v4}, Lcom/miui/systemui/events/StatusBarEvent$Companion;->getForceBlack(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-direct {v2, v3}, Lcom/miui/systemui/events/NotchStatusEvent;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 30
    invoke-interface {v1, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 32
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 39
    new-instance v13, Lcom/miui/systemui/events/SettingsStatusEvent;

    .line 41
    iget-object v2, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 43
    const/4 v12, 0x0

    .line 45
    invoke-static {v2, v12}, Lcom/miui/systemui/analytics/SystemUIEvent$Companion;->getAppsCount(Landroid/content/Context;Z)I

    .line 46
    move-result v3

    .line 49
    const/4 v11, 0x1

    .line 50
    invoke-static {v2, v11}, Lcom/miui/systemui/analytics/SystemUIEvent$Companion;->getAppsCount(Landroid/content/Context;Z)I

    .line 51
    move-result v4

    .line 54
    sget-object v5, Lcom/miui/systemui/events/SettingsEvent;->Companion:Lcom/miui/systemui/events/SettingsEvent$Companion;

    .line 55
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getShowNotificationIconValue(Landroid/content/Context;)I

    .line 57
    move-result v6

    .line 60
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getShowNetworkSpeedValue(Landroid/content/Context;)I

    .line 61
    move-result v7

    .line 64
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getShowCarrierUnderKeyguardValue(Landroid/content/Context;)I

    .line 65
    move-result v8

    .line 68
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getCustomCarrierValue(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    move-result-object v9

    .line 72
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getBatteryIndicator(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    move-result-object v10

    .line 76
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getToggleCollapseAfterClickedValue(Landroid/content/Context;)I

    .line 77
    move-result v21

    .line 80
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getExpandableUnderKeyguardValue(Landroid/content/Context;)I

    .line 81
    move-result v22

    .line 84
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getNotificationShortcut(Landroid/content/Context;)Ljava/lang/String;

    .line 85
    move-result-object v23

    .line 88
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 89
    move-result v14

    .line 92
    const-string v24, "miui"

    .line 93
    const-string v25, "google"

    .line 95
    if-eqz v14, :cond_1

    .line 97
    move-object/from16 v26, v24

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    move-object/from16 v26, v25

    .line 102
    :goto_0
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getBucket(Landroid/content/Context;)I

    .line 104
    move-result v14

    .line 107
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getUserFold(Landroid/content/Context;)I

    .line 108
    move-result v15

    .line 111
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getUserAggregate(Landroid/content/Context;)I

    .line 112
    move-result v16

    .line 115
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getUseControlPanel(Landroid/content/Context;)I

    .line 116
    move-result v17

    .line 119
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getExpandableUnderLockscreen(Landroid/content/Context;)I

    .line 120
    move-result v18

    .line 123
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getExpandSelectedInfo(Landroid/content/Context;)I

    .line 124
    move-result v19

    .line 127
    invoke-virtual {v5, v2}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getWordlessMode(Landroid/content/Context;)I

    .line 128
    move-result v20

    .line 131
    move-object v2, v13

    .line 132
    move v5, v6

    .line 133
    move v6, v7

    .line 134
    move v7, v8

    .line 135
    move-object v8, v9

    .line 136
    move-object v9, v10

    .line 137
    move/from16 v10, v21

    .line 138
    move/from16 v11, v22

    .line 140
    move-object/from16 v12, v23

    .line 142
    move-object/from16 v21, v0

    .line 144
    move-object v0, v13

    .line 146
    move-object/from16 v13, v26

    .line 147
    invoke-direct/range {v2 .. v20}, Lcom/miui/systemui/events/SettingsStatusEvent;-><init>(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIIIII)V

    .line 149
    iget-object v1, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 152
    invoke-interface {v1, v0}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 154
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    move-result-object v0

    .line 160
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    new-instance v12, Lcom/miui/systemui/events/PhoneStatusEvent;

    .line 166
    sget-object v1, Lcom/miui/systemui/events/PhoneEvent;->Companion:Lcom/miui/systemui/events/PhoneEvent$Companion;

    .line 168
    invoke-virtual {v1}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsDualCardValue()I

    .line 170
    move-result v2

    .line 173
    const-class v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 174
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 176
    move-result-object v3

    .line 179
    check-cast v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 180
    check-cast v3, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    .line 182
    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 184
    if-eqz v3, :cond_2

    .line 186
    const/4 v3, 0x1

    .line 188
    goto :goto_1

    .line 189
    :cond_2
    const/4 v3, 0x0

    .line 190
    :goto_1
    iget-object v4, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 191
    invoke-virtual {v1, v4}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsMuteTurnedOnValue(Landroid/content/Context;)I

    .line 193
    move-result v5

    .line 196
    invoke-virtual {v1, v4}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsWifiTurnedOnValue(Landroid/content/Context;)I

    .line 197
    move-result v6

    .line 200
    const-class v7, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 201
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    move-result-object v7

    .line 206
    check-cast v7, Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 207
    check-cast v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 209
    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 211
    invoke-virtual {v1, v4}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsAutoBrightnessTurnedOnValue(Landroid/content/Context;)I

    .line 213
    move-result v8

    .line 216
    invoke-virtual {v1, v4}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsGpsTurnedOnValue(Landroid/content/Context;)I

    .line 217
    move-result v9

    .line 220
    invoke-virtual {v1, v4}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsRotationLockTurnedOnValue(Landroid/content/Context;)I

    .line 221
    move-result v10

    .line 224
    invoke-virtual {v1, v4}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsFullScreen(Landroid/content/Context;)I

    .line 225
    move-result v11

    .line 228
    invoke-virtual {v1}, Lcom/miui/systemui/events/PhoneEvent$Companion;->getIsNotchScreen()I

    .line 229
    move-result v13

    .line 232
    move-object v1, v12

    .line 233
    move v4, v5

    .line 234
    move v5, v6

    .line 235
    move v6, v7

    .line 236
    move v7, v8

    .line 237
    move v8, v9

    .line 238
    move v9, v10

    .line 239
    move v10, v11

    .line 240
    move v11, v13

    .line 241
    invoke-direct/range {v1 .. v11}, Lcom/miui/systemui/events/PhoneStatusEvent;-><init>(IIIIIIIIII)V

    .line 242
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 245
    invoke-interface {v0, v12}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 247
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 250
    move-result-object v0

    .line 253
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 254
    iget-object v1, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 258
    move-result-object v1

    .line 261
    const-string/jumbo v2, "sysui_qs_tiles"

    .line 262
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 265
    move-result v3

    .line 268
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 273
    move-result v2

    .line 276
    if-nez v2, :cond_3

    .line 277
    const-string v2, ","

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 281
    move-result-object v1

    .line 284
    if-eqz v1, :cond_3

    .line 285
    array-length v12, v1

    .line 287
    goto :goto_2

    .line 288
    :cond_3
    const/4 v12, 0x0

    .line 289
    :goto_2
    new-instance v1, Lcom/miui/systemui/events/QSTileStateEvent;

    .line 290
    invoke-direct {v1, v12}, Lcom/miui/systemui/events/QSTileStateEvent;-><init>(I)V

    .line 292
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 295
    invoke-interface {v0, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 297
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 300
    move-result-object v0

    .line 303
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 304
    iget-object v1, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 306
    const-string/jumbo v2, "window"

    .line 308
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 311
    move-result-object v2

    .line 314
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 315
    move-result-object v2

    .line 318
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 319
    move-result v3

    .line 322
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 323
    move-result v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_3

    .line 327
    :catch_0
    const/4 v11, 0x1

    .line 328
    :goto_3
    const/4 v2, 0x2

    .line 329
    if-eqz v11, :cond_9

    .line 330
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 332
    move-result-object v3

    .line 335
    const-string v4, "force_fsg_nav_bar"

    .line 336
    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 338
    move-result v3

    .line 341
    new-instance v4, Lcom/miui/systemui/events/FullScreenStateEvent;

    .line 342
    if-eqz v3, :cond_4

    .line 344
    const-string v3, "gesture"

    .line 346
    goto :goto_4

    .line 348
    :cond_4
    const-string v3, "nav_bar"

    .line 349
    :goto_4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 351
    move-result-object v5

    .line 354
    const-string/jumbo v6, "show_mistake_touch_toast"

    .line 355
    const/4 v7, 0x1

    .line 358
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 359
    move-result v5

    .line 362
    const-string v6, "on"

    .line 363
    const-string v8, "off"

    .line 365
    if-eqz v5, :cond_5

    .line 367
    move-object v5, v6

    .line 369
    goto :goto_5

    .line 370
    :cond_5
    move-object v5, v8

    .line 371
    :goto_5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 372
    move-result-object v9

    .line 375
    const-string/jumbo v10, "show_gesture_appswitch_feature"

    .line 376
    const/4 v11, 0x0

    .line 379
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 380
    move-result v9

    .line 383
    if-eqz v9, :cond_6

    .line 384
    move-object v9, v6

    .line 386
    goto :goto_6

    .line 387
    :cond_6
    move-object v9, v8

    .line 388
    :goto_6
    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 389
    move-result-object v1

    .line 392
    if-eqz v1, :cond_7

    .line 393
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 395
    move-result v10

    .line 398
    if-lez v10, :cond_7

    .line 399
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 401
    move-result-object v1

    .line 404
    check-cast v1, Ljava/lang/Integer;

    .line 405
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 407
    move-result v1

    .line 410
    if-ne v1, v2, :cond_7

    .line 411
    move v12, v7

    .line 413
    goto :goto_7

    .line 414
    :cond_7
    move v12, v11

    .line 415
    :goto_7
    if-eqz v12, :cond_8

    .line 416
    goto :goto_8

    .line 418
    :cond_8
    move-object v6, v8

    .line 419
    :goto_8
    invoke-direct {v4, v3, v5, v9, v6}, Lcom/miui/systemui/events/FullScreenStateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 423
    invoke-interface {v0, v4}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 425
    goto :goto_9

    .line 428
    :cond_9
    const/4 v7, 0x1

    .line 429
    const/4 v11, 0x0

    .line 430
    :goto_9
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 431
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 433
    move-result-object v0

    .line 436
    check-cast v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    sget-object v1, Lcom/miui/systemui/events/SettingsEvent;->Companion:Lcom/miui/systemui/events/SettingsEvent$Companion;

    .line 442
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 444
    invoke-virtual {v1, v3}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getUserFold(Landroid/content/Context;)I

    .line 446
    move-result v4

    .line 449
    if-lez v4, :cond_a

    .line 450
    move v12, v7

    .line 452
    goto :goto_a

    .line 453
    :cond_a
    move v12, v11

    .line 454
    :goto_a
    new-instance v4, Lcom/miui/systemui/events/NotificationSettingsStateEvent;

    .line 455
    const-string v5, "false"

    .line 457
    const-string/jumbo v6, "true"

    .line 459
    if-eqz v12, :cond_b

    .line 462
    move-object/from16 v27, v6

    .line 464
    goto :goto_b

    .line 466
    :cond_b
    move-object/from16 v27, v5

    .line 467
    :goto_b
    const-class v8, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 469
    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 471
    move-result-object v8

    .line 474
    check-cast v8, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 475
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;->showNotifFoldFooterIcon:Z

    .line 477
    if-eqz v8, :cond_c

    .line 479
    if-eqz v12, :cond_c

    .line 481
    move-object/from16 v28, v6

    .line 483
    goto :goto_c

    .line 485
    :cond_c
    move-object/from16 v28, v5

    .line 486
    :goto_c
    invoke-static {}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->showMiuiStyle()Z

    .line 488
    move-result v8

    .line 491
    if-eqz v8, :cond_d

    .line 492
    move-object/from16 v29, v24

    .line 494
    goto :goto_d

    .line 496
    :cond_d
    move-object/from16 v29, v25

    .line 497
    :goto_d
    invoke-virtual {v1, v3}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getExpandableUnderKeyguardValue(Landroid/content/Context;)I

    .line 499
    move-result v8

    .line 502
    const-string v9, "error"

    .line 503
    if-ne v8, v7, :cond_e

    .line 505
    move-object/from16 v30, v6

    .line 507
    goto :goto_e

    .line 509
    :cond_e
    if-nez v8, :cond_f

    .line 510
    move-object/from16 v30, v5

    .line 512
    goto :goto_e

    .line 514
    :cond_f
    move-object/from16 v30, v9

    .line 515
    :goto_e
    invoke-virtual {v1, v3}, Lcom/miui/systemui/events/SettingsEvent$Companion;->getUseControlPanel(Landroid/content/Context;)I

    .line 517
    move-result v1

    .line 520
    if-ne v1, v7, :cond_10

    .line 521
    move-object/from16 v31, v6

    .line 523
    goto :goto_f

    .line 525
    :cond_10
    if-nez v1, :cond_11

    .line 526
    move-object/from16 v31, v5

    .line 528
    goto :goto_f

    .line 530
    :cond_11
    move-object/from16 v31, v9

    .line 531
    :goto_f
    sget-object v1, Lcom/miui/systemui/events/NotificationEvent;->Companion:Lcom/miui/systemui/events/NotificationEvent$Companion;

    .line 533
    invoke-virtual {v1, v3}, Lcom/miui/systemui/events/NotificationEvent$Companion;->getKeyguardDisplayRule(Landroid/content/Context;)I

    .line 535
    move-result v5

    .line 538
    if-ne v5, v7, :cond_12

    .line 539
    const-string/jumbo v5, "\u663e\u793a\u901a\u77e5\u5185\u5bb9"

    .line 541
    goto :goto_10

    .line 544
    :cond_12
    const/4 v6, -0x1

    .line 545
    if-ne v5, v6, :cond_13

    .line 546
    const-string/jumbo v5, "\u663e\u793a\u901a\u77e5\u9690\u85cf\u5185\u5bb9"

    .line 548
    goto :goto_10

    .line 551
    :cond_13
    if-nez v5, :cond_14

    .line 552
    const-string/jumbo v5, "\u5173\u95ed\u6240\u6709\u9501\u5c4f\u901a\u77e5"

    .line 554
    :goto_10
    move-object/from16 v32, v5

    .line 557
    goto :goto_11

    .line 559
    :cond_14
    move-object/from16 v32, v9

    .line 560
    :goto_11
    invoke-virtual {v1, v3}, Lcom/miui/systemui/events/NotificationEvent$Companion;->getFloatShieldState(Landroid/content/Context;)I

    .line 562
    move-result v1

    .line 565
    if-nez v1, :cond_15

    .line 566
    const-string v1, "1\u5206\u949f"

    .line 568
    goto :goto_12

    .line 570
    :cond_15
    if-ne v1, v7, :cond_16

    .line 571
    const-string/jumbo v1, "\u76f4\u5230\u9501\u5c4f"

    .line 573
    goto :goto_12

    .line 576
    :cond_16
    if-ne v1, v2, :cond_17

    .line 577
    const-string/jumbo v1, "\u4e0d\u5c4f\u853d"

    .line 579
    :goto_12
    move-object/from16 v33, v1

    .line 582
    goto :goto_13

    .line 584
    :cond_17
    move-object/from16 v33, v9

    .line 585
    :goto_13
    sget-object v1, Lcom/miui/systemui/modulesettings/KeyguardSettings;->WAKEUP_FOR_NOTIFICATION:Landroid/net/Uri;

    .line 587
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 589
    move-result v1

    .line 592
    invoke-static {v1, v3}, Lcom/miui/systemui/modulesettings/KeyguardSettings$Companion;->getKeyguardNotificationStatus(ILandroid/content/Context;)I

    .line 593
    move-result v1

    .line 596
    if-nez v1, :cond_18

    .line 597
    const-string/jumbo v1, "\u65e0"

    .line 599
    :goto_14
    move-object/from16 v34, v1

    .line 602
    goto :goto_15

    .line 604
    :cond_18
    if-ne v1, v7, :cond_19

    .line 605
    const-string/jumbo v1, "\u4eae\u5c4f"

    .line 607
    goto :goto_14

    .line 610
    :cond_19
    const-string/jumbo v1, "\u52a8\u753b"

    .line 611
    goto :goto_14

    .line 614
    :goto_15
    const-string v35, "49.1.0.1.23426"

    .line 615
    const v36, 0x1509c44

    .line 617
    move-object/from16 v26, v4

    .line 620
    invoke-direct/range {v26 .. v36}, Lcom/miui/systemui/events/NotificationSettingsStateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 622
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 625
    invoke-interface {v0, v4}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 627
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 630
    move-result-object v0

    .line 633
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 634
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    new-instance v1, Lcom/android/keyguard/event/KeyguardStatusEvent;

    .line 639
    sget-object v2, Lcom/android/keyguard/event/KeyguardSettingsEvent;->Companion:Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;

    .line 641
    iget-object v3, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 643
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getScreenOffTimeValue(Landroid/content/Context;)Ljava/lang/String;

    .line 645
    move-result-object v23

    .line 648
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getPickupWakeupValue(Landroid/content/Context;)Ljava/lang/String;

    .line 649
    move-result-object v24

    .line 652
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getActionDoubleClickValue(Landroid/content/Context;)Ljava/lang/String;

    .line 653
    move-result-object v25

    .line 656
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getSmartCoverUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 657
    move-result-object v26

    .line 660
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getQuickCameraValue(Landroid/content/Context;)Ljava/lang/String;

    .line 661
    move-result-object v27

    .line 664
    invoke-virtual {v2}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getLockscreenWallpaperOpenValue()Ljava/lang/String;

    .line 665
    move-result-object v28

    .line 668
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getLockscreenClockStyle(Landroid/content/Context;)Ljava/lang/String;

    .line 669
    move-result-object v29

    .line 672
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getLunarCalendarValue(Landroid/content/Context;)Ljava/lang/String;

    .line 673
    move-result-object v30

    .line 676
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOwnerInfoValue(Landroid/content/Context;)Ljava/lang/String;

    .line 677
    move-result-object v31

    .line 680
    const-string v32, "178.2.1.1.20923"

    .line 681
    const v3, 0x1511750

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    move-result-object v33

    .line 689
    move-object/from16 v22, v1

    .line 690
    invoke-direct/range {v22 .. v33}, Lcom/android/keyguard/event/KeyguardStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 692
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 695
    invoke-interface {v0, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 697
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 700
    move-result-object v0

    .line 703
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 704
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 709
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    move-result-object v42

    .line 714
    iget-object v3, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 715
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 717
    if-nez v1, :cond_1b

    .line 719
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->BROAD_SIDE_FP:Z

    .line 721
    if-eqz v1, :cond_1a

    .line 723
    goto :goto_16

    .line 725
    :cond_1a
    new-instance v1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusWithoutFingerEvent;

    .line 726
    move-object/from16 v22, v1

    .line 728
    invoke-virtual {v2}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getSecureType()Ljava/lang/String;

    .line 730
    move-result-object v23

    .line 733
    invoke-virtual {v2}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getDisplayPatternValue()Ljava/lang/String;

    .line 734
    move-result-object v24

    .line 737
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getDarkFingerprintUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 738
    move-result-object v25

    .line 741
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getSideFingerprintUnlockWay(Landroid/content/Context;)Ljava/lang/String;

    .line 742
    move-result-object v26

    .line 745
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenFingerprintUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 746
    move-result-object v27

    .line 749
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFingerprintPrivacyPasswordValue(Landroid/content/Context;)Ljava/lang/String;

    .line 750
    move-result-object v28

    .line 753
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenFingerprintUnlockAppValue(Landroid/content/Context;)Ljava/lang/String;

    .line 754
    move-result-object v29

    .line 757
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getGxzwAnim(Landroid/content/Context;)Ljava/lang/String;

    .line 758
    move-result-object v30

    .line 761
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenVibrationSwitchValue(Landroid/content/Context;)Ljava/lang/String;

    .line 762
    move-result-object v31

    .line 765
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getShowFingerprintAfterSleepValue(Landroid/content/Context;)Ljava/lang/String;

    .line 766
    move-result-object v32

    .line 769
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFodQuickOpenValue(Landroid/content/Context;)Ljava/lang/String;

    .line 770
    move-result-object v33

    .line 773
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 774
    move-result-object v34

    .line 777
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFaceNum(Landroid/content/Context;)I

    .line 778
    move-result v35

    .line 781
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getStayKeyguardAfterFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 782
    move-result-object v36

    .line 785
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFaceUnlockNotificationValue(Landroid/content/Context;)Ljava/lang/String;

    .line 786
    move-result-object v37

    .line 789
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getHideNotificationContentBeforeFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 790
    move-result-object v38

    .line 793
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenBlueUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 794
    move-result-object v39

    .line 797
    const-string v40, "178.2.2.1.20935"

    .line 798
    move-object/from16 v41, v42

    .line 800
    invoke-direct/range {v22 .. v41}, Lcom/android/keyguard/event/KeyguardUnlockWayStatusWithoutFingerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 802
    invoke-interface {v3, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 805
    goto :goto_17

    .line 808
    :cond_1b
    :goto_16
    new-instance v1, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;

    .line 809
    move-object/from16 v22, v1

    .line 811
    invoke-virtual {v2}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getSecureType()Ljava/lang/String;

    .line 813
    move-result-object v23

    .line 816
    invoke-virtual {v2}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getDisplayPatternValue()Ljava/lang/String;

    .line 817
    move-result-object v24

    .line 820
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getDarkFingerprintUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 821
    move-result-object v25

    .line 824
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getSideFingerprintUnlockWay(Landroid/content/Context;)Ljava/lang/String;

    .line 825
    move-result-object v26

    .line 828
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenFingerprintUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 829
    move-result-object v27

    .line 832
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFingerprintPrivacyPasswordValue(Landroid/content/Context;)Ljava/lang/String;

    .line 833
    move-result-object v28

    .line 836
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenFingerprintUnlockAppValue(Landroid/content/Context;)Ljava/lang/String;

    .line 837
    move-result-object v29

    .line 840
    invoke-virtual {v2}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFingerprintNum()I

    .line 841
    move-result v30

    .line 844
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getGxzwAnim(Landroid/content/Context;)Ljava/lang/String;

    .line 845
    move-result-object v31

    .line 848
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenVibrationSwitchValue(Landroid/content/Context;)Ljava/lang/String;

    .line 849
    move-result-object v32

    .line 852
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getShowFingerprintAfterSleepValue(Landroid/content/Context;)Ljava/lang/String;

    .line 853
    move-result-object v33

    .line 856
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFodQuickOpenValue(Landroid/content/Context;)Ljava/lang/String;

    .line 857
    move-result-object v34

    .line 860
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 861
    move-result-object v35

    .line 864
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFaceNum(Landroid/content/Context;)I

    .line 865
    move-result v36

    .line 868
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getStayKeyguardAfterFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 869
    move-result-object v37

    .line 872
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFaceUnlockNotificationValue(Landroid/content/Context;)Ljava/lang/String;

    .line 873
    move-result-object v38

    .line 876
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getHideNotificationContentBeforeFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 877
    move-result-object v39

    .line 880
    invoke-virtual {v2, v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOpenBlueUnlockValue(Landroid/content/Context;)Ljava/lang/String;

    .line 881
    move-result-object v40

    .line 884
    const-string v41, "178.2.2.1.20935"

    .line 885
    invoke-direct/range {v22 .. v42}, Lcom/android/keyguard/event/KeyguardUnlockWayStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 887
    invoke-interface {v3, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 890
    :goto_17
    invoke-static/range {v21 .. v21}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 893
    move-result-object v0

    .line 896
    check-cast v0, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 897
    iget-object v1, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 899
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 901
    move-result-object v1

    .line 904
    const-string v3, "constant_lockscreen_info"

    .line 905
    const/4 v4, -0x2

    .line 907
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 908
    move-result-object v1

    .line 911
    if-eqz v1, :cond_1d

    .line 912
    new-instance v3, Lcom/google/gson/Gson;

    .line 914
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 916
    const-class v4, Lcom/android/keyguard/wallpaper/entity/TrackLockscreenInfo;

    .line 919
    invoke-virtual {v3, v4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 921
    move-result-object v1

    .line 924
    check-cast v1, Lcom/android/keyguard/wallpaper/entity/TrackLockscreenInfo;

    .line 925
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/TrackLockscreenInfo;->getWallpaperInfo()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 927
    move-result-object v3

    .line 930
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/TrackLockscreenInfo;->getClockInfo()Lcom/miui/clock/module/ClockBean;

    .line 931
    move-result-object v4

    .line 934
    const-class v5, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 935
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 937
    move-result-object v5

    .line 940
    check-cast v5, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 941
    invoke-virtual {v5}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    .line 943
    move-result v5

    .line 946
    xor-int/2addr v5, v7

    .line 947
    const-class v6, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 948
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 950
    move-result-object v6

    .line 953
    check-cast v6, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 954
    iget v6, v6, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperEffect:I

    .line 956
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 958
    move-result-object v7

    .line 961
    if-eqz v3, :cond_1c

    .line 962
    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->getMagicType()I

    .line 964
    move-result v12

    .line 967
    goto :goto_18

    .line 968
    :cond_1c
    move v12, v11

    .line 969
    :goto_18
    iget-object v3, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mContext:Landroid/content/Context;

    .line 970
    invoke-virtual {v2, v3}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getFavoriteTemplates(Landroid/content/Context;)Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;

    .line 972
    move-result-object v3

    .line 975
    iget-object v0, v0, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 976
    new-instance v8, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;

    .line 978
    move-object v13, v8

    .line 980
    invoke-virtual {v2, v5, v7}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateName(ZLjava/lang/String;)Ljava/lang/String;

    .line 981
    move-result-object v14

    .line 984
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 985
    move-result-object v9

    .line 988
    invoke-virtual {v2, v5, v7, v6, v9}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateTextureEffect(ZLjava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;

    .line 989
    move-result-object v15

    .line 992
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockBean;->isEnableDiffusion()Z

    .line 993
    move-result v9

    .line 996
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 997
    move-result-object v9

    .line 1000
    invoke-virtual {v2, v5, v7, v9}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateTimeEffectState(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    .line 1001
    move-result-object v16

    .line 1004
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1005
    move-result-object v6

    .line 1008
    invoke-virtual {v2, v5, v7, v6}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateDepthEffect(ZLjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    .line 1009
    move-result-object v17

    .line 1012
    invoke-virtual {v2, v5, v4}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateFinePrintContent(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;

    .line 1013
    move-result-object v18

    .line 1016
    invoke-virtual {v2, v5, v4}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateClockTimeStyle(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;

    .line 1017
    move-result-object v19

    .line 1020
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockBean;->getClassicLine3()I

    .line 1021
    move-result v6

    .line 1024
    invoke-virtual {v2, v5, v7, v6}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateClockContentArea(ZLjava/lang/String;I)Ljava/lang/String;

    .line 1025
    move-result-object v20

    .line 1028
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockBean;->getClassicLine4()I

    .line 1029
    move-result v6

    .line 1032
    invoke-virtual {v2, v5, v7, v6}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateClockContentArea(ZLjava/lang/String;I)Ljava/lang/String;

    .line 1033
    move-result-object v21

    .line 1036
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/TrackLockscreenInfo;->getSignatureInfo()Lcom/miui/lockscreeninfo/model/SignatureInfo;

    .line 1037
    move-result-object v6

    .line 1040
    invoke-virtual {v2, v5, v4, v6}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateHasSignature(ZLcom/miui/clock/module/ClockBean;Lcom/miui/lockscreeninfo/model/SignatureInfo;)Ljava/lang/String;

    .line 1041
    move-result-object v22

    .line 1044
    invoke-virtual {v2, v5, v4}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateGlobalFont(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;

    .line 1045
    move-result-object v23

    .line 1048
    invoke-virtual {v2, v5, v4}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateDigitalColorDifferent(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;

    .line 1049
    move-result-object v24

    .line 1052
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/TrackLockscreenInfo;->getSmartFrame()Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 1053
    move-result-object v1

    .line 1056
    invoke-virtual {v2, v5, v7, v1}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getTemplateFrameStyle(ZLjava/lang/String;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)Ljava/lang/String;

    .line 1057
    move-result-object v25

    .line 1060
    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;->getFavoriteTemplatesCount()I

    .line 1061
    move-result v1

    .line 1064
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1065
    move-result-object v26

    .line 1068
    invoke-virtual {v3}, Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;->getFavoriteTemplatesContent()Ljava/lang/String;

    .line 1069
    move-result-object v27

    .line 1072
    const-string v28, "178.3.0.1.28856"

    .line 1073
    const v1, 0x15f97d0

    .line 1075
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1078
    move-result-object v29

    .line 1081
    invoke-direct/range {v13 .. v29}, Lcom/android/keyguard/event/KeyguardTemplateStatusEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 1082
    invoke-interface {v0, v8}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 1085
    goto :goto_19

    .line 1088
    :cond_1d
    const-string v0, "SystemUIStat"

    .line 1089
    const-string v1, "handleKeyguardTemplateStatusEvent error : currentLockscreenInfo is null"

    .line 1091
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :goto_19
    return-void
    .line 1096
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/miui/systemui/analytics/SettingsJobSchedulerService;->trackSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "SettingsJobSchedulerService"

    .line 7
    const-string/jumbo v0, "trackSettings exception"

    .line 9
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
