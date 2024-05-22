.class public final synthetic Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "NotifiSettingsManager"

    .line 7
    sget-object v1, Lcom/miui/systemui/CloudDataManager;->URI:Landroid/net/Uri;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mContext:Landroid/content/Context;

    .line 11
    const-string/jumbo v2, "systemui_float_whitelist"

    .line 13
    const-string/jumbo v3, "whitelist"

    .line 16
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 22
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    move-result-object v4

    .line 26
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 27
    move-result-object v4

    .line 30
    if-eqz v4, :cond_0

    .line 31
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v5

    .line 36
    if-nez v5, :cond_0

    .line 37
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowFloatPackages:Ljava/util/List;

    .line 39
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowFloatPackages:Ljava/util/List;

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v5

    .line 46
    const/4 v6, -0x1

    .line 47
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 48
    move-result v5

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 52
    move-result v4

    .line 55
    const/4 v7, 0x1

    .line 56
    const/4 v8, 0x0

    .line 57
    if-eq v5, v4, :cond_1

    .line 58
    move v5, v7

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v5, v8

    .line 62
    :goto_0
    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    move-result-object v9

    .line 68
    invoke-static {v9, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    :cond_2
    if-eqz v5, :cond_3

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowFloatPackages:Ljava/util/List;

    .line 74
    invoke-static {v1, v2}, Lmiui/util/NotificationFilterHelper;->updateFloatWhiteList(Landroid/content/Context;Ljava/util/List;)V

    .line 76
    :cond_3
    const-string/jumbo v2, "systemui_keyguard_whitelist"

    .line 79
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 85
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 86
    move-result-object v4

    .line 89
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 90
    move-result-object v4

    .line 93
    if-eqz v4, :cond_4

    .line 94
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 96
    move-result v5

    .line 99
    if-nez v5, :cond_4

    .line 100
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowKeyguardPackages:Ljava/util/List;

    .line 102
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowKeyguardPackages:Ljava/util/List;

    .line 104
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 106
    move-result-object v5

    .line 109
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 110
    move-result v5

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 114
    move-result v4

    .line 117
    if-eq v5, v4, :cond_5

    .line 118
    goto :goto_1

    .line 120
    :cond_5
    move v7, v8

    .line 121
    :goto_1
    if-eqz v7, :cond_6

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    move-result-object v5

    .line 127
    invoke-static {v5, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    :cond_6
    if-eqz v7, :cond_7

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowKeyguardPackages:Ljava/util/List;

    .line 133
    invoke-static {v1, v2}, Lmiui/util/NotificationFilterHelper;->updateKeyguardWhitelist(Landroid/content/Context;Ljava/util/List;)V

    .line 135
    :cond_7
    const-string/jumbo v2, "systemui_float_blacklist"

    .line 138
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 145
    move-result-object v2

    .line 148
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 149
    move-result-object v2

    .line 152
    if-eqz v2, :cond_8

    .line 153
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 155
    move-result v4

    .line 158
    if-nez v4, :cond_8

    .line 159
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mBlockFloatPackages:Ljava/util/List;

    .line 161
    :cond_8
    const-string/jumbo v2, "systemui_keyguard_blacklist"

    .line 163
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 169
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 170
    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 174
    move-result-object v2

    .line 177
    if-eqz v2, :cond_9

    .line 178
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 180
    move-result v4

    .line 183
    if-nez v4, :cond_9

    .line 184
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mBlockKeyguardPackages:Ljava/util/List;

    .line 186
    :cond_9
    const-string/jumbo v2, "systemui_badge_whitelist"

    .line 188
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v2

    .line 194
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 195
    move-result-object v2

    .line 198
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 199
    move-result-object v2

    .line 202
    if-eqz v2, :cond_a

    .line 203
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 205
    move-result v4

    .line 208
    if-nez v4, :cond_a

    .line 209
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mCanShowBadgePackages:Ljava/util/List;

    .line 211
    :cond_a
    const-string/jumbo v2, "systemui_badge_blacklist"

    .line 213
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 219
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 220
    move-result-object v2

    .line 223
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 224
    move-result-object v2

    .line 227
    if-eqz v2, :cond_b

    .line 228
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 230
    move-result v4

    .line 233
    if-nez v4, :cond_b

    .line 234
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mBlockBadgePackages:Ljava/util/List;

    .line 236
    :cond_b
    const-string v2, "MiuiFreeform"

    .line 238
    const-string/jumbo v4, "small_window_notification_whitelist"

    .line 240
    invoke-static {v1, v2, v4}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 246
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 247
    move-result-object v2

    .line 250
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 251
    move-result-object v2

    .line 254
    if-eqz v2, :cond_c

    .line 255
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 257
    move-result v4

    .line 260
    if-nez v4, :cond_c

    .line 261
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mAllowNotificationSlide:Ljava/util/List;

    .line 263
    :cond_c
    const-string/jumbo v2, "systemui_ongoing_blacklist"

    .line 265
    const-string v4, "ongoingblacklist"

    .line 268
    invoke-static {v1, v2, v4}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    move-result-object v2

    .line 273
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 274
    move-result-object v2

    .line 277
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 278
    move-result-object v2

    .line 281
    if-eqz v2, :cond_d

    .line 282
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 284
    move-result v4

    .line 287
    if-nez v4, :cond_d

    .line 288
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mBlackOngoingPackages:Ljava/util/List;

    .line 290
    :cond_d
    const-string/jumbo v2, "systemui_media_app_whitelist"

    .line 292
    invoke-static {v1, v2, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v4

    .line 298
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 299
    move-result-object v4

    .line 302
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 303
    move-result-object v4

    .line 306
    if-eqz v4, :cond_e

    .line 307
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 309
    move-result v5

    .line 312
    if-nez v5, :cond_e

    .line 313
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mMediaAppWhiteList:Ljava/util/List;

    .line 315
    :cond_e
    const-string v4, "hidden_media_custom_whitelist"

    .line 317
    invoke-static {v1, v2, v4}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v4

    .line 322
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 323
    move-result-object v4

    .line 326
    invoke-static {v4}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 327
    move-result-object v4

    .line 330
    if-eqz v4, :cond_f

    .line 331
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 333
    move-result v5

    .line 336
    if-nez v5, :cond_f

    .line 337
    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHiddenCustomActionsList:Ljava/util/List;

    .line 339
    :cond_f
    const-string v4, "disable_media_seekbar_list"

    .line 341
    invoke-static {v1, v2, v4}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    move-result-object v2

    .line 346
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 347
    move-result-object v2

    .line 350
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 351
    move-result-object v2

    .line 354
    if-eqz v2, :cond_10

    .line 355
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 357
    move-result v4

    .line 360
    if-nez v4, :cond_10

    .line 361
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mSeekBarDisabledPackages:Ljava/util/List;

    .line 363
    :cond_10
    const-string v2, "fold_timeout_in_whitelist"

    .line 365
    const-string v4, "historical_notif_whitelist"

    .line 367
    invoke-static {v1, v4, v2}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    move-result-object v2

    .line 372
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 373
    move-result v5

    .line 376
    iput v5, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHistoricalFoldingInListTimeout:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_2

    .line 379
    :catch_0
    const-string v5, "mHistoricalFoldingInListTimeout parseFloat error: "

    .line 380
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    move-result-object v2

    .line 385
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_2
    sget-object v2, Lcom/miui/systemui/CloudDataManager;->URI:Landroid/net/Uri;

    .line 389
    const-string v2, "fold_timeout"

    .line 391
    invoke-static {v1, v4, v2}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    move-result-object v2

    .line 396
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 397
    move-result v5

    .line 400
    iput v5, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHistoricalFoldingTimeout:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    goto :goto_3

    .line 403
    :catch_1
    const-string v5, "mHistoricalFoldingTimeout parseFloat error: "

    .line 404
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    move-result-object v2

    .line 409
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_3
    sget-object v2, Lcom/miui/systemui/CloudDataManager;->URI:Landroid/net/Uri;

    .line 413
    invoke-static {v1, v4, v3}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    move-result-object v2

    .line 418
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 419
    move-result-object v2

    .line 422
    invoke-static {v2}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 423
    move-result-object v2

    .line 426
    if-eqz v2, :cond_11

    .line 427
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 429
    move-result v3

    .line 432
    if-nez v3, :cond_11

    .line 433
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHistoricalFoldingWhiteList:Ljava/util/List;

    .line 435
    :cond_11
    const-string v2, "dismiss_timeout"

    .line 437
    invoke-static {v1, v4, v2}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    move-result-object v2

    .line 442
    :try_start_2
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 443
    move-result v3

    .line 446
    iput v3, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mHistoricalDismissTimeout:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 447
    goto :goto_4

    .line 449
    :catch_2
    const-string v3, "mHistoricalDismissTimeout parseFloat error: "

    .line 450
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    move-result-object v2

    .line 455
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_4
    sget-object v0, Lcom/miui/systemui/CloudDataManager;->URI:Landroid/net/Uri;

    .line 459
    const-string v0, "focused_notification_whitelist"

    .line 461
    const-string v2, "focused_notification_prompt_whitelist"

    .line 463
    invoke-static {v1, v0, v2}, Lcom/miui/systemui/CloudDataManager$Companion;->getCloudDataString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/miui/utils/CloudDataFormat;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 469
    move-result-object v0

    .line 472
    invoke-static {v0}, Lcom/miui/utils/CloudDataFormat;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    .line 473
    move-result-object v0

    .line 476
    if-eqz v0, :cond_13

    .line 477
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 479
    move-result v2

    .line 482
    if-nez v2, :cond_13

    .line 483
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mFocusedNotifPromptWhiteList:Ljava/util/List;

    .line 485
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->mFocusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 487
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 492
    move-result v2

    .line 495
    if-eqz v2, :cond_12

    .line 496
    goto :goto_5

    .line 498
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotifPackageNames:Ljava/util/List;

    .line 499
    move-object v2, p0

    .line 501
    check-cast v2, Ljava/util/ArrayList;

    .line 502
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 504
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 507
    move-result-object v1

    .line 510
    const v3, 0x7f030058    # @array/config_focused_notif_package_names_for_test

    .line 511
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 514
    move-result-object v1

    .line 517
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 518
    move-result-object v1

    .line 521
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 522
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    .line 528
    const-string/jumbo v1, "updateWhitelistCloudData: mNotifPackageNames="

    .line 530
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    move-result-object p0

    .line 542
    const-string v0, "FocusedNotifPromptContr"

    .line 543
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_13
    :goto_5
    return-void
    .line 548
.end method
