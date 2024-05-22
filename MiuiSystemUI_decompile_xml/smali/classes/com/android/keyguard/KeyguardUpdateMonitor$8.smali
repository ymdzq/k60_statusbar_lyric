.class public final Lcom/android/keyguard/KeyguardUpdateMonitor$8;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(ILcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->$r8$classId:I

    .line 2
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 4
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0x12d

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_c

    .line 13
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    iget-object v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 21
    invoke-virtual {v5, v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logBroadcastReceived(Ljava/lang/String;)V

    .line 23
    const-string v5, "android.intent.action.TIME_TICK"

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v5

    .line 31
    if-nez v5, :cond_25

    .line 32
    const-string v5, "android.intent.action.TIME_SET"

    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v5

    .line 39
    if-eqz v5, :cond_0

    .line 40
    goto/16 :goto_a

    .line 42
    :cond_0
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 54
    const-string/jumbo v0, "time-zone"

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 62
    const/16 v0, 0x153

    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 65
    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 71
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 73
    goto/16 :goto_b

    .line 76
    :cond_1
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    .line 78
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v5

    .line 83
    if-eqz v5, :cond_2

    .line 84
    goto/16 :goto_b

    .line 86
    :cond_2
    const-string v5, "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"

    .line 88
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v5

    .line 93
    const/4 v6, 0x1

    .line 94
    const/4 v7, 0x2

    .line 95
    const-string v8, "KeyguardUpdateMonitor"

    .line 96
    if-eqz v5, :cond_c

    .line 98
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    move-result-object v0

    .line 105
    const-string v1, "incompatible_charger_warning_disabled"

    .line 106
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 108
    move-result v0

    .line 111
    if-ne v0, v6, :cond_3

    .line 112
    const-string v0, "containsIncompatibleChargers: disabled"

    .line 114
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto/16 :goto_2

    .line 119
    :cond_3
    const-class v0, Landroid/hardware/usb/UsbManager;

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 126
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 127
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    .line 129
    move-result-object v0

    .line 132
    if-eqz v0, :cond_a

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 135
    move-result v1

    .line 138
    if-eqz v1, :cond_4

    .line 139
    goto :goto_2

    .line 141
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 142
    move-result-object v0

    .line 145
    :cond_5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    move-result v1

    .line 149
    if-eqz v1, :cond_a

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 155
    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v5, "usbPort: "

    .line 160
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 172
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    .line 176
    move-result v2

    .line 179
    if-nez v2, :cond_6

    .line 180
    goto :goto_0

    .line 182
    :cond_6
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    .line 183
    move-result-object v1

    .line 186
    if-eqz v1, :cond_5

    .line 187
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 189
    move-result v2

    .line 192
    if-nez v2, :cond_7

    .line 193
    goto :goto_0

    .line 195
    :cond_7
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    .line 196
    move-result-object v1

    .line 199
    if-eqz v1, :cond_5

    .line 200
    array-length v2, v1

    .line 202
    if-nez v2, :cond_8

    .line 203
    goto :goto_0

    .line 205
    :cond_8
    array-length v2, v1

    .line 206
    move v5, v3

    .line 207
    :goto_1
    if-ge v5, v2, :cond_5

    .line 208
    aget v9, v1, v5

    .line 210
    if-eq v9, v6, :cond_9

    .line 212
    if-eq v9, v7, :cond_9

    .line 214
    add-int/lit8 v5, v5, 0x1

    .line 216
    goto :goto_1

    .line 218
    :cond_9
    move v3, v6

    .line 219
    goto :goto_2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "containsIncompatibleChargers()"

    .line 222
    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :cond_a
    :goto_2
    iput-boolean v3, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIncompatibleCharger:Z

    .line 227
    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 229
    iget-boolean p2, p2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIncompatibleCharger:Z

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    .line 233
    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    move-result-object p1

    .line 242
    if-nez p1, :cond_b

    .line 243
    goto :goto_3

    .line 245
    :cond_b
    new-instance v1, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    .line 246
    invoke-direct {v1, p1, p2}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(Landroid/content/Intent;Z)V

    .line 248
    :goto_3
    if-eqz v1, :cond_26

    .line 251
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 255
    new-instance p2, Lcom/miui/charge/MiuiBatteryStatus;

    .line 257
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIncompatibleCharger:Z

    .line 259
    invoke-direct {p2, v1, p0}, Lcom/miui/charge/MiuiBatteryStatus;-><init>(Lcom/android/settingslib/fuelgauge/BatteryStatus;Z)V

    .line 261
    const/16 p0, 0x12e

    .line 264
    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 266
    move-result-object p0

    .line 269
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 270
    goto/16 :goto_b

    .line 273
    :cond_c
    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v4

    .line 280
    const-string v5, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 281
    const-string v9, "android.telephony.extra.SLOT_INDEX"

    .line 283
    if-eqz v4, :cond_19

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    move-result p1

    .line 294
    if-eqz p1, :cond_18

    .line 295
    const-string/jumbo p1, "ss"

    .line 297
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 303
    invoke-virtual {p2, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 304
    move-result v4

    .line 307
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 308
    move-result v2

    .line 311
    const-string v5, "ABSENT"

    .line 312
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    move-result v5

    .line 317
    if-eqz v5, :cond_d

    .line 318
    move v7, v6

    .line 320
    goto/16 :goto_5

    .line 321
    :cond_d
    const-string v5, "LOCKED"

    .line 323
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    move-result v5

    .line 328
    if-eqz v5, :cond_11

    .line 329
    const-string v1, "reason"

    .line 331
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    move-result-object v1

    .line 336
    const-string v5, "PIN"

    .line 337
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    move-result v5

    .line 342
    if-eqz v5, :cond_e

    .line 343
    goto :goto_5

    .line 345
    :cond_e
    const-string v5, "PUK"

    .line 346
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result v5

    .line 351
    if-eqz v5, :cond_f

    .line 352
    const/4 v7, 0x3

    .line 354
    goto :goto_5

    .line 355
    :cond_f
    const-string v5, "NETWORK"

    .line 356
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    move-result v5

    .line 361
    if-eqz v5, :cond_10

    .line 362
    const/4 v7, 0x4

    .line 364
    goto :goto_5

    .line 365
    :cond_10
    const-string v5, "PERM_DISABLED"

    .line 366
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    move-result v1

    .line 371
    if-eqz v1, :cond_15

    .line 372
    const/4 v7, 0x7

    .line 374
    goto :goto_5

    .line 375
    :cond_11
    const-string v5, "CARD_IO_ERROR"

    .line 376
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    move-result v5

    .line 381
    if-eqz v5, :cond_12

    .line 382
    const/16 v7, 0x8

    .line 384
    goto :goto_5

    .line 386
    :cond_12
    const-string v5, "CARD_RESTRICTED"

    .line 387
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    move-result v5

    .line 392
    if-eqz v5, :cond_13

    .line 393
    const/16 v7, 0x9

    .line 395
    goto :goto_5

    .line 397
    :cond_13
    const-string v5, "NOT_READY"

    .line 398
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    move-result v5

    .line 403
    if-eqz v5, :cond_14

    .line 404
    const/4 v7, 0x6

    .line 406
    goto :goto_5

    .line 407
    :cond_14
    const-string v5, "READY"

    .line 408
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    move-result v5

    .line 413
    if-nez v5, :cond_16

    .line 414
    const-string v5, "LOADED"

    .line 416
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    move-result v5

    .line 421
    if-nez v5, :cond_16

    .line 422
    const-string v5, "IMSI"

    .line 424
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v1

    .line 429
    if-eqz v1, :cond_15

    .line 430
    goto :goto_4

    .line 432
    :cond_15
    move v7, v3

    .line 433
    goto :goto_5

    .line 434
    :cond_16
    :goto_4
    const/4 v7, 0x5

    .line 435
    :goto_5
    const-string v1, "rebroadcastOnUnlock"

    .line 436
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 438
    move-result v1

    .line 441
    if-eqz v1, :cond_17

    .line 442
    if-ne v7, v6, :cond_26

    .line 444
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 446
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 448
    const/16 p1, 0x152

    .line 450
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 452
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 454
    move-result-object p0

    .line 457
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 458
    goto/16 :goto_b

    .line 461
    :cond_17
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 463
    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 465
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    move-result-object p1

    .line 470
    invoke-virtual {v1, v0, v4, v2, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logSimStateFromIntent(Ljava/lang/String;IILjava/lang/String;)V

    .line 471
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 474
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 476
    const/16 p1, 0x130

    .line 478
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    move-result-object p2

    .line 483
    invoke-virtual {p0, p1, v2, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 484
    move-result-object p0

    .line 487
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 488
    goto/16 :goto_b

    .line 491
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 493
    const-string p1, "only handles intent ACTION_SIM_STATE_CHANGED"

    .line 495
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 497
    throw p0

    .line 500
    :cond_19
    const-string p1, "android.intent.action.PHONE_STATE"

    .line 501
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    move-result p1

    .line 506
    if-eqz p1, :cond_1a

    .line 507
    const-string/jumbo p1, "state"

    .line 509
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 512
    move-result-object p1

    .line 515
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 516
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 518
    const/16 p2, 0x132

    .line 520
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 522
    move-result-object p1

    .line 525
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    goto/16 :goto_b

    .line 529
    :cond_1a
    const-string p1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 531
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    move-result p1

    .line 536
    if-eqz p1, :cond_1b

    .line 537
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 539
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 541
    const/16 p1, 0x15b

    .line 543
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 545
    move-result-object p0

    .line 548
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 549
    goto/16 :goto_b

    .line 552
    :cond_1b
    const-string p1, "android.intent.action.AIRPLANE_MODE"

    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    move-result p1

    .line 559
    if-eqz p1, :cond_1c

    .line 560
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 562
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 564
    const/16 p1, 0x149

    .line 566
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    goto/16 :goto_b

    .line 571
    :cond_1c
    const-string p1, "android.intent.action.SERVICE_STATE"

    .line 573
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    move-result p1

    .line 578
    if-eqz p1, :cond_23

    .line 579
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 581
    move-result-object p1

    .line 584
    invoke-static {p1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    .line 585
    move-result-object p1

    .line 588
    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 589
    move-result v1

    .line 592
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 593
    iget-object v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 595
    invoke-virtual {v4, v0, p1, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logServiceStateIntent(Ljava/lang/String;Landroid/telephony/ServiceState;I)V

    .line 597
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 600
    if-eqz v0, :cond_22

    .line 602
    invoke-virtual {p2, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 604
    move-result p2

    .line 607
    if-ne p2, v2, :cond_1d

    .line 608
    const-string p2, "invalid slotId in handleServiceStateChange()"

    .line 610
    invoke-static {v8, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    goto :goto_9

    .line 615
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 616
    const-string v2, "ACTION_SERVICE_STATE serviceState="

    .line 618
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    const-string v2, " slotId="

    .line 626
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    move-result-object v0

    .line 637
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-class v0, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 641
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 643
    move-result-object v0

    .line 646
    check-cast v0, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 647
    iget-object v2, v0, Lcom/android/keyguard/PhoneSignalControllerImpl;->mPhoneSignalAvailable:[Z

    .line 649
    if-nez p1, :cond_1e

    .line 651
    aput-boolean v3, v2, p2

    .line 653
    goto :goto_7

    .line 655
    :cond_1e
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 656
    move-result v4

    .line 659
    if-eqz v4, :cond_20

    .line 660
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    .line 662
    move-result v4

    .line 665
    if-eq v4, v7, :cond_20

    .line 666
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    .line 668
    move-result v4

    .line 671
    if-eqz v4, :cond_1f

    .line 672
    goto :goto_6

    .line 674
    :cond_1f
    move v6, v3

    .line 675
    :cond_20
    :goto_6
    aput-boolean v6, v2, p2

    .line 676
    :goto_7
    array-length p2, v2

    .line 678
    move v4, v3

    .line 679
    move v5, v4

    .line 680
    :goto_8
    if-ge v4, p2, :cond_21

    .line 681
    aget-boolean v6, v2, v4

    .line 683
    or-int/2addr v5, v6

    .line 685
    add-int/lit8 v4, v4, 0x1

    .line 686
    goto :goto_8

    .line 688
    :cond_21
    iget-boolean p2, v0, Lcom/android/keyguard/PhoneSignalControllerImpl;->mSignalAvailable:Z

    .line 689
    if-eq p2, v5, :cond_22

    .line 691
    iput-boolean v5, v0, Lcom/android/keyguard/PhoneSignalControllerImpl;->mSignalAvailable:Z

    .line 693
    const-class p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 695
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 697
    move-result-object p2

    .line 700
    check-cast p2, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 701
    invoke-virtual {p2, v5}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->onPhoneSignalChange(Z)V

    .line 703
    :cond_22
    :goto_9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 706
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 708
    const/16 p2, 0x14a

    .line 710
    invoke-virtual {p0, p2, v1, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 712
    move-result-object p1

    .line 715
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 716
    goto :goto_b

    .line 719
    :cond_23
    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 720
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    move-result p1

    .line 725
    if-eqz p1, :cond_24

    .line 726
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 728
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 730
    const/16 p1, 0x148

    .line 732
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 734
    goto :goto_b

    .line 737
    :cond_24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 738
    move-result p1

    .line 741
    if-eqz p1, :cond_26

    .line 742
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 744
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 746
    const/16 p1, 0x151

    .line 748
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    goto :goto_b

    .line 753
    :cond_25
    :goto_a
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 754
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 756
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    :cond_26
    :goto_b
    return-void

    .line 761
    :goto_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 762
    move-result-object p1

    .line 765
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 766
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    move-result v0

    .line 771
    if-eqz v0, :cond_27

    .line 772
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 774
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 776
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 778
    goto/16 :goto_d

    .line 781
    :cond_27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    move-result v0

    .line 786
    if-eqz v0, :cond_28

    .line 787
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 789
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 791
    const/16 p2, 0x135

    .line 793
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 795
    move-result p0

    .line 798
    invoke-virtual {p1, p2, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 799
    move-result-object p0

    .line 802
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    goto/16 :goto_d

    .line 806
    :cond_28
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 810
    move-result v0

    .line 813
    const-string v1, "android.intent.extra.user_handle"

    .line 814
    if-eqz v0, :cond_29

    .line 816
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 818
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 820
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 822
    move-result p0

    .line 825
    invoke-virtual {p2, v1, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 826
    move-result p0

    .line 829
    const/16 p2, 0x14e

    .line 830
    invoke-virtual {p1, p2, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 832
    move-result-object p0

    .line 835
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    goto :goto_d

    .line 839
    :cond_29
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 840
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 842
    move-result v0

    .line 845
    if-eqz v0, :cond_2a

    .line 846
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 848
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 850
    const/16 p1, 0x154

    .line 852
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 854
    move-result p2

    .line 857
    invoke-virtual {p0, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 858
    move-result-object p1

    .line 861
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 862
    goto :goto_d

    .line 865
    :cond_2a
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 866
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 868
    move-result v0

    .line 871
    if-eqz v0, :cond_2b

    .line 872
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 874
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 876
    const/16 p1, 0x155

    .line 878
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 880
    move-result p2

    .line 883
    invoke-virtual {p0, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 884
    move-result-object p1

    .line 887
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 888
    goto :goto_d

    .line 891
    :cond_2b
    const-string p2, "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"

    .line 892
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 894
    move-result p2

    .line 897
    if-eqz p2, :cond_2c

    .line 898
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 900
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    .line 902
    const/16 p1, 0x159

    .line 904
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 906
    goto :goto_d

    .line 909
    :cond_2c
    const-string p2, "miui.intent.action.MIUI_REGION_CHANGED"

    .line 910
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 912
    move-result p1

    .line 915
    if-eqz p1, :cond_2d

    .line 916
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$8;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 918
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateMonitorInjector:Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 920
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->onRegionChanged()V

    .line 922
    :cond_2d
    :goto_d
    return-void

    .line 925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 926
.end method
