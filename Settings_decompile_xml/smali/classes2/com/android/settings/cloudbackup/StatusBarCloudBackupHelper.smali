.class Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;
.super Ljava/lang/Object;
.source "StatusBarCloudBackupHelper.java"


# direct methods
.method private static getBatteryIndicatorStyle(Landroid/content/Context;)I
    .locals 2

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "battery_indicator_style"

    const/4 v1, 0x1

    .line 435
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getCustomCarrier(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-ltz p1, :cond_1

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status_bar_custom_carrier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 478
    invoke-static {p0, p1, v0}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFsgNavBar(Landroid/content/Context;)Z
    .locals 1

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    .line 405
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getQuickSettingsOrder(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sysui_qs_tiles"

    .line 419
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScreenKeyOrder(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_key_order"

    .line 399
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShowCarrierStyle(Landroid/content/Context;)I
    .locals 2

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_show_custom_carrier"

    .line 446
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getShowCustomCarrierDefault()I

    move-result v1

    .line 443
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getShowCarrierUnderKeyguard(Landroid/content/Context;)I
    .locals 2

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_show_carrier_under_keyguard"

    const/4 v1, 0x1

    .line 459
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getStatusBarStyle(Landroid/content/Context;)I
    .locals 2

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_style_type"

    const/4 v1, 0x0

    .line 411
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getTileHostEditedStatus(Landroid/content/Context;)I
    .locals 3

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    .line 430
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string/jumbo v2, "tile_host_edited_by_user"

    .line 426
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static isProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "CKNotificationFold"

    .line 228
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 229
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setUserFold(Landroid/content/Context;Z)V

    :cond_1
    const-string v0, "CKNotificationAggregate"

    .line 232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setUserAggregate(Landroid/content/Context;I)V

    :cond_2
    const-string v0, "CKNotificationBucket"

    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "persist.sys.notification_rank"

    .line 238
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "CKNotificationBucketVersion"

    .line 240
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "persist.sys.notification_ver"

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "CKFoldFooterIcon"

    .line 245
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 246
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setShowFoldFooterIcons(Landroid/content/Context;Z)V

    :cond_5
    const-string v0, "CKStatusBarStyle"

    .line 250
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_style_type"

    .line 254
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 251
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const-string v0, "CKQuickSettingsOrder"

    .line 258
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    const-string v0, "CKTileHostEditedStatus"

    .line 266
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 270
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 271
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string/jumbo v3, "tile_host_edited_by_user"

    .line 267
    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8
    const-string v0, "CKNotificationIcon"

    .line 275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 277
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 276
    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setShowNotificationIcon(Landroid/content/Context;Z)V

    :cond_9
    const-string v0, "CKNetworkSpeed"

    .line 280
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 282
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 281
    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setShowNetworkSpeed(Landroid/content/Context;Z)V

    :cond_a
    const-string v0, "CKShowCarrierStyle"

    .line 285
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 286
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->setShowCarrierStyle(Landroid/content/Context;I)V

    goto :goto_0

    :cond_b
    const-string v0, "CKShowCarrier"

    .line 288
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 290
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 289
    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setShowCarrier(Landroid/content/Context;Z)V

    :cond_c
    :goto_0
    const-string v0, "CKShowCarrierUnderKeyguard"

    .line 293
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 294
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->setShowCarrierUnderKeygurad(Landroid/content/Context;I)V

    :cond_d
    const-string v0, "CKCustomCarrierSim0"

    .line 298
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->setCustomCarrier(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "CKCustomCarrierSim1"

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->setCustomCarrier(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "CKBatteryIndicatorStyle"

    .line 301
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "battery_indicator_style"

    .line 305
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 302
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    const-string v0, "CKCollapseToggle"

    .line 309
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 311
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 310
    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setCollapseAfterClicked(Landroid/content/Context;Z)V

    :cond_f
    const-string v0, "CKKeyguardExpand"

    .line 314
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 316
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 315
    invoke-static {p0, v0}, Landroid/app/MiuiStatusBarManager;->setExpandableUnderKeyguard(Landroid/content/Context;Z)V

    :cond_10
    const-string v0, "CKKeyguardExpandControlPanel"

    .line 318
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 320
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 319
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setExpandableUnderLockscreen(Landroid/content/Context;I)V

    :cond_11
    const-string v0, "CKKeyguardSmartDeviceControl"

    .line 323
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 325
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 324
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    :cond_12
    const-string v0, "CKKeyguardAllowTrivialControls"

    .line 328
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 330
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenAllowTrivialControls(Landroid/content/Context;I)V

    :cond_13
    const-string v0, "CKShadeShortcut"

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 335
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 334
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setNotificationShadeShortcut(Landroid/content/Context;I)V

    :cond_14
    const-string v0, "CKNotificationStyle"

    .line 338
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 340
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setNotificationStyle(Landroid/content/Context;I)V

    :cond_15
    const-string v0, "CKUseControlPanel"

    .line 343
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 345
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 344
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setUseControlPanel(Landroid/content/Context;I)V

    :cond_16
    const-string v0, "CKWordlessMode"

    .line 348
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "CKWordlessMode"

    .line 349
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setWordlessMode(Landroid/content/Context;Z)V

    :cond_17
    const-string v0, "CKSmartDeviceControl"

    .line 352
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "CKSmartDeviceControl"

    .line 354
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 353
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    :cond_18
    const-string v0, "CKQuickControlAllDevices"

    .line 357
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "CKQuickControlAllDevices"

    .line 359
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 358
    invoke-static {p0, v0}, Lcom/android/settings/utils/StatusBarUtils;->setQuickControlAllDevices(Landroid/content/Context;Z)V

    :cond_19
    const-string v0, "CKLSShowNotifications"

    .line 362
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CKLSShowNotifications"

    .line 364
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "lock_screen_show_notifications"

    .line 363
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1a
    const-string v0, "CKLSAllowPrivateNotifications"

    .line 367
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CKLSAllowPrivateNotifications"

    .line 369
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "lock_screen_allow_private_notifications"

    .line 368
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    :cond_1b
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "CKForceFsgNavBar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CKForceFsgNavBar"

    .line 374
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "force_fsg_nav_bar"

    .line 373
    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :cond_1c
    const-string v0, "CKScreenKeyOrder"

    .line 377
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CKScreenKeyOrder"

    .line 379
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screen_key_order"

    .line 378
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1d
    const-string v0, "CKShowMistakeTouchToast"

    .line 382
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CKShowMistakeTouchToast"

    .line 384
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "show_mistake_touch_toast"

    .line 383
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    :cond_1e
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "CKHideGestureLine"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "CKHideGestureLine"

    .line 389
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "hide_gesture_line"

    .line 388
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1f
    return-void
.end method

.method static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, ""

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "CKNotificationFold"

    .line 140
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isUserFold(Landroid/content/Context;)Z

    move-result v3

    .line 139
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "CKNotificationAggregate"

    .line 142
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getUserAggregate(Landroid/content/Context;)I

    move-result v3

    .line 141
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "CKNotificationBucket"

    const-string/jumbo v3, "persist.sys.notification_rank"

    .line 144
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "CKNotificationBucketVersion"

    const-string/jumbo v3, "persist.sys.notification_ver"

    .line 146
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKFoldFooterIcon"

    .line 148
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isShowFoldFooterIcons(Landroid/content/Context;)Z

    move-result v2

    .line 147
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKStatusBarStyle"

    .line 150
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getStatusBarStyle(Landroid/content/Context;)I

    move-result v2

    .line 149
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKQuickSettingsOrder"

    .line 152
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getQuickSettingsOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKTileHostEditedStatus"

    .line 154
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getTileHostEditedStatus(Landroid/content/Context;)I

    move-result v2

    .line 153
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKNotificationIcon"

    .line 156
    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    move-result v2

    .line 155
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKNetworkSpeed"

    .line 158
    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    move-result v2

    .line 157
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKShowCarrierStyle"

    .line 160
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getShowCarrierStyle(Landroid/content/Context;)I

    move-result v2

    .line 159
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKShowCarrierUnderKeyguard"

    .line 162
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getShowCarrierUnderKeyguard(Landroid/content/Context;)I

    move-result v2

    .line 161
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKCustomCarrierSim0"

    const/4 v2, 0x0

    .line 164
    invoke-static {p0, v2}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getCustomCarrier(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKCustomCarrierSim1"

    const/4 v3, 0x1

    .line 166
    invoke-static {p0, v3}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getCustomCarrier(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CKBatteryIndicatorStyle"

    .line 168
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getBatteryIndicatorStyle(Landroid/content/Context;)I

    move-result v3

    .line 167
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKCollapseToggle"

    .line 170
    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    move-result v3

    .line 169
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKKeyguardExpand"

    .line 173
    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v3

    .line 172
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKKeyguardExpandControlPanel"

    .line 175
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v3

    .line 174
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKKeyguardSmartDeviceControl"

    .line 177
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v3

    .line 176
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKKeyguardAllowTrivialControls"

    .line 179
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenAllowTrivialControls(Landroid/content/Context;)I

    move-result v3

    .line 178
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKShadeShortcut"

    .line 182
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getNotificationShadeShortcut(Landroid/content/Context;)I

    move-result v3

    .line 181
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKNotificationStyle"

    .line 184
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getNotificationStyle(Landroid/content/Context;)I

    move-result v3

    .line 183
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKUseControlPanel"

    .line 187
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v3

    .line 186
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKWordlessMode"

    .line 189
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isWordlessMode(Landroid/content/Context;)Z

    move-result v3

    .line 188
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKSmartDeviceControl"

    .line 191
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v3

    .line 190
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "CKQuickControlAllDevices"

    .line 193
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isQuickControlAllDevicesOn(Landroid/content/Context;)Z

    move-result v3

    .line 192
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKForceFsgNavBar"

    .line 196
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getFsgNavBar(Landroid/content/Context;)Z

    move-result v3

    .line 195
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "CKScreenKeyOrder"

    .line 198
    invoke-static {p0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->getScreenKeyOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "CKLSShowNotifications"

    .line 202
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_allow_private_notifications"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "CKLSAllowPrivateNotifications"

    .line 206
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "show_mistake_touch_toast"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string v2, "CKShowMistakeTouchToast"

    .line 210
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v3, :cond_3

    const-string v0, "CKHideGestureLine"

    .line 214
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "StatusBarCloudBackupHelper"

    const-string v0, "Build JSON failed. "

    .line 217
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static setCustomCarrier(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status_bar_custom_carrier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 489
    invoke-static {p0, p2, p1}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static setShowCarrierStyle(Landroid/content/Context;I)V
    .locals 1

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_show_custom_carrier"

    .line 451
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setShowCarrierUnderKeygurad(Landroid/content/Context;I)V
    .locals 1

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_show_carrier_under_keyguard"

    .line 467
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
