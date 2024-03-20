.class public abstract Lcom/xiaomi/onetrack/f/b;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lorg/json/JSONObject;

.field public k:J


# direct methods
.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)Lorg/json/JSONObject;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 7
    const-string v2, "event"

    .line 9
    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 14
    move-result p0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    .line 21
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move p0, v2

    .line 29
    :goto_0
    if-eqz p0, :cond_1

    .line 30
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    const-string v3, "imei"

    .line 37
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0, v1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    const-string v3, "oaid"

    .line 50
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :goto_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 55
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    const-string v3, "instance_id"

    .line 63
    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string p0, ""

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v3

    .line 73
    const-string v4, "plugin_id"

    .line 74
    if-nez v3, :cond_2

    .line 76
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    goto :goto_2

    .line 81
    :cond_2
    iget-object p0, p1, Lcom/xiaomi/onetrack/Configuration;->b:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :goto_2
    const-string p0, "onetrack_user_id"

    .line 87
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 92
    const-string v3, "onetrack_user_type"

    .line 93
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v4

    .line 102
    if-nez v4, :cond_3

    .line 103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v4

    .line 108
    if-nez v4, :cond_3

    .line 109
    const-string/jumbo v4, "uid"

    .line 111
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo p0, "uid_type"

    .line 117
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_3
    const-string p0, "OsUtil"

    .line 123
    const/4 v3, 0x1

    .line 125
    const/4 v4, 0x0

    .line 126
    :try_start_0
    const-string v5, "android.os.UserHandle"

    .line 127
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 129
    move-result-object v5

    .line 132
    const-string v6, "getUserId"

    .line 133
    new-array v7, v3, [Ljava/lang/Class;

    .line 135
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 137
    aput-object v8, v7, v2

    .line 139
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 141
    move-result-object v5

    .line 144
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 148
    move-result v6

    .line 151
    new-array v7, v3, [Ljava/lang/Object;

    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v8

    .line 157
    aput-object v8, v7, v2

    .line 158
    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    const-string v4, "getUserId, uid:%d, userId:%d"

    .line 166
    const/4 v7, 0x2

    .line 168
    new-array v7, v7, [Ljava/lang/Object;

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v6

    .line 174
    aput-object v6, v7, v2

    .line 175
    aput-object v5, v7, v3

    .line 177
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    move-result-object v4

    .line 182
    invoke-static {p0, v4}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    goto :goto_4

    .line 186
    :catchall_0
    move-exception v4

    .line 187
    goto :goto_3

    .line 188
    :catchall_1
    move-exception v5

    .line 189
    move-object v9, v5

    .line 190
    move-object v5, v4

    .line 191
    move-object v4, v9

    .line 192
    :goto_3
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 196
    new-instance v6, Ljava/lang/StringBuilder;

    .line 197
    const-string v7, "getUserId exception: "

    .line 199
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 204
    move-result-object v4

    .line 207
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v4

    .line 214
    invoke-static {p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_4
    if-nez v5, :cond_4

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v5

    .line 223
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 224
    move-result p0

    .line 227
    const-string/jumbo v4, "sid"

    .line 228
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;

    .line 234
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 236
    const-string v4, "mfrs"

    .line 238
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 243
    const-string v4, "model"

    .line 245
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string p0, "platform"

    .line 250
    const-string v4, "Android"

    .line 252
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    sget-object p0, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    .line 257
    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 259
    const-string v4, "miui"

    .line 261
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    .line 266
    move-result-object p0

    .line 269
    const-string v4, "build"

    .line 270
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 275
    const-string v4, "os_ver"

    .line 277
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 282
    const-string v4, "app_ver"

    .line 284
    invoke-virtual {v0, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string p0, "e_ts"

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 291
    move-result-wide v4

    .line 294
    invoke-virtual {v0, p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 295
    const-string/jumbo p0, "tz"

    .line 298
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->b()Ljava/lang/String;

    .line 301
    move-result-object v4

    .line 304
    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-static {v1}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    .line 308
    move-result-object p0

    .line 311
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    .line 312
    move-result-object p0

    .line 315
    const-string v1, "net"

    .line 316
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    .line 321
    move-result-object p0

    .line 324
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    sget-object v1, Lcom/xiaomi/onetrack/b/a$a;->a:Lcom/xiaomi/onetrack/b/a;

    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->C:Ljava/lang/String;

    .line 332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    move-result v1

    .line 337
    if-nez v1, :cond_5

    .line 338
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 340
    move-result v1

    .line 343
    if-nez v1, :cond_5

    .line 344
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->C:Ljava/lang/String;

    .line 346
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 348
    move-result v1

    .line 351
    if-nez v1, :cond_5

    .line 352
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->B:Ljava/util/concurrent/ConcurrentHashMap;

    .line 354
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 356
    move-result-object v1

    .line 359
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 360
    move-result-object v1

    .line 363
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 364
    move-result v4

    .line 367
    if-eqz v4, :cond_5

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 370
    move-result-object v4

    .line 373
    check-cast v4, Ljava/util/Map$Entry;

    .line 374
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 376
    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    goto :goto_5

    .line 381
    :cond_5
    const-string v1, "region"

    .line 382
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string p0, "sdk_ver"

    .line 387
    const-string v1, "2.1.0"

    .line 389
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    iget-object p0, p1, Lcom/xiaomi/onetrack/Configuration;->a:Ljava/lang/String;

    .line 394
    const-string v1, "app_id"

    .line 396
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string p0, "ot_ad"

    .line 401
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 403
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 406
    const-string v1, "pkg"

    .line 408
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    iget-object p0, p1, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 413
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    move-result p0

    .line 418
    if-nez p0, :cond_6

    .line 419
    iget-object p0, p1, Lcom/xiaomi/onetrack/Configuration;->c:Ljava/lang/String;

    .line 421
    goto :goto_6

    .line 423
    :cond_6
    const-string p0, "default"

    .line 424
    :goto_6
    const-string v1, "channel"

    .line 426
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    iget-object p0, p1, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 431
    if-eqz p0, :cond_7

    .line 433
    goto :goto_7

    .line 435
    :cond_7
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 436
    :goto_7
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrack$Mode;->getType()Ljava/lang/String;

    .line 438
    move-result-object p0

    .line 441
    const-string p1, "sdk_mode"

    .line 442
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->D()V

    .line 447
    sget-object p0, Lcom/xiaomi/onetrack/util/aa;->c:Landroid/content/SharedPreferences;

    .line 450
    const-wide/16 v4, 0x0

    .line 452
    const-string p1, "first_launch_time"

    .line 454
    invoke-interface {p0, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 456
    move-result-wide p0

    .line 459
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    .line 460
    move-result p0

    .line 463
    const-string p1, "ot_first_day"

    .line 464
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 466
    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->c:Z

    .line 469
    if-eqz p0, :cond_8

    .line 471
    const-string p0, "ot_test_env"

    .line 473
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 475
    :cond_8
    iget-object p0, p2, Lcom/xiaomi/onetrack/util/v;->g:Lcom/xiaomi/onetrack/Configuration;

    .line 478
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    invoke-virtual {p2}, Lcom/xiaomi/onetrack/util/v;->b$1()Z

    .line 483
    move-result p0

    .line 486
    if-eqz p0, :cond_9

    .line 487
    const-string p0, "exprience_open"

    .line 489
    goto :goto_8

    .line 491
    :cond_9
    const-string p0, "exprience_close"

    .line 492
    :goto_8
    const-string p1, "ot_privacy_policy"

    .line 494
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string p0, "ro.product.marketname"

    .line 499
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    move-result-object p0

    .line 504
    const-string p1, "market_name"

    .line 505
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 507
    const-string p0, "ot_basic_mode"

    .line 510
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 512
    return-object v0
    .line 515
.end method
