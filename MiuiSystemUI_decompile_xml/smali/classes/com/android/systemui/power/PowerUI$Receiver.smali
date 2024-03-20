.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mHasReceivedBattery:Z

.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    new-instance p1, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;

    .line 15
    invoke-direct {p1, v1, p0}, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 20
    goto/16 :goto_4

    .line 23
    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 30
    const-string v0, "PowerUI"

    .line 31
    if-eqz p1, :cond_c

    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 35
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 37
    iget v2, p1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 39
    const-string v3, "level"

    .line 41
    const/16 v4, 0x64

    .line 43
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    move-result v3

    .line 48
    iput v3, p1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 49
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 51
    iget v3, p1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 53
    const-string/jumbo v4, "status"

    .line 55
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 58
    move-result v4

    .line 61
    iput v4, p1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 62
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 64
    iget v4, p1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 66
    const-string v5, "plugged"

    .line 68
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 70
    move-result v5

    .line 73
    iput v5, p1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 74
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 76
    iget v5, p1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 78
    const-string v6, "invalid_charger"

    .line 80
    const/4 v7, 0x0

    .line 82
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 83
    move-result p2

    .line 86
    iput p2, p1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 87
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 89
    iget-object p2, p1, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 91
    iput-object p2, p1, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 93
    iget p2, p1, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 95
    if-eqz p2, :cond_1

    .line 97
    move p2, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move p2, v7

    .line 101
    :goto_0
    if-eqz v4, :cond_2

    .line 102
    move v6, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move v6, v7

    .line 106
    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    .line 107
    move-result p1

    .line 110
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 111
    iget v9, v8, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 113
    invoke-virtual {v8, v9}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    .line 115
    move-result v8

    .line 118
    sget-boolean v9, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 119
    if-eqz v9, :cond_3

    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    .line 123
    const-string v11, "buckets   ....."

    .line 125
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 130
    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 132
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v11, " .. "

    .line 137
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 142
    iget-object v12, v12, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 144
    aget v12, v12, v7

    .line 146
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 154
    iget-object v11, v11, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 156
    aget v11, v11, v1

    .line 158
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v10

    .line 166
    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    .line 170
    const-string v11, "level          "

    .line 172
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, " --> "

    .line 180
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 185
    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v10

    .line 195
    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v11, "status         "

    .line 201
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 213
    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 215
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v3

    .line 223
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 227
    const-string v10, "plugType       "

    .line 229
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 240
    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 242
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v3

    .line 250
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    .line 254
    const-string v4, "invalidCharger "

    .line 256
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 267
    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v3

    .line 277
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    .line 281
    const-string v4, "bucket         "

    .line 283
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object p1

    .line 300
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    .line 304
    const-string v3, "plugged        "

    .line 306
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object p1

    .line 323
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 327
    iget-object v2, p1, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 329
    iget v3, p1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 331
    iget-wide v10, p1, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 333
    check-cast v2, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 335
    iput v3, v2, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 337
    if-ltz v8, :cond_4

    .line 339
    const-wide/16 v3, 0x0

    .line 341
    iput-wide v3, v2, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 343
    goto :goto_2

    .line 345
    :cond_4
    iget p1, v2, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 346
    if-ge v8, p1, :cond_5

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 350
    move-result-wide v3

    .line 353
    iput-wide v3, v2, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 354
    :cond_5
    :goto_2
    iput v8, v2, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 356
    if-nez v5, :cond_6

    .line 358
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 360
    iget p1, p1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 362
    if-eqz p1, :cond_6

    .line 364
    const-string/jumbo p1, "showing invalid charger warning"

    .line 366
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 372
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 374
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 376
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 380
    return-void

    .line 383
    :cond_6
    if-eqz v5, :cond_8

    .line 384
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 386
    iget v2, p1, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 388
    if-nez v2, :cond_8

    .line 390
    iget-object p1, p1, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 392
    check-cast p1, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 394
    iget-boolean v2, p1, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 396
    if-eqz v2, :cond_7

    .line 398
    const-string v2, "PowerUI.Notification"

    .line 400
    const-string v3, "dismissing invalid charger notification"

    .line 402
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_7
    iput-boolean v7, p1, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 407
    invoke-virtual {p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 409
    goto :goto_3

    .line 412
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 413
    iget-object p1, p1, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 415
    check-cast p1, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 417
    iget-boolean p1, p1, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 419
    if-eqz p1, :cond_a

    .line 421
    if-eqz v9, :cond_9

    .line 423
    const-string p0, "Bad Charger"

    .line 425
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_9
    return-void

    .line 430
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 431
    iget-object p1, p1, Lcom/android/systemui/power/PowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    .line 433
    if-eqz p1, :cond_b

    .line 435
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 437
    if-eqz v9, :cond_b

    .line 440
    const-string p1, "cancelled task"

    .line 442
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 447
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;

    .line 449
    invoke-direct {v0, p0, p2, v8}, Lcom/android/systemui/power/PowerUI$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/PowerUI$Receiver;ZI)V

    .line 451
    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 454
    move-result-object p0

    .line 457
    iput-object p0, p1, Lcom/android/systemui/power/PowerUI;->mLastShowWarningTask:Ljava/util/concurrent/Future;

    .line 458
    goto :goto_4

    .line 460
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 461
    const-string/jumbo p1, "unknown intent: "

    .line 463
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    move-result-object p0

    .line 475
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_4
    return-void
    .line 479
.end method
