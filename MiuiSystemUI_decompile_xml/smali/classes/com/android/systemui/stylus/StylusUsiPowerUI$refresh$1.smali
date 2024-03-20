.class public final Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/stylus/StylusUsiPowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 4
    iget v2, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    .line 6
    const v3, 0x3e23d70a    # 0.16f

    .line 8
    cmpg-float v2, v2, v3

    .line 11
    const/4 v4, 0x0

    .line 13
    if-gtz v2, :cond_0

    .line 14
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v4

    .line 18
    :goto_0
    iget-boolean v5, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    .line 19
    const-class v6, Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 21
    const/4 v7, 0x0

    .line 23
    if-nez v5, :cond_13

    .line 24
    iget-object v1, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->inputManager:Landroid/hardware/input/InputManager;

    .line 26
    sget-object v5, Lcom/android/systemui/stylus/StylusUsiPowerUI$hasConnectedBluetoothStylus$1;->INSTANCE:Lcom/android/systemui/stylus/StylusUsiPowerUI$hasConnectedBluetoothStylus$1;

    .line 28
    invoke-static {v1, v5}, Lcom/android/systemui/shared/hardware/InputManagerKt;->hasInputDevice(Landroid/hardware/input/InputManager;Lkotlin/jvm/functions/Function1;)Z

    .line 30
    move-result v1

    .line 33
    if-nez v1, :cond_13

    .line 34
    if-eqz v2, :cond_13

    .line 36
    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v5, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v8, Landroid/app/Notification;

    .line 58
    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    move-result-wide v9

    .line 66
    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 67
    const/4 v9, -0x1

    .line 69
    iput v9, v8, Landroid/app/Notification;->audioStreamType:I

    .line 70
    new-instance v9, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const v10, 0x7f08111a    # @drawable/ic_power_low 'res/drawable/ic_power_low.xml'

    .line 77
    iput v10, v8, Landroid/app/Notification;->icon:I

    .line 80
    const-string v10, "StylusUsiPowerUI.dismiss"

    .line 82
    new-instance v11, Landroid/content/Intent;

    .line 84
    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v10, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 91
    move-result-object v12

    .line 94
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    move-result-object v11

    .line 98
    const/high16 v12, 0x4000000

    .line 99
    invoke-static {v10, v4, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 101
    move-result-object v10

    .line 104
    iput-object v10, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 105
    const-string v10, "StylusUsiPowerUI.click"

    .line 107
    new-instance v11, Landroid/content/Intent;

    .line 109
    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v10, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 114
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 116
    move-result-object v13

    .line 119
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    move-result-object v11

    .line 123
    invoke-static {v10, v4, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 124
    move-result-object v10

    .line 127
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 128
    move-result-object v11

    .line 131
    iget v12, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->batteryCapacity:F

    .line 132
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 134
    move-result-object v12

    .line 137
    invoke-virtual {v11, v12}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 141
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 142
    move-result-object v11

    .line 145
    iget-object v12, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->context:Landroid/content/Context;

    .line 146
    const v13, 0x7f130b3d    # @string/stylus_battery_low_percentage '%s battery remaining'

    .line 148
    invoke-virtual {v12, v13, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object v11

    .line 154
    const/16 v13, 0x1400

    .line 155
    if-nez v11, :cond_1

    .line 157
    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 160
    move-result v14

    .line 163
    if-le v14, v13, :cond_2

    .line 164
    invoke-virtual {v11, v4, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 166
    move-result-object v11

    .line 169
    :cond_2
    :goto_1
    const v14, 0x7f130b3e    # @string/stylus_battery_low_subtitle 'Connect your stylus to a charger'

    .line 170
    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v14

    .line 176
    if-nez v14, :cond_3

    .line 177
    goto :goto_2

    .line 179
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 180
    move-result v15

    .line 183
    if-le v15, v13, :cond_4

    .line 184
    invoke-virtual {v14, v4, v13}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 186
    move-result-object v13

    .line 189
    move-object v14, v13

    .line 190
    :cond_4
    :goto_2
    iget v13, v8, Landroid/app/Notification;->flags:I

    .line 191
    or-int/lit8 v13, v13, 0x10

    .line 193
    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 195
    new-instance v13, Ljava/util/ArrayList;

    .line 197
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v13, Landroid/os/Bundle;

    .line 202
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 204
    new-instance v15, Landroid/app/Notification$Builder;

    .line 207
    const-string v3, "BAT"

    .line 209
    invoke-direct {v15, v12, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    move-object/from16 p0, v5

    .line 214
    iget-wide v4, v8, Landroid/app/Notification;->when:J

    .line 216
    invoke-virtual {v15, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 218
    move-result-object v4

    .line 221
    iget v5, v8, Landroid/app/Notification;->icon:I

    .line 222
    iget v12, v8, Landroid/app/Notification;->iconLevel:I

    .line 224
    invoke-virtual {v4, v5, v12}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 226
    move-result-object v4

    .line 229
    iget-object v5, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 230
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 232
    move-result-object v4

    .line 235
    iget-object v5, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 236
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 238
    move-result-object v4

    .line 241
    iget-object v5, v8, Landroid/app/Notification;->vibrate:[J

    .line 242
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 244
    move-result-object v4

    .line 247
    iget v5, v8, Landroid/app/Notification;->ledARGB:I

    .line 248
    iget v12, v8, Landroid/app/Notification;->ledOnMS:I

    .line 250
    iget v7, v8, Landroid/app/Notification;->ledOffMS:I

    .line 252
    invoke-virtual {v4, v5, v12, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 254
    move-result-object v4

    .line 257
    iget v5, v8, Landroid/app/Notification;->flags:I

    .line 258
    and-int/lit8 v5, v5, 0x2

    .line 260
    if-eqz v5, :cond_5

    .line 262
    const/4 v5, 0x1

    .line 264
    goto :goto_3

    .line 265
    :cond_5
    const/4 v5, 0x0

    .line 266
    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 267
    move-result-object v4

    .line 270
    iget v5, v8, Landroid/app/Notification;->flags:I

    .line 271
    and-int/lit8 v5, v5, 0x8

    .line 273
    if-eqz v5, :cond_6

    .line 275
    const/4 v5, 0x1

    .line 277
    goto :goto_4

    .line 278
    :cond_6
    const/4 v5, 0x0

    .line 279
    :goto_4
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 280
    move-result-object v4

    .line 283
    iget v5, v8, Landroid/app/Notification;->flags:I

    .line 284
    and-int/lit8 v5, v5, 0x10

    .line 286
    if-eqz v5, :cond_7

    .line 288
    const/4 v5, 0x1

    .line 290
    goto :goto_5

    .line 291
    :cond_7
    const/4 v5, 0x0

    .line 292
    :goto_5
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 293
    move-result-object v4

    .line 296
    iget v5, v8, Landroid/app/Notification;->defaults:I

    .line 297
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 299
    move-result-object v4

    .line 302
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 303
    move-result-object v4

    .line 306
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 307
    move-result-object v4

    .line 310
    const/4 v5, 0x0

    .line 311
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 312
    move-result-object v4

    .line 315
    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 316
    move-result-object v4

    .line 319
    iget-object v7, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 320
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 322
    move-result-object v4

    .line 325
    iget v7, v8, Landroid/app/Notification;->flags:I

    .line 326
    and-int/lit16 v7, v7, 0x80

    .line 328
    if-eqz v7, :cond_8

    .line 330
    const/4 v7, 0x1

    .line 332
    goto :goto_6

    .line 333
    :cond_8
    const/4 v7, 0x0

    .line 334
    :goto_6
    invoke-virtual {v4, v5, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 335
    move-result-object v4

    .line 338
    const/4 v7, 0x0

    .line 339
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 340
    move-result-object v4

    .line 343
    invoke-virtual {v4, v7, v7, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 344
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 347
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 350
    move-result-object v4

    .line 353
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 354
    move-result-object v4

    .line 357
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 361
    move-result-object v1

    .line 364
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 365
    move-result v4

    .line 368
    if-nez v4, :cond_12

    .line 369
    const/4 v4, 0x1

    .line 371
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 372
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 375
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 378
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 381
    invoke-virtual {v15, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 384
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 387
    invoke-virtual {v15, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 390
    invoke-virtual {v15, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 393
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 396
    iget-object v1, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 399
    iget-object v4, v8, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 401
    invoke-virtual {v15, v1, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 403
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 406
    move-result v1

    .line 409
    if-nez v1, :cond_9

    .line 410
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 412
    move-result-object v1

    .line 415
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 416
    move-result v4

    .line 419
    if-eqz v4, :cond_9

    .line 420
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 422
    move-result-object v4

    .line 425
    check-cast v4, Ljava/lang/String;

    .line 426
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 428
    goto :goto_7

    .line 431
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 432
    move-result v1

    .line 435
    if-lez v1, :cond_c

    .line 436
    new-instance v1, Landroid/os/Bundle;

    .line 438
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 440
    const-string v4, "android.car.EXTENSIONS"

    .line 443
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 445
    move-result-object v5

    .line 448
    if-nez v5, :cond_a

    .line 449
    new-instance v5, Landroid/os/Bundle;

    .line 451
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 453
    :cond_a
    new-instance v7, Landroid/os/Bundle;

    .line 456
    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 458
    new-instance v8, Landroid/os/Bundle;

    .line 461
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 463
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    .line 466
    move-result v9

    .line 469
    if-gtz v9, :cond_b

    .line 470
    const-string v9, "invisible_actions"

    .line 472
    invoke-virtual {v5, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 474
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 477
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    invoke-virtual {v13, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 483
    move-object v5, v1

    .line 486
    const/4 v1, 0x0

    .line 487
    const/4 v4, 0x0

    .line 488
    goto :goto_8

    .line 489
    :cond_b
    const/4 v1, 0x0

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    .line 494
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    move-result-object v0

    .line 499
    invoke-static {v0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 500
    sget-object v0, Landroidx/core/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Landroid/os/Bundle;

    .line 505
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    const/4 v4, 0x0

    .line 510
    throw v4

    .line 511
    :cond_c
    const/4 v1, 0x0

    .line 512
    const/4 v4, 0x0

    .line 513
    move-object v5, v4

    .line 514
    :goto_8
    invoke-virtual {v15, v5}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 515
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 518
    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    .line 521
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 524
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 527
    const-wide/16 v7, 0x0

    .line 530
    invoke-virtual {v15, v7, v8}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    .line 532
    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 535
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 538
    move-result v3

    .line 541
    if-nez v3, :cond_d

    .line 542
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 544
    move-result-object v3

    .line 547
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 548
    move-result-object v3

    .line 551
    invoke-virtual {v3, v1, v1, v1}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 552
    move-result-object v3

    .line 555
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 556
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 559
    move-result-object v1

    .line 562
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    move-result v2

    .line 566
    if-nez v2, :cond_11

    .line 567
    const/4 v2, 0x1

    .line 569
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    .line 570
    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 573
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 576
    move-result-object v1

    .line 579
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 580
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 582
    move-result-object v3

    .line 585
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 586
    sget-object v3, Lcom/android/systemui/stylus/StylusUiEvent;->STYLUS_LOW_BATTERY_NOTIFICATION_SHOWN:Lcom/android/systemui/stylus/StylusUiEvent;

    .line 589
    invoke-virtual {v0, v3}, Lcom/android/systemui/stylus/StylusUsiPowerUI;->logUiEvent(Lcom/android/systemui/stylus/StylusUiEvent;)V

    .line 591
    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 594
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 596
    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 599
    if-eqz v3, :cond_e

    .line 601
    const-string v4, "android.support.useSideChannel"

    .line 603
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 605
    move-result v3

    .line 608
    if-eqz v3, :cond_e

    .line 609
    move v3, v2

    .line 611
    goto :goto_9

    .line 612
    :cond_e
    const/4 v3, 0x0

    .line 613
    :goto_9
    sget v2, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    .line 614
    iget-object v4, v0, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 616
    if-eqz v3, :cond_10

    .line 618
    new-instance v3, Landroidx/core/app/NotificationManagerCompat$NotifyTask;

    .line 620
    iget-object v5, v0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 622
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 624
    move-result-object v5

    .line 627
    invoke-direct {v3, v5, v2, v1}, Landroidx/core/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 628
    sget-object v5, Landroidx/core/app/NotificationManagerCompat;->sLock:Ljava/lang/Object;

    .line 631
    monitor-enter v5

    .line 633
    :try_start_0
    sget-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 634
    if-nez v1, :cond_f

    .line 636
    new-instance v1, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 638
    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 642
    move-result-object v0

    .line 645
    invoke-direct {v1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V

    .line 646
    sput-object v1, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 649
    :cond_f
    sget-object v0, Landroidx/core/app/NotificationManagerCompat;->sSideChannelManager:Landroidx/core/app/NotificationManagerCompat$SideChannelManager;

    .line 651
    iget-object v0, v0, Landroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;

    .line 653
    const/4 v1, 0x0

    .line 655
    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 656
    move-result-object v0

    .line 659
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 660
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    const/4 v0, 0x0

    .line 664
    invoke-virtual {v4, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 665
    goto :goto_a

    .line 668
    :catchall_0
    move-exception v0

    .line 669
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    throw v0

    .line 671
    :cond_10
    const/4 v0, 0x0

    .line 672
    invoke-virtual {v4, v0, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 673
    :goto_a
    return-void

    .line 676
    :cond_11
    move-object v0, v4

    .line 677
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 678
    move-result-object v1

    .line 681
    invoke-static {v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 682
    throw v0

    .line 685
    :cond_12
    move-object v0, v5

    .line 686
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 687
    move-result-object v1

    .line 690
    invoke-static {v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 691
    throw v0

    .line 694
    :cond_13
    iget-object v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 695
    iget-boolean v3, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    .line 697
    if-nez v3, :cond_14

    .line 699
    if-nez v2, :cond_15

    .line 701
    :cond_14
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 703
    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 705
    move-result-object v3

    .line 708
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 709
    const/4 v3, 0x0

    .line 712
    iput-object v3, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 713
    iget-object v1, v1, Lcom/android/systemui/stylus/StylusUsiPowerUI;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 715
    iget-object v1, v1, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    .line 717
    sget v4, Lcom/android/systemui/stylus/StylusUsiPowerUI;->USI_NOTIFICATION_ID:I

    .line 719
    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 721
    :cond_15
    if-nez v2, :cond_16

    .line 724
    iget-object v0, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI$refresh$1;->this$0:Lcom/android/systemui/stylus/StylusUsiPowerUI;

    .line 726
    const/4 v1, 0x0

    .line 728
    iput-boolean v1, v0, Lcom/android/systemui/stylus/StylusUsiPowerUI;->suppressed:Z

    .line 729
    :cond_16
    return-void
    .line 731
.end method
