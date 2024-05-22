.class public final Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/injector/KeyguardSensorInjector;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->$r8$classId:I

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    const/4 v2, 0x0

    .line 6
    const-string v3, "KeyguardSensorInjector"

    .line 7
    const/4 v4, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_b

    .line 13
    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 15
    const/4 v0, 0x2

    .line 17
    if-eqz p1, :cond_3

    .line 18
    aget v5, p1, v2

    .line 20
    cmpg-float v1, v5, v1

    .line 22
    if-nez v1, :cond_0

    .line 24
    move v1, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_3

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 31
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDisplay:Landroid/view/Display;

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 38
    move-result p1

    .line 41
    if-ne p1, v0, :cond_1

    .line 42
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 44
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 46
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 48
    if-nez p1, :cond_12

    .line 50
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 52
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardCommonSettingObserver:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 54
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isLinkageState:Z

    .line 56
    if-nez p1, :cond_12

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 60
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 62
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 64
    if-eqz v0, :cond_2

    .line 66
    iget-boolean v0, v0, Lcom/android/keyguard/MiuiSmartCoverHelper;->mLidShowing:Z

    .line 68
    if-eqz v0, :cond_2

    .line 70
    move v2, v4

    .line 72
    :cond_2
    if-nez v2, :cond_12

    .line 73
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPowerManager:Landroid/os/PowerManager;

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 77
    move-result-wide v0

    .line 80
    const-string v2, "com.android.systemui:PICK_UP"

    .line 81
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 86
    iput-boolean v4, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupByPickUp:Z

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->SCREEN_OPEN_REASON:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string p0, ":pick up"

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto/16 :goto_a

    .line 112
    :cond_3
    if-eqz p1, :cond_12

    .line 114
    aget p1, p1, v2

    .line 116
    const/high16 v1, 0x40000000    # 2.0f

    .line 118
    cmpg-float v1, p1, v1

    .line 120
    if-nez v1, :cond_4

    .line 122
    move v1, v4

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    move v1, v2

    .line 126
    :goto_1
    if-nez v1, :cond_6

    .line 127
    const/4 v1, 0x0

    .line 129
    cmpg-float p1, p1, v1

    .line 130
    if-nez p1, :cond_5

    .line 132
    move p1, v4

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    move p1, v2

    .line 136
    :goto_2
    if-eqz p1, :cond_12

    .line 137
    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 139
    iget-boolean v1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mWakeupByPickUp:Z

    .line 141
    if-eqz v1, :cond_12

    .line 143
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 145
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    .line 147
    move-result p1

    .line 150
    if-nez p1, :cond_f

    .line 151
    sget-object p1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 153
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 155
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mContext:Landroid/content/Context;

    .line 157
    sget-object v1, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 159
    const-string v5, "mx_telcel"

    .line 161
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    move-result v5

    .line 166
    if-nez v5, :cond_e

    .line 167
    const-string v5, "lm_cr"

    .line 169
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result v1

    .line 174
    if-eqz v1, :cond_d

    .line 175
    const-class v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 177
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    move-result-object v1

    .line 182
    check-cast v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 183
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardCommonSettingObserver;->startDisabled:Z

    .line 185
    if-eqz v1, :cond_d

    .line 187
    const-string v1, "com.celltick.lockscreen"

    .line 189
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    move-result v5

    .line 194
    if-eqz v5, :cond_7

    .line 195
    goto :goto_6

    .line 197
    :cond_7
    const-string v5, "activity"

    .line 198
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    move-result-object p1

    .line 203
    check-cast p1, Landroid/app/ActivityManager;

    .line 204
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 206
    move-result-object p1

    .line 209
    if-eqz p1, :cond_c

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 212
    move-result v5

    .line 215
    if-nez v5, :cond_8

    .line 216
    goto :goto_6

    .line 218
    :cond_8
    move v5, v2

    .line 219
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 220
    move-result v6

    .line 223
    if-ge v5, v6, :cond_c

    .line 224
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    move-result-object v6

    .line 229
    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 230
    iget-object v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 232
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v7

    .line 237
    if-eqz v7, :cond_9

    .line 238
    goto :goto_5

    .line 240
    :cond_9
    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 241
    if-eqz v6, :cond_b

    .line 243
    move v7, v2

    .line 245
    :goto_4
    array-length v8, v6

    .line 246
    if-ge v7, v8, :cond_b

    .line 247
    aget-object v8, v6, v7

    .line 249
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v8

    .line 254
    if-eqz v8, :cond_a

    .line 255
    :goto_5
    move p1, v4

    .line 257
    goto :goto_7

    .line 258
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 259
    goto :goto_4

    .line 261
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 262
    goto :goto_3

    .line 264
    :cond_c
    :goto_6
    move p1, v2

    .line 265
    :goto_7
    if-eqz p1, :cond_d

    .line 266
    goto :goto_8

    .line 268
    :cond_d
    move p1, v2

    .line 269
    goto :goto_9

    .line 270
    :cond_e
    :goto_8
    move p1, v4

    .line 271
    :goto_9
    if-eqz p1, :cond_12

    .line 272
    :cond_f
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 274
    iget-object v1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 276
    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSmartCoverHelper:Lcom/android/keyguard/MiuiSmartCoverHelper;

    .line 278
    if-eqz v1, :cond_10

    .line 280
    iget-boolean v1, v1, Lcom/android/keyguard/MiuiSmartCoverHelper;->mLidShowing:Z

    .line 282
    if-eqz v1, :cond_10

    .line 284
    move v2, v4

    .line 286
    :cond_10
    if-nez v2, :cond_12

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 292
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->SCREEN_OFF_REASON:Ljava/lang/String;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string p1, ":put down"

    .line 304
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 312
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 316
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mDisplay:Landroid/view/Display;

    .line 318
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 323
    move-result p1

    .line 326
    if-ne p1, v0, :cond_11

    .line 327
    const-class p1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 329
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 331
    move-result-object p1

    .line 334
    check-cast p1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 335
    const-string/jumbo v0, "\u653e\u4e0b\u606f\u5c4f"

    .line 337
    invoke-virtual {p1, v0}, Lcom/miui/systemui/analytics/SystemUIStat;->handleKeyguardActionEvent(Ljava/lang/String;)V

    .line 340
    :cond_11
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 343
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPowerManager:Landroid/os/PowerManager;

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 347
    move-result-wide v0

    .line 350
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 351
    :cond_12
    :goto_a
    return-void

    .line 354
    :goto_b
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 355
    if-eqz p1, :cond_17

    .line 357
    aget p1, p1, v2

    .line 359
    cmpg-float p1, p1, v1

    .line 361
    if-nez p1, :cond_13

    .line 363
    move p1, v4

    .line 365
    goto :goto_c

    .line 366
    :cond_13
    move p1, v2

    .line 367
    :goto_c
    if-eqz p1, :cond_17

    .line 368
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 370
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 372
    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 374
    if-nez v0, :cond_17

    .line 376
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 378
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 380
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 382
    if-eqz p1, :cond_17

    .line 384
    const-class p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 386
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 388
    move-result-object p1

    .line 391
    check-cast p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 392
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFingerprintUnlock()Z

    .line 394
    move-result p1

    .line 397
    if-nez p1, :cond_17

    .line 398
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 400
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mContext:Landroid/content/Context;

    .line 402
    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    .line 404
    move-result p1

    .line 407
    if-nez p1, :cond_17

    .line 408
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 410
    iget-object v0, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 412
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 414
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 416
    if-eqz v0, :cond_16

    .line 418
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 420
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mContext:Landroid/content/Context;

    .line 422
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

    .line 424
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 426
    move-result v0

    .line 429
    if-eqz v0, :cond_14

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 432
    move-result-object v0

    .line 435
    const v1, 0x7f030088    # @array/keep_screen_on_when_large_area_touch

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 439
    move-result-object v0

    .line 442
    array-length v1, v0

    .line 443
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 444
    move-result-object v0

    .line 447
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 448
    move-result-object v0

    .line 451
    sput-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

    .line 452
    :cond_14
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sKeepScreenOnWhenLargeAreaTouchList:Ljava/util/List;

    .line 454
    invoke-static {p1, v2}, Lcom/miui/systemui/util/CommonUtil;->getTopActivityPkg(Landroid/content/Context;Z)Ljava/lang/String;

    .line 456
    move-result-object p1

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 460
    move-result v1

    .line 463
    if-nez v1, :cond_15

    .line 464
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 466
    move-result p1

    .line 469
    if-eqz p1, :cond_15

    .line 470
    move v2, v4

    .line 472
    :cond_15
    if-nez v2, :cond_17

    .line 473
    :cond_16
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 480
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardSensorInjector;->SCREEN_OFF_REASON:Ljava/lang/String;

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    .line 484
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string p1, ":large area touch"

    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    move-result-object p1

    .line 500
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector$mPickupSensorListener$1;->this$0:Lcom/android/keyguard/injector/KeyguardSensorInjector;

    .line 504
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardSensorInjector;->mPowerManager:Landroid/os/PowerManager;

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 508
    move-result-wide v0

    .line 511
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 512
    :cond_17
    return-void

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 516
.end method
