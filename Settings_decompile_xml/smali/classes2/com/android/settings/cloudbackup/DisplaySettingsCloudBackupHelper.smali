.class Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;
.super Ljava/lang/Object;
.source "DisplaySettingsCloudBackupHelper.java"


# static fields
.field private static final BACKGROUND_BLUR_SUPPORTED:Z

.field public static final IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.vendor.audio.lightsensor.virtual"

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

    const-string/jumbo v0, "persist.sys.background_blur_supported"

    .line 137
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->BACKGROUND_BLUR_SUPPORTED:Z

    return-void
.end method

.method private static adapterRhythmicMode(Landroid/content/Context;I)V
    .locals 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterRhythmicMode type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayCloudBackupHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isSupportRhythmicMode(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "screen_mode_type"

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 417
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 431
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 427
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return-void
.end method

.method private static restoreDarkMode(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "CKDarkMode"

    .line 439
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 441
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    invoke-static {p0, v0, v2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeEnable(Landroid/content/Context;ZZ)V

    :cond_0
    const-string v0, "CKDarkModeContrastEnable"

    .line 445
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeContrastEnable(Landroid/content/Context;Z)V

    :cond_1
    const-string v0, "CKDarkModeTimeEnable"

    .line 448
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeTimeEnablePrefsOnly(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "cloud_save_darkmode_key"

    .line 453
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 454
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 455
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v2, "cloud_save_darkmode_value"

    .line 456
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    const-string v0, "CKDarkModeType"

    .line 460
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    .line 461
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "CKDarkModeEndTime"

    const-string v4, "CKDarkModeStartTime"

    if-ne v1, v2, :cond_5

    .line 462
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 463
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeStartTime(Landroid/content/Context;I)V

    .line 465
    :cond_4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 466
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeEndTime(Landroid/content/Context;I)V

    goto :goto_1

    .line 469
    :cond_5
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 470
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setSunSetTime(Landroid/content/Context;I)V

    .line 472
    :cond_6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 473
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setSunRiseTime(Landroid/content/Context;I)V

    .line 475
    :cond_7
    invoke-static {p0, v2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setSunTimeFromCloud(Landroid/content/Context;Z)V

    .line 477
    :cond_8
    :goto_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeTimeType(Landroid/content/Context;I)V

    .line 480
    :cond_9
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 481
    invoke-static {p0, v2, v2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->startDarkModeAutoTime(Landroid/content/Context;ZZ)V

    :cond_a
    return-void
.end method

.method static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    sget-boolean v1, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_e

    const-string v1, "CKPaperModeSchedulerType"

    .line 248
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "paper_mode_scheduler_type"

    .line 251
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 249
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const v1, 0xabe9

    .line 254
    invoke-static {p0, v1}, Lcom/android/settings/JobDispatcher;->scheduleJob(Landroid/content/Context;I)V

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/display/PaperModeSunTimeService;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CKPaperModeType"

    .line 259
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->adapterRhythmicMode(Landroid/content/Context;I)V

    :cond_1
    const-string v1, "CKPaperTextureLevel"

    .line 263
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "screen_paper_texture_level"

    .line 266
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string v1, "CKPaperTextureEyecareLevel"

    .line 268
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "screen_texture_eyecare_level"

    .line 271
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-string v1, "CKPaperColorType"

    .line 273
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "CKPaperColorType"

    .line 276
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "screen_texture_color_type"

    .line 274
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const-string v1, "CKClassicTempLevel"

    .line 279
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "screen_paper_mode_level"

    .line 282
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 280
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    :cond_5
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "CKPaperAutoAdjust"

    .line 285
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "screen_auto_adjust"

    .line 288
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 286
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const-string v1, "CKPaperModeTimeEnabled"

    .line 290
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "screen_paper_mode_time_enabled"

    .line 293
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 291
    invoke-static {v0, v5, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_7
    const-string v1, "CKPaperModeTimeStart"

    .line 295
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 296
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_8

    .line 297
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x5a0

    if-gt v5, v6, :cond_8

    .line 299
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 298
    invoke-static {p0, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeStartTime(Landroid/content/Context;I)V

    :cond_8
    const-string v1, "CKPaperModeTimeEnd"

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 302
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_9

    .line 303
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x5a0

    if-gt v5, v6, :cond_9

    .line 305
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 304
    invoke-static {p0, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEndTime(Landroid/content/Context;I)V

    :cond_9
    const-string v1, "CKEyecareCache"

    .line 307
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_a

    .line 310
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "persist.sys.eyecare_cache"

    .line 309
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "CKPaperMode"

    .line 312
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 313
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_b

    .line 314
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_c

    :cond_b
    const-string/jumbo v5, "screen_paper_mode"

    .line 317
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 315
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    :cond_c
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result v1

    .line 321
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeSchedulerType(Landroid/content/Context;)I

    move-result v5

    if-eqz v1, :cond_d

    goto :goto_0

    :cond_d
    move v5, v2

    .line 322
    :goto_0
    invoke-static {p0, v5}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    const-string v1, "CKPaperModeEnabled"

    .line 324
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "CKPaperModeEnabled"

    .line 327
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v5, "screen_paper_mode_enabled"

    .line 325
    invoke-static {v0, v5, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_e
    const-string/jumbo v1, "support_truetone"

    .line 330
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "CKScreenTrueTone"

    .line 331
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "screen_true_tone"

    .line 332
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    const-string v1, "CKScreenEffectMode"

    .line 335
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_11

    .line 336
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_10

    .line 337
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_10

    .line 338
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_11

    :cond_10
    const-string/jumbo v5, "screen_optimize_mode"

    .line 341
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 339
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_11
    const-string v1, "CKScreenEffectLevel"

    .line 343
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 344
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_12

    const-string/jumbo v5, "screen_color_level"

    .line 347
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 345
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    :cond_12
    sget-boolean v1, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

    if-nez v1, :cond_14

    const-string v1, "CKScreenBrightnessMode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 352
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_13

    .line 353
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    const-string/jumbo v5, "screen_brightness_mode"

    .line 356
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 354
    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14
    const-string/jumbo v1, "support_screen_effect"

    .line 358
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "CKDisplayPrefer"

    .line 359
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 360
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_15

    .line 361
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_15

    .line 362
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_16

    .line 364
    :cond_15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.display_prefer"

    .line 363
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v1, "CKLtmEnable"

    .line 366
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "CKLtmEnable"

    .line 368
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.ltm_enable"

    .line 367
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v1, "CKGamutMode"

    .line 370
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 371
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_18

    .line 373
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.gamut_mode"

    .line 372
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string v1, "CKDisplayCe"

    .line 375
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "CKDisplayCe"

    .line 377
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.display_ce"

    .line 376
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v1, "CKFontSize"

    .line 380
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1a

    .line 381
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    const-string v1, "CKFontSize"

    .line 383
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 382
    invoke-static {p0, v1}, Lcom/android/settings/display/LargeFontUtils;->sendUiModeChangeMessage(Landroid/content/Context;I)Z

    :cond_1b
    const-string v1, "CKFontWeight"

    .line 385
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1c

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const-string v1, "CKFontWeight"

    .line 386
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1e

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1e

    .line 388
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isHuanjiInProgress(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isBackupRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 389
    :cond_1d
    invoke-static {p0, v1}, Lcom/android/settings/display/LargeFontUtils;->setFontWeight(Landroid/content/Context;I)V

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_var_font_scale"

    .line 391
    invoke-static {p0}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/32 v5, 0x20000000

    .line 392
    invoke-static {v5, v6, v1}, Landroid/content/res/MiuiConfiguration;->sendThemeConfigurationChangeMsg(JLandroid/os/Bundle;)V

    :cond_1e
    const-string v1, "CKAccelerometerRotation"

    .line 397
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 398
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 399
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1f

    .line 400
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_20

    :cond_1f
    const-string v2, "accelerometer_rotation"

    .line 403
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 401
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_20
    const-string v1, "CKBackgroundBlurEnable"

    .line 406
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "CKBackgroundBlurEnable"

    .line 407
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "background_blur_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 410
    :cond_21
    invoke-static {p0, p1}, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->restoreDarkMode(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static saveDarkMode(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "CKDarkMode"

    .line 232
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKDarkModeContrastEnable"

    .line 233
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeContrastEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKDarkModeTimeEnable"

    .line 234
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKDarkModeType"

    .line 235
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getDarkModeTimeType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getDarkModeTimeType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "CKDarkModeEndTime"

    const-string v3, "CKDarkModeStartTime"

    if-ne v0, v1, :cond_0

    .line 237
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getDarkModeStartTime(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getDarkModeEndTime(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getSunSetTime(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->getSunRiseTime(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "background_blur_enable"

    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 145
    :try_start_0
    sget-boolean v3, Landroid/provider/MiuiSettings$ScreenEffect;->isScreenPaperModeSupported:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    const-string v3, "CKPaperModeEnabled"

    .line 147
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v6

    .line 146
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "CKPaperModeTimeEnabled"

    .line 149
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result v6

    .line 148
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "CKPaperModeTimeStart"

    .line 151
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeStartTime(Landroid/content/Context;)I

    move-result v6

    .line 150
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKPaperModeTimeEnd"

    .line 153
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeEndTime(Landroid/content/Context;)I

    move-result v6

    .line 152
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKEyecareCache"

    const-string/jumbo v6, "persist.sys.eyecare_cache"

    .line 154
    sget v7, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKPaperMode"

    const-string/jumbo v6, "screen_paper_mode"

    .line 156
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKPaperModeType"

    const-string/jumbo v6, "screen_mode_type"

    .line 158
    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKClassicTempLevel"

    const-string/jumbo v6, "screen_paper_mode_level"

    .line 160
    sget v7, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 162
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportPaperEyeCare()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "CKPaperTextureLevel"

    const-string/jumbo v6, "screen_paper_texture_level"

    .line 163
    sget v7, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_MODE_LEVEL:F

    float-to-int v7, v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    invoke-static {p0}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 169
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->getPaperModeType(Landroid/content/Context;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    :cond_0
    const-string v3, "CKPaperTextureEyecareLevel"

    const-string/jumbo v6, "screen_texture_eyecare_level"

    .line 170
    sget v7, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_EYECARE_LEVEL:I

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    const-string v3, "CKPaperColorType"

    const-string/jumbo v6, "screen_texture_color_type"

    .line 174
    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CKPaperAutoAdjust"

    const-string/jumbo v6, "screen_auto_adjust"

    .line 178
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string/jumbo v3, "support_truetone"

    .line 183
    invoke-static {v3, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "CKScreenTrueTone"

    const-string/jumbo v6, "screen_true_tone"

    .line 184
    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string v3, "CKScreenEffectMode"

    const-string/jumbo v6, "screen_optimize_mode"

    .line 186
    sget v7, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKScreenEffectLevel"

    const-string/jumbo v6, "screen_color_level"

    const/4 v7, 0x2

    .line 188
    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    sget-boolean v3, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->IS_VIRTUAL_LIGHT_SENSOR_DEVICE:Z

    if-nez v3, :cond_5

    const-string v3, "CKScreenBrightnessMode"

    const-string/jumbo v6, "screen_brightness_mode"

    .line 193
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    :cond_5
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "CKPaperModeSchedulerType"

    const-string/jumbo v4, "paper_mode_scheduler_type"

    .line 197
    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    const-string v3, "CKDisplayPrefer"

    const-string/jumbo v4, "persist.sys.display_prefer"

    .line 200
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CKLtmEnable"

    const-string/jumbo v4, "persist.sys.ltm_enable"

    .line 202
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CKGamutMode"

    const-string/jumbo v4, "persist.sys.gamut_mode"

    .line 204
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CKDisplayCe"

    const-string/jumbo v4, "persist.sys.display_ce"

    .line 206
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CKFontSize"

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    .line 211
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKFontWeight"

    .line 213
    invoke-static {p0}, Lcom/android/settings/display/LargeFontUtils;->getFontWeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CKAccelerometerRotation"

    const-string v4, "accelerometer_rotation"

    .line 214
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    sget-boolean v3, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v3, :cond_7

    const/4 v3, -0x1

    .line 218
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_7

    const-string v3, "CKBackgroundBlurEnable"

    .line 220
    invoke-static {v2, v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 219
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    :cond_7
    invoke-static {p0, v1}, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->saveDarkMode(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DisplayCloudBackupHelper"

    const-string v2, "build json error: "

    .line 224
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    invoke-static {}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException()V

    :goto_0
    return-object v1
.end method
