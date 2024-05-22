.class public abstract Lcom/xiaomi/onetrack/util/oaid/helpers/b;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->r:[Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    .line 4
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, [Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    .line 10
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    const/4 v5, 0x0

    .line 15
    if-ge v4, v2, :cond_1

    .line 16
    aget-object v6, v0, v4

    .line 18
    iget-object v7, v6, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->q:Ljava/lang/String;

    .line 20
    move-object/from16 v8, p1

    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v7

    .line 27
    if-eqz v7, :cond_0

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    move-object/from16 v8, p1

    .line 34
    move-object v6, v5

    .line 36
    :goto_1
    const-string v0, "ro.build.freeme.label"

    .line 37
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v2

    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v2, :cond_2

    .line 48
    const-string v2, "FREEMEOS"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    move v0, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v0, v3

    .line 60
    :goto_2
    if-eqz v0, :cond_3

    .line 61
    sget-object v6, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->o:Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    .line 63
    :cond_3
    const-string v0, "ro.ssui.product"

    .line 65
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    const-string/jumbo v2, "unknown"

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    move v0, v4

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    move v0, v3

    .line 88
    :goto_3
    if-eqz v0, :cond_5

    .line 89
    sget-object v6, Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;->p:Lcom/xiaomi/onetrack/util/oaid/helpers/b$a;

    .line 91
    :cond_5
    if-eqz v6, :cond_18

    .line 93
    sget-object v0, Lcom/xiaomi/onetrack/util/oaid/helpers/c;->a:[I

    .line 95
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 97
    move-result v2

    .line 100
    aget v0, v0, v2

    .line 101
    const-string v2, "com.heytap.openid.IOpenID"

    .line 103
    const-string v6, "action.com.heytap.openid.OPEN_ID_SERVICE"

    .line 105
    const-string v7, "com.heytap.openid.IdentifyService"

    .line 107
    const-string v8, "com.heytap.openid"

    .line 109
    const-string v9, "code"

    .line 111
    const-string/jumbo v10, "value"

    .line 113
    const/4 v11, 0x3

    .line 116
    const-wide/16 v12, 0x1

    .line 117
    const-string v14, ""

    .line 119
    packed-switch v0, :pswitch_data_0

    .line 121
    goto/16 :goto_28

    .line 124
    :pswitch_0
    new-instance v2, Lcom/xiaomi/onetrack/util/oaid/helpers/m;

    .line 126
    invoke-direct {v2}, Lcom/xiaomi/onetrack/util/oaid/helpers/m;-><init>()V

    .line 128
    const-string v6, "com.mdid.msa"

    .line 131
    const-string v7, "ZTEDeviceIDHelper"

    .line 133
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 135
    move-result-object v0

    .line 138
    invoke-virtual {v0, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 147
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 151
    move-result-object v8

    .line 154
    new-instance v0, Landroid/content/Intent;

    .line 155
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v9, "com.mdid.msa.service.MsaKlService"

    .line 160
    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v9, "com.bun.msa.action.start.service"

    .line 165
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v9, "com.bun.msa.param.pkgname"

    .line 170
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :try_start_1
    const-string v10, "com.bun.msa.param.runinset"

    .line 175
    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 177
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    goto :goto_5

    .line 183
    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 188
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_5
    new-instance v0, Landroid/content/Intent;

    .line 192
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    const-string v10, "com.mdid.msa.service.MsaIdService"

    .line 197
    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v6, "com.bun.msa.action.bindto.service"

    .line 202
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v6, v2, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Lcom/xiaomi/onetrack/util/oaid/helpers/ZTEDeviceIDHelper$1;

    .line 210
    invoke-virtual {v1, v0, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 212
    move-result v0

    .line 215
    if-eqz v0, :cond_17

    .line 216
    :try_start_2
    iget-object v0, v2, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 218
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 220
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 225
    check-cast v0, Landroid/os/IBinder;

    .line 226
    if-nez v0, :cond_6

    .line 228
    goto :goto_7

    .line 230
    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 231
    move-result-object v2

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 235
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    :try_start_3
    const-string v8, "com.bun.lib.MsaIdInterface"

    .line 239
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-interface {v0, v11, v2, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 244
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 247
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 250
    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    goto :goto_6

    .line 254
    :catchall_0
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 258
    :goto_6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 264
    :try_start_5
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 267
    goto/16 :goto_19

    .line 270
    :catch_2
    move-exception v0

    .line 272
    move-object v1, v0

    .line 273
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 277
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    goto/16 :goto_19

    .line 281
    :catchall_1
    move-exception v0

    .line 283
    move-object v2, v0

    .line 284
    goto :goto_8

    .line 285
    :catch_3
    move-exception v0

    .line 286
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 290
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 291
    :goto_7
    :try_start_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 294
    goto/16 :goto_28

    .line 297
    :catch_4
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 300
    move-result-object v0

    .line 303
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    goto/16 :goto_28

    .line 307
    :goto_8
    :try_start_8
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 309
    goto :goto_9

    .line 312
    :catch_5
    move-exception v0

    .line 313
    move-object v1, v0

    .line 314
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 318
    invoke-static {v7, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_9
    throw v2

    .line 322
    :pswitch_1
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;

    .line 323
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;-><init>()V

    .line 325
    const-string v3, "OnePlusDeviceIDHelper"

    .line 328
    new-instance v5, Landroid/content/Intent;

    .line 330
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 332
    new-instance v9, Landroid/content/ComponentName;

    .line 335
    invoke-direct {v9, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v6, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->c:Lcom/xiaomi/onetrack/util/oaid/helpers/OnePlusDeviceIDHelper$1;

    .line 346
    invoke-virtual {v1, v5, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 348
    move-result v4

    .line 351
    if-eqz v4, :cond_17

    .line 352
    :try_start_9
    iget-object v4, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 354
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 356
    invoke-virtual {v4, v12, v13, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 358
    move-result-object v4

    .line 361
    check-cast v4, Landroid/os/IBinder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 362
    if-nez v4, :cond_7

    .line 364
    :try_start_a
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 366
    goto/16 :goto_28

    .line 369
    :cond_7
    :try_start_b
    sget v5, Lcom/xiaomi/onetrack/util/oaid/a/d$a;->$r8$clinit:I

    .line 371
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 373
    move-result-object v2

    .line 376
    if-eqz v2, :cond_9

    .line 377
    instance-of v5, v2, Lcom/xiaomi/onetrack/util/oaid/a/d;

    .line 379
    if-nez v5, :cond_8

    .line 381
    goto :goto_a

    .line 383
    :cond_8
    check-cast v2, Lcom/xiaomi/onetrack/util/oaid/a/d;

    .line 384
    goto :goto_b

    .line 386
    :cond_9
    :goto_a
    new-instance v2, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;

    .line 387
    invoke-direct {v2, v4}, Lcom/xiaomi/onetrack/util/oaid/a/d$a$a;-><init>(Landroid/os/IBinder;)V

    .line 389
    :goto_b
    iput-object v2, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a:Lcom/xiaomi/onetrack/util/oaid/a/d;

    .line 392
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/i;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 394
    move-result-object v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 397
    goto :goto_c

    .line 398
    :catchall_2
    move-exception v0

    .line 399
    move-object v2, v0

    .line 400
    goto :goto_d

    .line 401
    :catch_6
    move-exception v0

    .line 402
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 403
    move-result-object v0

    .line 406
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 407
    :goto_c
    :try_start_d
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 410
    goto/16 :goto_28

    .line 413
    :catch_7
    move-exception v0

    .line 415
    move-object v1, v0

    .line 416
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 420
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    goto/16 :goto_28

    .line 424
    :goto_d
    :try_start_e
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 426
    goto :goto_e

    .line 429
    :catch_8
    move-exception v0

    .line 430
    move-object v1, v0

    .line 431
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 432
    move-result-object v0

    .line 435
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_e
    throw v2

    .line 439
    :pswitch_2
    invoke-static/range {p0 .. p0}, Lcom/xiaomi/onetrack/util/n;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 440
    move-result-object v14

    .line 443
    goto/16 :goto_28

    .line 444
    :pswitch_3
    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 446
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 448
    move-result-object v2

    .line 451
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 452
    move-result-object v1

    .line 455
    const/4 v3, 0x0

    .line 456
    const/4 v4, 0x0

    .line 457
    const/4 v5, 0x0

    .line 458
    const/4 v6, 0x0

    .line 459
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 460
    move-result-object v0

    .line 463
    if-eqz v0, :cond_17

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 466
    move-result v1

    .line 469
    if-eqz v1, :cond_a

    .line 470
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 472
    move-result v1

    .line 475
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 476
    move-result-object v14

    .line 479
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 480
    goto/16 :goto_28

    .line 483
    :catch_9
    move-exception v0

    .line 485
    const-string v1, "VivoDeviceIDHelper"

    .line 486
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 488
    move-result-object v0

    .line 491
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    goto/16 :goto_28

    .line 495
    :pswitch_4
    const-string v0, "content://cn.nubia.identity/identity"

    .line 497
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 499
    move-result-object v0

    .line 502
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 503
    move-result-object v1

    .line 506
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 507
    move-result-object v0

    .line 510
    const-string v1, "getOAID"

    .line 511
    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 513
    move-result-object v1

    .line 516
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 517
    const/4 v0, -0x1

    .line 520
    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 521
    move-result v0

    .line 524
    if-nez v0, :cond_17

    .line 525
    const-string v0, "id"

    .line 527
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    move-result-object v14
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 532
    goto/16 :goto_28

    .line 533
    :catch_a
    move-exception v0

    .line 535
    const-string v1, "NubiaDeviceIDHelper"

    .line 536
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 538
    move-result-object v0

    .line 541
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    goto/16 :goto_28

    .line 545
    :pswitch_5
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;

    .line 547
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/k;-><init>()V

    .line 549
    const-string v2, "SamsungDeviceIDHelper"

    .line 552
    new-instance v6, Landroid/content/Intent;

    .line 554
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 556
    const-string v7, "com.samsung.android.deviceidservice"

    .line 559
    const-string v8, "com.samsung.android.deviceidservice.DeviceIdService"

    .line 561
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    iget-object v7, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;

    .line 566
    invoke-virtual {v1, v6, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 568
    move-result v6

    .line 571
    if-eqz v6, :cond_17

    .line 572
    :try_start_11
    iget-object v0, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 574
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 576
    invoke-virtual {v0, v12, v13, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 578
    move-result-object v0

    .line 581
    check-cast v0, Landroid/os/IBinder;

    .line 582
    if-nez v0, :cond_b

    .line 584
    goto :goto_10

    .line 586
    :cond_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 587
    move-result-object v6

    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 591
    move-result-object v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 594
    :try_start_12
    const-string v9, "com.samsung.android.deviceidservice.IDeviceIdService"

    .line 595
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-interface {v0, v4, v6, v8, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 600
    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V

    .line 603
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 606
    move-result-object v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 609
    goto :goto_f

    .line 610
    :catchall_3
    move-exception v0

    .line 611
    :try_start_13
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 612
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 618
    :goto_f
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 624
    :try_start_14
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 627
    goto/16 :goto_19

    .line 630
    :catch_b
    move-exception v0

    .line 632
    move-object v1, v0

    .line 633
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 634
    move-result-object v0

    .line 637
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    goto/16 :goto_19

    .line 641
    :catchall_4
    move-exception v0

    .line 643
    move-object v3, v0

    .line 644
    goto :goto_11

    .line 645
    :catch_c
    move-exception v0

    .line 646
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 647
    move-result-object v0

    .line 650
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 651
    :goto_10
    :try_start_16
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    .line 654
    goto/16 :goto_28

    .line 657
    :catch_d
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 660
    move-result-object v0

    .line 663
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    goto/16 :goto_28

    .line 667
    :goto_11
    :try_start_17
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e

    .line 669
    goto :goto_12

    .line 672
    :catch_e
    move-exception v0

    .line 673
    move-object v1, v0

    .line 674
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 675
    move-result-object v0

    .line 678
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_12
    throw v3

    .line 682
    :pswitch_6
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;

    .line 683
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;-><init>()V

    .line 685
    const-string v3, "OppoDeviceIDHelper"

    .line 688
    new-instance v5, Landroid/content/Intent;

    .line 690
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 692
    new-instance v9, Landroid/content/ComponentName;

    .line 695
    invoke-direct {v9, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 700
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object v6, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->c:Lcom/xiaomi/onetrack/util/oaid/helpers/OppoDeviceIDHelper$1;

    .line 706
    invoke-virtual {v1, v5, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 708
    move-result v4

    .line 711
    if-eqz v4, :cond_17

    .line 712
    :try_start_18
    iget-object v4, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 714
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 716
    invoke-virtual {v4, v12, v13, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 718
    move-result-object v4

    .line 721
    check-cast v4, Landroid/os/IBinder;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 722
    if-nez v4, :cond_c

    .line 724
    :try_start_19
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    .line 726
    goto/16 :goto_28

    .line 729
    :cond_c
    :try_start_1a
    sget v5, Lcom/xiaomi/onetrack/util/oaid/a/e$a;->$r8$clinit:I

    .line 731
    invoke-interface {v4, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 733
    move-result-object v2

    .line 736
    if-eqz v2, :cond_e

    .line 737
    instance-of v5, v2, Lcom/xiaomi/onetrack/util/oaid/a/e;

    .line 739
    if-nez v5, :cond_d

    .line 741
    goto :goto_13

    .line 743
    :cond_d
    check-cast v2, Lcom/xiaomi/onetrack/util/oaid/a/e;

    .line 744
    goto :goto_14

    .line 746
    :cond_e
    :goto_13
    new-instance v2, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;

    .line 747
    invoke-direct {v2, v4}, Lcom/xiaomi/onetrack/util/oaid/a/e$a$a;-><init>(Landroid/os/IBinder;)V

    .line 749
    :goto_14
    iput-object v2, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a:Lcom/xiaomi/onetrack/util/oaid/a/e;

    .line 752
    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/oaid/helpers/j;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 754
    move-result-object v14
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 757
    goto :goto_15

    .line 758
    :catchall_5
    move-exception v0

    .line 759
    move-object v2, v0

    .line 760
    goto :goto_16

    .line 761
    :catch_f
    move-exception v0

    .line 762
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 763
    move-result-object v0

    .line 766
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 767
    :goto_15
    :try_start_1c
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    .line 770
    goto/16 :goto_28

    .line 773
    :catch_10
    move-exception v0

    .line 775
    move-object v1, v0

    .line 776
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 777
    move-result-object v0

    .line 780
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    goto/16 :goto_28

    .line 784
    :goto_16
    :try_start_1d
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    .line 786
    goto :goto_17

    .line 789
    :catch_11
    move-exception v0

    .line 790
    move-object v1, v0

    .line 791
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 792
    move-result-object v0

    .line 795
    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_17
    throw v2

    .line 799
    :pswitch_7
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    .line 800
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 802
    move-result-object v16

    .line 805
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 806
    move-result-object v15

    .line 809
    const/16 v17, 0x0

    .line 810
    const/16 v18, 0x0

    .line 812
    :try_start_1e
    new-array v0, v4, [Ljava/lang/String;

    .line 814
    const-string v1, "oaid"

    .line 816
    aput-object v1, v0, v3

    .line 818
    const/16 v20, 0x0

    .line 820
    move-object/from16 v19, v0

    .line 822
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 824
    move-result-object v0

    .line 827
    if-nez v0, :cond_f

    .line 828
    goto :goto_18

    .line 830
    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 831
    move-result v1

    .line 834
    if-eqz v1, :cond_10

    .line 835
    goto :goto_18

    .line 837
    :cond_10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 838
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 841
    move-result v1

    .line 844
    if-lez v1, :cond_11

    .line 845
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 847
    move-result-object v5

    .line 850
    :cond_11
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 851
    move-result v1

    .line 854
    if-lez v1, :cond_12

    .line 855
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 857
    :cond_12
    const-string v1, "expired"

    .line 860
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 862
    move-result v1

    .line 865
    if-lez v1, :cond_13

    .line 866
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 868
    :cond_13
    :goto_18
    :try_start_1f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    .line 871
    :goto_19
    move-object v14, v5

    .line 874
    goto/16 :goto_28

    .line 875
    :catchall_6
    move-exception v0

    .line 877
    move-object v14, v5

    .line 878
    goto :goto_1a

    .line 879
    :catchall_7
    move-exception v0

    .line 880
    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 881
    goto/16 :goto_28

    .line 884
    :pswitch_8
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;

    .line 886
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/e;-><init>()V

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 891
    new-instance v2, Landroid/content/Intent;

    .line 894
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 896
    const-string v6, "com.zui.deviceidservice"

    .line 899
    const-string v7, "com.zui.deviceidservice.DeviceidService"

    .line 901
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    iget-object v6, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;

    .line 906
    invoke-virtual {v1, v2, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 908
    move-result v2

    .line 911
    if-eqz v2, :cond_17

    .line 912
    :try_start_20
    iget-object v0, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 914
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 916
    invoke-virtual {v0, v12, v13, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 918
    move-result-object v0

    .line 921
    check-cast v0, Landroid/os/IBinder;

    .line 922
    if-nez v0, :cond_14

    .line 924
    goto :goto_1e

    .line 926
    :cond_14
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 927
    move-result-object v2

    .line 930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 931
    move-result-object v7
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_13
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 934
    :try_start_21
    const-string v8, "com.zui.deviceidservice.IDeviceidInterface"

    .line 935
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 937
    invoke-interface {v0, v4, v2, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 940
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 943
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 946
    move-result-object v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_12
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    .line 949
    :goto_1b
    :try_start_22
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    .line 950
    goto :goto_1c

    .line 953
    :catchall_8
    move-exception v0

    .line 954
    goto :goto_1d

    .line 955
    :catch_12
    move-exception v0

    .line 956
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 957
    goto :goto_1b

    .line 960
    :goto_1c
    :try_start_24
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 961
    move-object v14, v5

    .line 964
    goto :goto_1e

    .line 965
    :goto_1d
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 966
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 969
    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    .line 972
    :catchall_9
    move-exception v0

    .line 973
    goto :goto_1f

    .line 974
    :catch_13
    move-exception v0

    .line 975
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    .line 976
    :goto_1e
    :try_start_26
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1d

    .line 979
    goto/16 :goto_28

    .line 982
    :goto_1f
    :try_start_27
    invoke-virtual {v1, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_14

    .line 984
    :catch_14
    throw v0

    .line 987
    :pswitch_9
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/d;

    .line 988
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/d;-><init>()V

    .line 990
    const-string v2, "HWDeviceIDHelper"

    .line 993
    new-instance v6, Landroid/content/Intent;

    .line 995
    const-string v7, "com.uodis.opendevice.OPENIDS_SERVICE"

    .line 997
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    const-string v7, "com.huawei.hwid"

    .line 1002
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    iget-object v7, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/d;->b:Lcom/xiaomi/onetrack/util/oaid/helpers/HWDeviceIDHelper$1;

    .line 1007
    invoke-virtual {v1, v6, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1009
    move-result v6

    .line 1012
    if-eqz v6, :cond_17

    .line 1013
    :try_start_28
    iget-object v0, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/d;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1015
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1017
    invoke-virtual {v0, v12, v13, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1019
    move-result-object v0

    .line 1022
    check-cast v0, Landroid/os/IBinder;

    .line 1023
    if-nez v0, :cond_15

    .line 1025
    goto :goto_21

    .line 1027
    :cond_15
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1028
    move-result-object v6

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1032
    move-result-object v8
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_16
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    .line 1035
    :try_start_29
    const-string v9, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 1036
    invoke-virtual {v6, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    invoke-interface {v0, v4, v6, v8, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1041
    invoke-virtual {v8}, Landroid/os/Parcel;->readException()V

    .line 1044
    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1047
    move-result-object v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    .line 1050
    goto :goto_20

    .line 1051
    :catchall_a
    move-exception v0

    .line 1052
    :try_start_2a
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1053
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1059
    :goto_20
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1062
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_16
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    .line 1065
    :try_start_2b
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_15

    .line 1068
    goto/16 :goto_19

    .line 1071
    :catch_15
    move-exception v0

    .line 1073
    move-object v1, v0

    .line 1074
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1075
    move-result-object v0

    .line 1078
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    goto/16 :goto_19

    .line 1082
    :catchall_b
    move-exception v0

    .line 1084
    move-object v3, v0

    .line 1085
    goto :goto_22

    .line 1086
    :catch_16
    move-exception v0

    .line 1087
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1088
    move-result-object v0

    .line 1091
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    .line 1092
    :goto_21
    :try_start_2d
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_17

    .line 1095
    goto/16 :goto_28

    .line 1098
    :catch_17
    move-exception v0

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1101
    move-result-object v0

    .line 1104
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    goto/16 :goto_28

    .line 1108
    :goto_22
    :try_start_2e
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18

    .line 1110
    goto :goto_23

    .line 1113
    :catch_18
    move-exception v0

    .line 1114
    move-object v1, v0

    .line 1115
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1116
    move-result-object v0

    .line 1119
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :goto_23
    throw v3

    .line 1123
    :pswitch_a
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;

    .line 1124
    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/oaid/helpers/a;-><init>()V

    .line 1126
    const-string v2, "ASUSDeviceIDHelper"

    .line 1129
    new-instance v6, Landroid/content/Intent;

    .line 1131
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1133
    const-string v7, "com.asus.msa.action.ACCESS_DID"

    .line 1136
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    new-instance v7, Landroid/content/ComponentName;

    .line 1141
    const-string v8, "com.asus.msa.SupplementaryDID"

    .line 1143
    const-string v9, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    .line 1145
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1150
    iget-object v7, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Lcom/xiaomi/onetrack/util/oaid/helpers/ASUSDeviceIDHelper$1;

    .line 1153
    invoke-virtual {v1, v6, v7, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1155
    move-result v4

    .line 1158
    if-eqz v4, :cond_17

    .line 1159
    :try_start_2f
    iget-object v0, v0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1161
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1163
    invoke-virtual {v0, v12, v13, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1165
    move-result-object v0

    .line 1168
    check-cast v0, Landroid/os/IBinder;

    .line 1169
    if-nez v0, :cond_16

    .line 1171
    goto :goto_25

    .line 1173
    :cond_16
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1174
    move-result-object v4

    .line 1177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1178
    move-result-object v6
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1a
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    .line 1181
    :try_start_30
    const-string v8, "com.asus.msa.SupplementaryDID.IDidAidlInterface"

    .line 1182
    invoke-virtual {v4, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1184
    invoke-interface {v0, v11, v4, v6, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1187
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 1190
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1193
    move-result-object v5
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    .line 1196
    goto :goto_24

    .line 1197
    :catchall_c
    move-exception v0

    .line 1198
    :try_start_31
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1199
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1205
    :goto_24
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1208
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1a
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    .line 1211
    :try_start_32
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_19

    .line 1214
    goto/16 :goto_19

    .line 1217
    :catch_19
    move-exception v0

    .line 1219
    move-object v1, v0

    .line 1220
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1221
    move-result-object v0

    .line 1224
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    goto/16 :goto_19

    .line 1228
    :catchall_d
    move-exception v0

    .line 1230
    move-object v3, v0

    .line 1231
    goto :goto_26

    .line 1232
    :catch_1a
    move-exception v0

    .line 1233
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1234
    move-result-object v0

    .line 1237
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    .line 1238
    :goto_25
    :try_start_34
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1b

    .line 1241
    goto :goto_28

    .line 1244
    :catch_1b
    move-exception v0

    .line 1245
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1246
    move-result-object v0

    .line 1249
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    goto :goto_28

    .line 1253
    :goto_26
    :try_start_35
    invoke-virtual {v1, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1c

    .line 1254
    goto :goto_27

    .line 1257
    :catch_1c
    move-exception v0

    .line 1258
    move-object v1, v0

    .line 1259
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1260
    move-result-object v0

    .line 1263
    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :goto_27
    throw v3

    .line 1267
    :catch_1d
    :cond_17
    :goto_28
    return-object v14

    .line 1268
    :cond_18
    new-instance v0, Ljava/lang/Exception;

    .line 1269
    const-string/jumbo v1, "undefined oaid method of manufacturer %s"

    .line 1271
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    .line 1274
    move-result-object v2

    .line 1277
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1278
    move-result-object v1

    .line 1281
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1282
    throw v0

    .line 1285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 1286
.end method
