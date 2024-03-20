.class public final Lcom/android/systemui/usb/StorageNotification$4;
.super Landroid/content/pm/PackageManager$MoveCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 2
    invoke-direct {p0}, Landroid/content/pm/PackageManager$MoveCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCreated(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/usb/StorageNotification$MoveInfo;-><init>()V

    .line 4
    iput p1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 7
    if-eqz p2, :cond_0

    .line 9
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 11
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 17
    const-string v1, "android.intent.extra.TITLE"

    .line 19
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 25
    const-string v1, "android.os.storage.extra.FS_UUID"

    .line 27
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    iput-object p2, v0, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    return-void
    .line 42
.end method

.method public final onStatusChanged(IIJ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 8
    iget-object v3, v3, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .line 16
    if-nez v3, :cond_0

    .line 18
    const-string v0, "Ignoring unknown move "

    .line 20
    const-string v2, "StorageNotification"

    .line 22
    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    return-void

    .line 27
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    .line 28
    move-result v1

    .line 31
    const-string v4, "android.os.storage.extra.VOLUME_ID"

    .line 32
    const v5, 0x534d4f56

    .line 34
    const/4 v6, 0x1

    .line 37
    const v7, 0x106001c    # @android:color/system_notification_accent_color

    .line 38
    const v8, 0x1080555    # @android:drawable/ic_signal_cellular_2_4_bar

    .line 41
    const-string v9, "DSK"

    .line 44
    const-string v10, "com.android.tv.settings"

    .line 46
    const-string v11, "com.android.settings"

    .line 48
    if-eqz v1, :cond_b

    .line 50
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    iget-object v1, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 57
    iget-object v12, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 59
    if-eqz v1, :cond_1

    .line 61
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 63
    invoke-virtual {v12, v1, v5, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 65
    goto/16 :goto_b

    .line 68
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 72
    move-result-object v5

    .line 75
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    .line 76
    move-result-object v5

    .line 79
    iget-object v13, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 80
    invoke-virtual {v13, v5}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    .line 82
    move-result-object v13

    .line 85
    const/16 v14, -0x64

    .line 86
    if-ne v2, v14, :cond_2

    .line 88
    const v2, 0x10403d2    # @android:string/fingerprint_error_no_fingerprints

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 96
    const v14, 0x10403d1    # @android:string/fingerprint_error_lockout_permanent

    .line 97
    filled-new-array {v13}, [Ljava/lang/Object;

    .line 100
    move-result-object v13

    .line 103
    invoke-virtual {v1, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object v13

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const v2, 0x10403cf    # @android:string/fingerprint_error_hw_not_present

    .line 109
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 115
    const v13, 0x10403ce    # @android:string/fingerprint_error_hw_not_available

    .line 116
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 119
    move-result-object v13

    .line 122
    :goto_0
    const-string v14, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 123
    if-eqz v5, :cond_5

    .line 125
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 127
    move-result-object v15

    .line 130
    if-eqz v15, :cond_5

    .line 131
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 133
    move-result-object v4

    .line 136
    new-instance v5, Landroid/content/Intent;

    .line 137
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 142
    move-result v15

    .line 145
    if-eqz v15, :cond_3

    .line 146
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v5, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 155
    move-result v10

    .line 158
    if-eqz v10, :cond_4

    .line 159
    goto/16 :goto_3

    .line 161
    :cond_4
    const-string v10, "com.android.settings.deviceinfo.StorageWizardReady"

    .line 163
    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    :goto_1
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 168
    move-result-object v10

    .line 171
    const-string v11, "android.os.storage.extra.DISK_ID"

    .line 172
    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    .line 177
    move-result-object v4

    .line 180
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 181
    move-result v16

    .line 184
    iget-object v15, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 185
    const/high16 v18, 0x14000000

    .line 187
    const/16 v19, 0x0

    .line 189
    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 191
    move-object/from16 v17, v5

    .line 193
    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 195
    move-result-object v0

    .line 198
    goto :goto_4

    .line 199
    :cond_5
    if-eqz v5, :cond_a

    .line 200
    new-instance v15, Landroid/content/Intent;

    .line 202
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 204
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 207
    move-result v16

    .line 210
    if-eqz v16, :cond_6

    .line 211
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 220
    move-result v10

    .line 223
    if-eqz v10, :cond_7

    .line 224
    goto :goto_3

    .line 226
    :cond_7
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 227
    move-result v10

    .line 230
    if-eqz v10, :cond_9

    .line 231
    if-eq v10, v6, :cond_8

    .line 233
    goto :goto_3

    .line 235
    :cond_8
    const-string v10, "com.android.settings.Settings$PrivateVolumeSettingsActivity"

    .line 236
    invoke-virtual {v15, v11, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    goto :goto_2

    .line 241
    :cond_9
    const-string v10, "com.android.settings.Settings$PublicVolumeSettingsActivity"

    .line 242
    invoke-virtual {v15, v11, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :goto_2
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 247
    move-result-object v10

    .line 250
    invoke-virtual {v15, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 254
    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 258
    move-result v4

    .line 261
    iget-object v14, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 262
    const/high16 v17, 0x14000000

    .line 264
    const/16 v18, 0x0

    .line 266
    sget-object v19, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 268
    move-object v0, v15

    .line 270
    move v15, v4

    .line 271
    move-object/from16 v16, v0

    .line 272
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 274
    move-result-object v0

    .line 277
    goto :goto_4

    .line 278
    :cond_a
    :goto_3
    const/4 v0, 0x0

    .line 279
    :goto_4
    new-instance v4, Landroid/app/Notification$Builder;

    .line 280
    invoke-direct {v4, v1, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 285
    move-result-object v4

    .line 288
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    .line 289
    move-result v5

    .line 292
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 293
    move-result-object v4

    .line 296
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 297
    move-result-object v2

    .line 300
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 301
    move-result-object v2

    .line 304
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 305
    move-result-object v0

    .line 308
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 309
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 311
    invoke-virtual {v2, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 314
    move-result-object v2

    .line 317
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 318
    move-result-object v0

    .line 321
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 322
    move-result-object v0

    .line 325
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 326
    move-result-object v0

    .line 329
    const-string/jumbo v2, "sys"

    .line 330
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 333
    move-result-object v0

    .line 336
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 337
    move-result-object v0

    .line 340
    const/4 v2, 0x0

    .line 341
    invoke-static {v1, v0, v2}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 342
    iget-object v1, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 345
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 347
    move-result-object v0

    .line 350
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 351
    const v3, 0x534d4f56

    .line 353
    invoke-virtual {v12, v1, v3, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 356
    goto/16 :goto_b

    .line 359
    :cond_b
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$4;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    iget-object v1, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 366
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 368
    move-result v1

    .line 371
    iget-object v5, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 372
    if-nez v1, :cond_c

    .line 374
    iget-object v1, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    .line 376
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 378
    move-result-object v1

    .line 381
    const v12, 0x10403d0    # @android:string/fingerprint_error_lockout

    .line 382
    invoke-virtual {v5, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 385
    move-result-object v1

    .line 388
    goto :goto_5

    .line 389
    :cond_c
    const v1, 0x10403d3    # @android:string/fingerprint_error_no_space

    .line 390
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    move-result-object v1

    .line 396
    :goto_5
    const-wide/16 v12, 0x0

    .line 397
    cmp-long v12, p3, v12

    .line 399
    if-gez v12, :cond_d

    .line 401
    const/4 v12, 0x0

    .line 403
    goto :goto_6

    .line 404
    :cond_d
    invoke-static/range {p3 .. p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    .line 405
    move-result-object v12

    .line 408
    :goto_6
    iget-object v13, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 409
    const-string v14, "android.content.pm.extra.MOVE_ID"

    .line 411
    if-eqz v13, :cond_10

    .line 413
    new-instance v4, Landroid/content/Intent;

    .line 415
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 417
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 420
    move-result v13

    .line 423
    if-eqz v13, :cond_e

    .line 424
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v10, "com.android.tv.settings.action.MOVE_APP"

    .line 429
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    goto :goto_7

    .line 434
    :cond_e
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 435
    move-result v10

    .line 438
    if-eqz v10, :cond_f

    .line 439
    goto :goto_8

    .line 441
    :cond_f
    const-string v10, "com.android.settings.deviceinfo.StorageWizardMoveProgress"

    .line 442
    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    :goto_7
    iget v10, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 447
    invoke-virtual {v4, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    iget-object v15, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 452
    iget v10, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 454
    const/high16 v18, 0x14000000

    .line 456
    const/16 v19, 0x0

    .line 458
    sget-object v20, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 460
    move/from16 v16, v10

    .line 462
    move-object/from16 v17, v4

    .line 464
    invoke-static/range {v15 .. v20}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 466
    move-result-object v4

    .line 469
    goto :goto_a

    .line 470
    :cond_10
    new-instance v15, Landroid/content/Intent;

    .line 471
    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 473
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    .line 476
    move-result v13

    .line 479
    if-eqz v13, :cond_11

    .line 480
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v10, "com.android.tv.settings.action.MIGRATE_STORAGE"

    .line 485
    invoke-virtual {v15, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    goto :goto_9

    .line 490
    :cond_11
    invoke-virtual {v0}, Lcom/android/systemui/usb/StorageNotification;->isAutomotive()Z

    .line 491
    move-result v10

    .line 494
    if-eqz v10, :cond_12

    .line 495
    :goto_8
    const/4 v4, 0x0

    .line 497
    goto :goto_a

    .line 498
    :cond_12
    const-string v10, "com.android.settings.deviceinfo.StorageWizardMigrateProgress"

    .line 499
    invoke-virtual {v15, v11, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    :goto_9
    iget v10, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 504
    invoke-virtual {v15, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 506
    iget-object v10, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 509
    iget-object v11, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    .line 511
    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 513
    move-result-object v10

    .line 516
    if-eqz v10, :cond_13

    .line 517
    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 519
    move-result-object v10

    .line 522
    invoke-virtual {v15, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :cond_13
    iget-object v13, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 526
    iget v14, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 528
    const/high16 v16, 0x14000000

    .line 530
    const/16 v17, 0x0

    .line 532
    sget-object v18, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 534
    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 536
    move-result-object v4

    .line 539
    :goto_a
    new-instance v10, Landroid/app/Notification$Builder;

    .line 540
    invoke-direct {v10, v5, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 545
    move-result-object v8

    .line 548
    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    .line 549
    move-result v7

    .line 552
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 553
    move-result-object v7

    .line 556
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 557
    move-result-object v1

    .line 560
    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 561
    move-result-object v1

    .line 564
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 565
    move-result-object v1

    .line 568
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 569
    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 571
    invoke-virtual {v4, v12}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 574
    move-result-object v4

    .line 577
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 578
    move-result-object v1

    .line 581
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 582
    move-result-object v1

    .line 585
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 586
    move-result-object v1

    .line 589
    const-string v4, "progress"

    .line 590
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 592
    move-result-object v1

    .line 595
    const/16 v4, 0x64

    .line 596
    const/4 v7, 0x0

    .line 598
    invoke-virtual {v1, v4, v2, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 599
    move-result-object v1

    .line 602
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 603
    move-result-object v1

    .line 606
    invoke-static {v5, v1, v7}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 607
    iget-object v2, v3, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 610
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 612
    move-result-object v1

    .line 615
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 616
    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 618
    const v4, 0x534d4f56

    .line 620
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 623
    :goto_b
    return-void
    .line 626
.end method
