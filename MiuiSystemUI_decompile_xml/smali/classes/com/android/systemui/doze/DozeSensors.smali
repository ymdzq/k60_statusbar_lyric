.class public final Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public mDebounceFrom:J

.field public mDevicePosture:I

.field public final mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field public final mHandler:Landroid/os/Handler;

.field public mListening:Z

.field public mListeningAodOnlySensors:Z

.field public final mListeningProxSensors:Z

.field public mListeningTouchScreenSensors:Z

.field public final mProxCallback:Ljava/util/function/Consumer;

.field public final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field public final mScreenOffUdfpsEnabled:Z

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSensorCallback:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

.field public final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field public mSettingRegistered:Z

.field public final mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

.field protected mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field public mUdfpsEnrolled:Z

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 2
    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/doze/DozeSensors;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 22

    .line 1
    move-object/from16 v13, p0

    .line 2
    move-object/from16 v12, p2

    .line 4
    move-object/from16 v0, p3

    .line 6
    move-object/from16 v14, p4

    .line 8
    move-object/from16 v1, p9

    .line 10
    move-object/from16 v2, p11

    .line 12
    move-object/from16 v3, p12

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v4, Landroid/os/Handler;

    .line 19
    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 21
    iput-object v4, v13, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v5, Lcom/android/systemui/doze/DozeSensors$1;

    .line 26
    invoke-direct {v5, v13, v4}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    .line 28
    iput-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    .line 31
    new-instance v4, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v4, v13}, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    .line 35
    iput-object v4, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    .line 38
    new-instance v4, Lcom/android/systemui/doze/DozeSensors$2;

    .line 40
    invoke-direct {v4, v13}, Lcom/android/systemui/doze/DozeSensors$2;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    .line 42
    iput-object v4, v13, Lcom/android/systemui/doze/DozeSensors;->mAuthControllerCallback:Lcom/android/systemui/doze/DozeSensors$2;

    .line 45
    iput-object v12, v13, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 47
    iput-object v14, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 49
    move-object/from16 v5, p5

    .line 51
    iput-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 53
    move-object/from16 v5, p7

    .line 55
    iput-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 57
    move-object/from16 v5, p10

    .line 59
    iput-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 61
    move-object/from16 v5, p6

    .line 63
    iput-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mSensorCallback:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda1;

    .line 65
    move-object/from16 v5, p8

    .line 67
    iput-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 69
    iput-object v1, v13, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 71
    const-string v5, "DozeSensors"

    .line 73
    check-cast v1, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 75
    invoke-virtual {v1, v5}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->setTag(Ljava/lang/String;)V

    .line 77
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 80
    const v5, 0x7f050077    # @bool/doze_selectively_register_prox 'false'

    .line 82
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 85
    move-result v1

    .line 88
    const-string v5, "doze.prox.selectively_register"

    .line 89
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    move-result v1

    .line 94
    const/4 v15, 0x1

    .line 95
    xor-int/2addr v1, v15

    .line 96
    iput-boolean v1, v13, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    .line 97
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 99
    move-result v1

    .line 102
    invoke-virtual {v14, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->screenOffUdfpsEnabled(I)Z

    .line 103
    move-result v1

    .line 106
    iput-boolean v1, v13, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    .line 107
    iput-object v3, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 109
    move-object v1, v3

    .line 111
    check-cast v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 112
    iget v1, v1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    .line 114
    iput v1, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    .line 116
    iput-object v2, v13, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 118
    move-object/from16 v1, p13

    .line 120
    iput-object v1, v13, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 122
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 124
    move-result v1

    .line 127
    invoke-virtual {v2, v1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 128
    move-result v1

    .line 131
    iput-boolean v1, v13, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 132
    invoke-virtual {v2, v4}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 134
    const/16 v1, 0x9

    .line 137
    new-array v11, v1, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 139
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 141
    const/16 v2, 0x11

    .line 143
    invoke-virtual {v12, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 145
    move-result-object v2

    .line 148
    const/4 v3, 0x0

    .line 149
    const v4, 0x7f050076    # @bool/doze_pulse_on_significant_motion 'false'

    .line 150
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mResources:Landroid/content/res/Resources;

    .line 153
    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 155
    move-result v0

    .line 158
    const-string v4, "doze.pulse.sigmotion"

    .line 159
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 161
    move-result v0

    .line 164
    const/4 v4, 0x2

    .line 165
    const/4 v5, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    const/4 v6, 0x0

    .line 168
    move-object/from16 p5, v1

    .line 169
    move-object/from16 p6, p0

    .line 171
    move-object/from16 p7, v2

    .line 173
    move-object/from16 p8, v3

    .line 175
    move/from16 p9, v0

    .line 177
    move/from16 p10, v4

    .line 179
    move/from16 p11, v5

    .line 181
    move/from16 p12, v6

    .line 183
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    .line 185
    const/16 v16, 0x0

    .line 188
    aput-object v1, v11, v16

    .line 190
    new-instance v17, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 192
    const/16 v0, 0x19

    .line 194
    invoke-virtual {v12, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 196
    move-result-object v2

    .line 199
    const-string v3, "doze_pulse_on_pick_up"

    .line 200
    const v0, 0x111012d    # @android:bool/config_dozeSupportsAodWallpaper

    .line 202
    move-object/from16 v1, p1

    .line 205
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 207
    move-result v4

    .line 210
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    .line 211
    move-result v5

    .line 214
    const/4 v6, 0x3

    .line 215
    const/4 v8, 0x0

    .line 216
    const/4 v9, 0x0

    .line 217
    const/16 v18, 0x1

    .line 218
    const/16 v19, 0x0

    .line 220
    move-object/from16 v0, v17

    .line 222
    move-object/from16 v1, p0

    .line 224
    move-object/from16 v20, v10

    .line 226
    move/from16 v10, v18

    .line 228
    move-object v14, v11

    .line 230
    move/from16 v11, v19

    .line 231
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZ)V

    .line 233
    aput-object v17, v14, v15

    .line 236
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 238
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    .line 240
    move-result-object v1

    .line 243
    const/4 v11, 0x0

    .line 244
    invoke-static {v12, v1, v11}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 245
    move-result-object v1

    .line 248
    const-string v2, "doze_pulse_on_double_tap"

    .line 249
    const/4 v3, 0x1

    .line 251
    const/4 v4, 0x4

    .line 252
    const v5, 0x7f050073    # @bool/doze_double_tap_reports_touch_coordinates 'false'

    .line 253
    move-object/from16 v12, v20

    .line 256
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 258
    move-result v5

    .line 261
    const/4 v6, 0x1

    .line 262
    move-object/from16 p5, v0

    .line 263
    move-object/from16 p7, v1

    .line 265
    move-object/from16 p8, v2

    .line 267
    move/from16 p9, v3

    .line 269
    move/from16 p10, v4

    .line 271
    move/from16 p11, v5

    .line 273
    move/from16 p12, v6

    .line 275
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    .line 277
    const/4 v1, 0x2

    .line 280
    aput-object v0, v14, v1

    .line 281
    new-instance v17, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 283
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorTypeMapping()[Ljava/lang/String;

    .line 285
    move-result-object v0

    .line 288
    const/4 v1, 0x5

    .line 289
    new-array v2, v1, [Landroid/hardware/Sensor;

    .line 290
    new-instance v1, Ljava/util/HashMap;

    .line 292
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 294
    move/from16 v3, v16

    .line 297
    :goto_0
    array-length v4, v0

    .line 299
    if-ge v3, v4, :cond_1

    .line 300
    aget-object v4, v0, v3

    .line 302
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 304
    move-result v5

    .line 307
    if-nez v5, :cond_0

    .line 308
    iget-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 310
    invoke-static {v5, v4, v11}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 312
    move-result-object v5

    .line 315
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    move-result-object v4

    .line 322
    check-cast v4, Landroid/hardware/Sensor;

    .line 323
    aput-object v4, v2, v3

    .line 325
    add-int/lit8 v3, v3, 0x1

    .line 327
    goto :goto_0

    .line 329
    :cond_1
    const-string v3, "doze_tap_gesture"

    .line 330
    const/4 v4, 0x1

    .line 332
    const/4 v5, 0x1

    .line 333
    const/16 v6, 0x9

    .line 334
    const/4 v7, 0x1

    .line 336
    const/4 v8, 0x1

    .line 337
    iget v0, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    .line 338
    const v1, 0x7f03007d    # @array/doze_single_tap_uses_prox_posture_mapping

    .line 340
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 343
    move-result-object v1

    .line 346
    const v9, 0x7f050078    # @bool/doze_single_tap_uses_prox 'true'

    .line 347
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 350
    move-result v9

    .line 353
    array-length v10, v1

    .line 354
    if-ge v0, v10, :cond_3

    .line 355
    aget v0, v1, v0

    .line 357
    if-eqz v0, :cond_2

    .line 359
    move v9, v15

    .line 361
    goto :goto_1

    .line 362
    :cond_2
    move/from16 v9, v16

    .line 363
    goto :goto_1

    .line 365
    :cond_3
    const-string v1, "Unsupported doze posture "

    .line 366
    const-string v10, "DozeParameters"

    .line 368
    invoke-static {v1, v0, v10}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    :goto_1
    const/4 v10, 0x1

    .line 373
    iget v15, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePosture:I

    .line 374
    const/16 v18, 0x0

    .line 376
    const/16 v19, 0x5

    .line 378
    move-object/from16 v0, v17

    .line 380
    move-object/from16 v1, p0

    .line 382
    move v11, v15

    .line 384
    move-object v15, v12

    .line 385
    move/from16 v12, v18

    .line 386
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;[Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZIZ)V

    .line 388
    const/4 v0, 0x3

    .line 391
    aput-object v17, v14, v0

    .line 392
    new-instance v12, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 394
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    .line 396
    move-result-object v0

    .line 399
    iget-object v1, v13, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 400
    const/4 v11, 0x0

    .line 402
    invoke-static {v1, v0, v11}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 403
    move-result-object v2

    .line 406
    const-string v3, "doze_pulse_on_long_press"

    .line 407
    const/4 v4, 0x0

    .line 409
    const/4 v5, 0x1

    .line 410
    const/4 v6, 0x5

    .line 411
    const/16 v17, 0x1

    .line 412
    const/16 v18, 0x1

    .line 414
    const v0, 0x7f050074    # @bool/doze_long_press_uses_prox 'true'

    .line 416
    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 419
    move-result v9

    .line 422
    const/16 v20, 0x0

    .line 423
    const/4 v7, 0x1

    .line 425
    const/4 v8, 0x1

    .line 426
    move-object v0, v12

    .line 427
    move-object/from16 v1, p0

    .line 428
    move-object/from16 v21, v15

    .line 430
    move-object v15, v11

    .line 432
    move/from16 v11, v20

    .line 433
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZ)V

    .line 435
    const/4 v0, 0x4

    .line 438
    aput-object v12, v14, v0

    .line 439
    new-instance v12, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 441
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->udfpsLongPressSensorType()Ljava/lang/String;

    .line 443
    move-result-object v0

    .line 446
    iget-object v1, v13, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 447
    invoke-static {v1, v0, v15}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 449
    move-result-object v2

    .line 452
    const-string v3, "doze_pulse_on_auth"

    .line 453
    const/4 v4, 0x1

    .line 455
    iget-boolean v0, v13, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 456
    if-eqz v0, :cond_5

    .line 458
    iget-object v0, v13, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 460
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 462
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 464
    move-result v0

    .line 467
    iget-object v1, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 468
    invoke-virtual {v1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 470
    move-result v0

    .line 473
    if-nez v0, :cond_4

    .line 474
    iget-boolean v0, v13, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    .line 476
    if-eqz v0, :cond_5

    .line 478
    :cond_4
    const/4 v0, 0x1

    .line 480
    move v5, v0

    .line 481
    goto :goto_2

    .line 482
    :cond_5
    move/from16 v5, v16

    .line 483
    :goto_2
    const/16 v6, 0xa

    .line 485
    const v0, 0x7f050074    # @bool/doze_long_press_uses_prox 'true'

    .line 487
    move-object/from16 v1, v21

    .line 490
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 492
    move-result v9

    .line 495
    const/4 v10, 0x0

    .line 496
    const/4 v11, 0x1

    .line 497
    move-object v0, v12

    .line 498
    move-object/from16 v1, p0

    .line 499
    move/from16 v7, v17

    .line 501
    move/from16 v8, v18

    .line 503
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZ)V

    .line 505
    aput-object v12, v14, v19

    .line 508
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    .line 510
    new-instance v1, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 512
    const/4 v2, 0x2

    .line 514
    invoke-direct {v1, v2}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    .line 515
    const-string v2, "doze_wake_display_gesture"

    .line 518
    iget-object v3, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 520
    invoke-virtual {v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    .line 522
    move-result v3

    .line 525
    if-eqz v3, :cond_6

    .line 526
    iget-object v3, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 528
    iget-object v4, v13, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 530
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 532
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 534
    move-result v4

    .line 537
    invoke-virtual {v3, v4}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 538
    move-result v3

    .line 541
    if-eqz v3, :cond_6

    .line 542
    const/4 v3, 0x1

    .line 544
    goto :goto_3

    .line 545
    :cond_6
    move/from16 v3, v16

    .line 546
    :goto_3
    const/4 v4, 0x7

    .line 548
    const-wide/16 v5, 0x0

    .line 549
    move-object/from16 p5, v0

    .line 551
    move-object/from16 p6, p0

    .line 553
    move-object/from16 p7, v1

    .line 555
    move-object/from16 p8, v2

    .line 557
    move/from16 p9, v3

    .line 559
    move/from16 p10, v4

    .line 561
    move-wide/from16 p11, v5

    .line 563
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIJ)V

    .line 565
    const/4 v1, 0x6

    .line 568
    aput-object v0, v14, v1

    .line 569
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    .line 571
    new-instance v1, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    .line 573
    const/4 v2, 0x1

    .line 575
    invoke-direct {v1, v2}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    .line 576
    const-string v3, "doze_wake_screen_gesture"

    .line 579
    iget-object v4, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 581
    invoke-virtual {v4}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    .line 583
    move-result v4

    .line 586
    const/16 v5, 0x8

    .line 587
    const/4 v6, 0x0

    .line 589
    const/4 v7, 0x0

    .line 590
    iget-object v8, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 591
    invoke-virtual {v8}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    .line 593
    move-result-wide v8

    .line 596
    move-object/from16 p5, v0

    .line 597
    move-object/from16 p7, v1

    .line 599
    move-object/from16 p8, v3

    .line 601
    move/from16 p9, v4

    .line 603
    move/from16 p10, v5

    .line 605
    move-wide/from16 p11, v8

    .line 607
    invoke-direct/range {p5 .. p12}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIJ)V

    .line 609
    const/4 v1, 0x7

    .line 612
    aput-object v0, v14, v1

    .line 613
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 615
    invoke-virtual/range {p4 .. p4}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorType()Ljava/lang/String;

    .line 617
    move-result-object v1

    .line 620
    iget-object v3, v13, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    .line 621
    invoke-static {v3, v1, v15}, Lcom/android/systemui/doze/DozeSensors;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    .line 623
    move-result-object v1

    .line 626
    const-string v3, "doze_quick_pickup_gesture"

    .line 627
    const/4 v4, 0x1

    .line 629
    iget-boolean v5, v13, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 630
    if-eqz v5, :cond_7

    .line 632
    iget-object v5, v13, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 634
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 636
    move-result v8

    .line 639
    invoke-virtual {v5, v8}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    .line 640
    move-result v5

    .line 643
    if-eqz v5, :cond_7

    .line 644
    goto :goto_4

    .line 646
    :cond_7
    move/from16 v2, v16

    .line 647
    :goto_4
    const/16 v5, 0xb

    .line 649
    const/4 v8, 0x0

    .line 651
    const/4 v9, 0x1

    .line 652
    const/4 v10, 0x0

    .line 653
    move-object/from16 p1, v0

    .line 654
    move-object/from16 p2, p0

    .line 656
    move-object/from16 p3, v1

    .line 658
    move-object/from16 p4, v3

    .line 660
    move/from16 p5, v4

    .line 662
    move/from16 p6, v2

    .line 664
    move/from16 p7, v5

    .line 666
    move/from16 p8, v6

    .line 668
    move/from16 p9, v7

    .line 670
    move/from16 p10, v8

    .line 672
    move/from16 p11, v9

    .line 674
    move/from16 p12, v10

    .line 676
    invoke-direct/range {p1 .. p12}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZZZ)V

    .line 678
    const/16 v1, 0x8

    .line 681
    aput-object v0, v14, v1

    .line 683
    iput-object v14, v13, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 685
    iget-object v0, v13, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 687
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    check-cast v0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 692
    invoke-virtual {v0}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->pause()V

    .line 694
    iget-object v0, v13, Lcom/android/systemui/doze/DozeSensors;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 697
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;

    .line 699
    invoke-direct {v1, v13}, Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/doze/DozeSensors;)V

    .line 701
    invoke-interface {v0, v1}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 704
    iget-object v0, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    .line 707
    iget-object v1, v13, Lcom/android/systemui/doze/DozeSensors;->mDevicePostureCallback:Lcom/android/systemui/doze/DozeSensors$$ExternalSyntheticLambda0;

    .line 709
    check-cast v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    .line 711
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 713
    return-void
.end method

.method public static findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 14
    if-eqz v1, :cond_4

    .line 16
    :cond_0
    const/4 v2, -0x1

    .line 18
    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 26
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Landroid/hardware/Sensor;

    .line 37
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 44
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v3

    .line 60
    if-eqz v3, :cond_1

    .line 61
    :cond_3
    return-object v2

    .line 63
    :cond_4
    const/4 p0, 0x0

    .line 64
    return-object p0
    .line 65
.end method


# virtual methods
.method public final setListening(ZZZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    .line 6
    if-ne v0, p2, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    .line 10
    if-ne v0, p3, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 15
    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    .line 17
    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    .line 19
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 21
    array-length p2, p1

    .line 23
    const/4 p3, 0x0

    .line 24
    move v0, p3

    .line 25
    move v1, v0

    .line 26
    :goto_0
    if-ge v0, p2, :cond_7

    .line 27
    aget-object v2, p1, v0

    .line 29
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 31
    const/4 v4, 0x1

    .line 33
    if-eqz v3, :cond_4

    .line 34
    iget-boolean v3, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    .line 36
    if-eqz v3, :cond_1

    .line 38
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningTouchScreenSensors:Z

    .line 40
    if-eqz v3, :cond_4

    .line 42
    :cond_1
    iget-boolean v3, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresProx:Z

    .line 44
    if-eqz v3, :cond_2

    .line 46
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningProxSensors:Z

    .line 48
    if-eqz v3, :cond_4

    .line 50
    :cond_2
    iget-boolean v3, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresAod:Z

    .line 52
    if-eqz v3, :cond_3

    .line 54
    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeSensors;->mListeningAodOnlySensors:Z

    .line 56
    if-eqz v3, :cond_4

    .line 58
    :cond_3
    move v3, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_4
    move v3, p3

    .line 62
    :goto_1
    iget-boolean v5, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 63
    if-ne v5, v3, :cond_5

    .line 65
    goto :goto_2

    .line 67
    :cond_5
    iput-boolean v3, v2, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    .line 68
    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 70
    :goto_2
    if-eqz v3, :cond_6

    .line 73
    move v1, v4

    .line 75
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_0

    .line 78
    :cond_7
    if-nez v1, :cond_8

    .line 79
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    .line 81
    iget-object p2, p0, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 83
    invoke-interface {p2, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    goto :goto_4

    .line 88
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    .line 89
    if-nez p1, :cond_a

    .line 91
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 93
    array-length p2, p1

    .line 95
    :goto_3
    if-ge p3, p2, :cond_a

    .line 96
    aget-object v0, p1, p3

    .line 98
    iget-boolean v2, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 100
    if-eqz v2, :cond_9

    .line 102
    iget-object v2, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    move-result v2

    .line 109
    if-nez v2, :cond_9

    .line 110
    iget-object v2, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 112
    iget-object v3, v2, Lcom/android/systemui/doze/DozeSensors;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 114
    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 116
    iget-object v2, v2, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Lcom/android/systemui/doze/DozeSensors$1;

    .line 118
    const/4 v4, -0x1

    .line 120
    invoke-interface {v3, v0, v2, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 121
    :cond_9
    add-int/lit8 p3, p3, 0x1

    .line 124
    goto :goto_3

    .line 126
    :cond_a
    :goto_4
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    .line 127
    return-void
    .line 129
.end method
