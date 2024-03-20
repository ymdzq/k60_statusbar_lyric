.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager$Listener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewBound(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 7
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->buzzBeeped:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto/16 :goto_4

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->buzzBeeped:Z

    .line 16
    const-string v0, "AlertCoordinator"

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    const-string v3, "onViewBound, buzzBeep for "

    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 27
    invoke-static {v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;->mAlertManager:Ldagger/Lazy;

    .line 32
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;

    .line 38
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->buzzBeepBlink(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;->mAlertManager:Ldagger/Lazy;

    .line 43
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    check-cast p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 54
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 56
    move-result-object v0

    .line 59
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 60
    const-string v2, "miui.focus.enableAlert"

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 64
    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 70
    const-string v0, "f,!Focus enableAlert"

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 74
    goto/16 :goto_4

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 79
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    .line 81
    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isStickyAndNotDemoted()Z

    .line 85
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 91
    const-string v0, "f,!miui disable"

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 95
    goto/16 :goto_4

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    .line 100
    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->wakeupForNotification:Z

    .line 102
    if-nez v0, :cond_3

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 106
    const-string v0, "f,!wakeup for notif"

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 110
    goto/16 :goto_4

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 115
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 117
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mShowLockscreenNotifications:Z

    .line 119
    if-nez v0, :cond_4

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 123
    const-string v0, "f,!show lockscreen notif"

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 127
    goto/16 :goto_4

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mKeyguardNotificationVisibilityProvider:Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;->shouldHideNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 134
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 140
    const-string v0, "f,!show on keyguard"

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 144
    goto/16 :goto_4

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 149
    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 151
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->isZenModeOn()Z

    .line 153
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 159
    const-string v0, "f,zen"

    .line 161
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 163
    goto/16 :goto_4

    .line 166
    :cond_6
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 168
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 170
    move-result v0

    .line 173
    if-eqz v0, :cond_7

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 176
    const-string v0, "f,fold"

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 180
    goto/16 :goto_4

    .line 183
    :cond_7
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 185
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFoldEntrance(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 187
    move-result v0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 193
    const-string v0, "f,fold entrance"

    .line 195
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 197
    goto/16 :goto_4

    .line 200
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    .line 202
    move-result v0

    .line 205
    const/4 v2, 0x0

    .line 206
    if-eqz v0, :cond_c

    .line 207
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    .line 209
    move-result-object v0

    .line 212
    if-nez v0, :cond_9

    .line 213
    goto :goto_0

    .line 215
    :cond_9
    check-cast v0, Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 218
    move-result-object v0

    .line 221
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    move-result v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    move-result-object v3

    .line 231
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 232
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 234
    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isFold(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 236
    move-result v3

    .line 239
    if-nez v3, :cond_a

    .line 240
    :goto_0
    move v0, v2

    .line 242
    goto :goto_1

    .line 243
    :cond_b
    move v0, v1

    .line 244
    :goto_1
    if-eqz v0, :cond_c

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 247
    const-string v0, "f, group container but children is fold"

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 251
    goto/16 :goto_4

    .line 254
    :cond_c
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 256
    invoke-static {v0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z

    .line 258
    move-result v0

    .line 261
    if-eqz v0, :cond_d

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 264
    const-string v0, "f,media"

    .line 266
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 268
    goto/16 :goto_4

    .line 271
    :cond_d
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 273
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 275
    move-result-object v0

    .line 278
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 279
    const-string v3, "android.mediaSession"

    .line 281
    const-class v4, Landroid/media/session/MediaSession$Token;

    .line 283
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 285
    move-result-object v0

    .line 288
    if-eqz v0, :cond_e

    .line 289
    move v0, v1

    .line 291
    goto :goto_2

    .line 292
    :cond_e
    move v0, v2

    .line 293
    :goto_2
    if-eqz v0, :cond_f

    .line 294
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 296
    const-string v0, "f,media session"

    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 300
    goto/16 :goto_4

    .line 303
    :cond_f
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 305
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 307
    move-result v0

    .line 310
    if-nez v0, :cond_10

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 313
    const-string v0, "f,!clearable"

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 317
    goto/16 :goto_4

    .line 320
    :cond_10
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 322
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 324
    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->hasProgressbar(Landroid/app/Notification;)Z

    .line 328
    move-result v0

    .line 331
    if-eqz v0, :cond_11

    .line 332
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 334
    const-string v0, "f,has progress bar"

    .line 336
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 338
    goto/16 :goto_4

    .line 341
    :cond_11
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 343
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    move-result-object v0

    .line 348
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 349
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 351
    if-eqz v0, :cond_12

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 355
    const-string v0, "f,device interactive"

    .line 357
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 359
    goto/16 :goto_4

    .line 362
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mKeyguardSensorInjector:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 364
    iget-object v3, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 366
    const/16 v4, 0x8

    .line 368
    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 370
    move-result-object v3

    .line 373
    if-eqz v3, :cond_14

    .line 374
    iget-boolean v3, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->sIsEllipticProximity:Z

    .line 376
    if-nez v3, :cond_14

    .line 378
    iget-boolean v0, v0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->configAntiMisTouchDisabled:Z

    .line 380
    if-eqz v0, :cond_13

    .line 382
    goto :goto_3

    .line 384
    :cond_13
    move v1, v2

    .line 385
    :cond_14
    :goto_3
    if-nez v1, :cond_17

    .line 386
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda1;

    .line 388
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mKeyguardSensorInjector:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 393
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorWrapper:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 395
    if-nez p1, :cond_19

    .line 397
    new-instance p1, Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 399
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mContext:Landroid/content/Context;

    .line 401
    invoke-direct {p1, v1}, Lcom/miui/systemui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    .line 403
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorWrapper:Lcom/miui/systemui/util/ProximitySensorWrapper;

    .line 406
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorListener:Lcom/android/keyguard/injector/KeyguardSensorInjector$mProximitySensorListener$1;

    .line 408
    iget-object v3, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 410
    monitor-enter v3

    .line 412
    :try_start_0
    iget-object v4, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 413
    check-cast v4, Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 417
    move-result v4

    .line 420
    if-nez v4, :cond_16

    .line 421
    iget-object v4, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 423
    check-cast v4, Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 427
    move-result v4

    .line 430
    if-nez v4, :cond_15

    .line 431
    iget-object v4, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 433
    iget-object v5, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensorListener:Lcom/miui/systemui/util/ProximitySensorWrapper$1;

    .line 435
    iget-object v6, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 437
    invoke-virtual {v4, v5, v6, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 439
    :cond_15
    iget-object p1, p1, Lcom/miui/systemui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    .line 442
    check-cast p1, Ljava/util/ArrayList;

    .line 444
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_16
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mProximitySensorChangeCallback:Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager$$ExternalSyntheticLambda1;

    .line 450
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mHandler:Landroid/os/Handler;

    .line 452
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mUnregisterProximitySensorRunnable:Lcom/android/keyguard/injector/KeyguardSensorInjector$registerPickupSensor$1;

    .line 454
    const-wide/16 v0, 0x7d0

    .line 456
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 458
    goto :goto_4

    .line 461
    :catchall_0
    move-exception p0

    .line 462
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    throw p0

    .line 464
    :cond_17
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 465
    const-string/jumbo v0, "sys.power.nonui"

    .line 467
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 470
    move-result v0

    .line 473
    if-nez v0, :cond_18

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->wakeUpForNotificationInternal()V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 479
    const-string/jumbo v0, "success2"

    .line 481
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 484
    goto :goto_4

    .line 487
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiAlertManager;->mLogger:Lcom/android/systemui/log/NotificationAlertLogger;

    .line 488
    const-string v0, "f,non ui"

    .line 490
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/log/NotificationAlertLogger;->logWakeUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V

    .line 492
    :cond_19
    :goto_4
    return-void
    .line 495
.end method
