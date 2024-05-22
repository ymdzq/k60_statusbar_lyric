.class public final Lcom/xiaomi/onetrack/api/m;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public b:Lcom/xiaomi/onetrack/api/j;

.field public final f:Lcom/xiaomi/onetrack/Configuration;

.field public h:Lcom/xiaomi/onetrack/DefaultEventHook;

.field public i:Lcom/xiaomi/onetrack/util/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 9
    const-string v0, "OneTrackSdk"

    .line 11
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    :try_start_0
    sget-object v3, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 15
    const-string v4, "debug.onetrack.log"

    .line 17
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    move v4, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v4, v1

    .line 43
    :goto_0
    sput-boolean v4, Lcom/xiaomi/onetrack/util/p;->l:Z

    .line 44
    const-string v4, "debug.onetrack.upload"

    .line 46
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v5

    .line 55
    if-nez v5, :cond_1

    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    move v4, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v4, v1

    .line 72
    :goto_1
    sput-boolean v4, Lcom/xiaomi/onetrack/util/p;->b:Z

    .line 73
    const-string v4, "debug.onetrack.test"

    .line 75
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v5

    .line 84
    if-nez v5, :cond_2

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v5

    .line 90
    if-nez v5, :cond_2

    .line 91
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    move-result v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    move v3, v2

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    move v3, v1

    .line 101
    :goto_2
    sput-boolean v3, Lcom/xiaomi/onetrack/util/p;->n:Z

    .line 102
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->b()V

    .line 104
    sget-boolean v3, Lcom/xiaomi/onetrack/util/p;->n:Z

    .line 107
    sput-boolean v3, Lcom/xiaomi/onetrack/util/p;->c:Z

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    const-string/jumbo v4, "updateTestSwitch sTestEnable: "

    .line 113
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->c:Z

    .line 119
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v4, " sTestMode\uff1afalse sTestProperty\uff1a"

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->n:Z

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 137
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_3

    .line 141
    :catch_0
    move-exception v3

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    const-string v5, "LogUtil static initializer: "

    .line 145
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-static {v3, v4, v0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 150
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    const-string v4, "log on: "

    .line 155
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->l:Z

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    const-string v4, ", quick upload on: "

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->b:Z

    .line 170
    invoke-static {v3, v4, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    sget-object v3, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    .line 180
    sget-object v3, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 182
    iget-object v4, v0, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 184
    if-ne v4, v3, :cond_3

    .line 186
    const/4 v5, 0x3

    .line 188
    goto :goto_4

    .line 189
    :cond_3
    sget-object v5, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 190
    if-ne v4, v5, :cond_4

    .line 192
    const/4 v5, 0x2

    .line 194
    goto :goto_4

    .line 195
    :cond_4
    sget-object v5, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 196
    if-ne v4, v5, :cond_5

    .line 198
    move v5, v2

    .line 200
    goto :goto_4

    .line 201
    :cond_5
    move v5, v1

    .line 202
    :goto_4
    sget v6, Lcom/xiaomi/onetrack/util/q;->v:I

    .line 203
    if-gt v6, v5, :cond_6

    .line 205
    sput-boolean v1, Lcom/xiaomi/onetrack/util/q;->s:Z

    .line 207
    const/4 v6, 0x0

    .line 209
    sput-object v6, Lcom/xiaomi/onetrack/util/q;->t:Ljava/lang/String;

    .line 210
    sput v5, Lcom/xiaomi/onetrack/util/q;->v:I

    .line 212
    :cond_6
    sget-object v5, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 214
    if-nez v5, :cond_7

    .line 216
    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 218
    const/4 v7, 0x0

    .line 220
    const/4 v8, 0x1

    .line 221
    const-wide/16 v9, 0x3c

    .line 222
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 226
    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 228
    move-object v6, v5

    .line 231
    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 232
    sput-object v5, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 235
    :cond_7
    new-instance v5, Lcom/xiaomi/onetrack/util/v;

    .line 237
    invoke-direct {v5, v0}, Lcom/xiaomi/onetrack/util/v;-><init>(Lcom/xiaomi/onetrack/Configuration;)V

    .line 239
    iput-object v5, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 242
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 244
    move-result v5

    .line 247
    const-string v6, "OneTrackImp"

    .line 248
    if-eqz v5, :cond_a

    .line 250
    sget-boolean v5, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 252
    if-eqz v5, :cond_8

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    .line 256
    const-string v7, "enable:"

    .line 258
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->f()Z

    .line 263
    move-result v7

    .line 266
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 267
    const-string v7, " isSupportEmptyEvent: "

    .line 270
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->g()Z

    .line 275
    move-result v7

    .line 278
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 279
    const-string v7, "_isSupportAdMonitor():"

    .line 282
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/m;->h()Z

    .line 287
    move-result v7

    .line 290
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v5

    .line 297
    invoke-static {v6, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_8
    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->f()Z

    .line 301
    move-result v5

    .line 304
    if-eqz v5, :cond_9

    .line 305
    invoke-static {}, Lcom/xiaomi/onetrack/api/m;->g()Z

    .line 307
    move-result v5

    .line 310
    if-eqz v5, :cond_9

    .line 311
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/m;->h()Z

    .line 313
    move-result v5

    .line 316
    if-eqz v5, :cond_9

    .line 317
    move v5, v2

    .line 319
    goto :goto_5

    .line 320
    :cond_9
    move v5, v1

    .line 321
    :goto_5
    if-eqz v5, :cond_a

    .line 322
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 324
    move-result-object v5

    .line 327
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    iput-boolean v2, v5, Lcom/xiaomi/onetrack/util/o;->k:Z

    .line 331
    new-instance v5, Lcom/xiaomi/onetrack/api/ao;

    .line 333
    iget-object v7, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 335
    invoke-direct {v5, v0, v7}, Lcom/xiaomi/onetrack/api/ao;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    .line 337
    iput-object v5, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 340
    goto :goto_6

    .line 342
    :cond_a
    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    .line 343
    move-result-object v5

    .line 346
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    iput-boolean v1, v5, Lcom/xiaomi/onetrack/util/o;->k:Z

    .line 350
    new-instance v5, Lcom/xiaomi/onetrack/api/am;

    .line 352
    iget-object v7, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 354
    invoke-direct {v5, p1, v0, v7}, Lcom/xiaomi/onetrack/api/am;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)V

    .line 356
    iput-object v5, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 359
    :goto_6
    if-ne v4, v3, :cond_d

    .line 361
    sput-boolean v1, Lcom/xiaomi/onetrack/util/q;->u:Z

    .line 363
    move-object v3, p1

    .line 365
    check-cast v3, Landroid/app/Application;

    .line 366
    new-instance v4, Lcom/xiaomi/onetrack/api/r;

    .line 368
    invoke-direct {v4, p0}, Lcom/xiaomi/onetrack/api/r;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    .line 370
    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 373
    iget-boolean v0, v0, Lcom/xiaomi/onetrack/Configuration;->j:Z

    .line 376
    if-eqz v0, :cond_d

    .line 378
    sget-object v0, Lcom/xiaomi/onetrack/CrashAnalysis;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 380
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 382
    move-result v0

    .line 385
    if-eqz v0, :cond_b

    .line 386
    new-instance v0, Lcom/xiaomi/onetrack/CrashAnalysis$1;

    .line 388
    invoke-direct {v0, p1, p0}, Lcom/xiaomi/onetrack/CrashAnalysis$1;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/api/m;)V

    .line 390
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 393
    goto :goto_7

    .line 396
    :cond_b
    const-string p1, "CrashAnalysis"

    .line 397
    const-string v0, "run method has been invoked more than once"

    .line 399
    invoke-static {p1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_7
    :try_start_1
    const-string/jumbo p1, "xcrash.XCrash"

    .line 404
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    move v1, v2

    .line 410
    :catchall_0
    if-nez v1, :cond_d

    .line 411
    new-instance p1, Lcom/xiaomi/onetrack/api/k;

    .line 413
    invoke-direct {p1}, Lcom/xiaomi/onetrack/api/k;-><init>()V

    .line 415
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 418
    move-result-object v0

    .line 421
    instance-of v1, v0, Lcom/xiaomi/onetrack/api/k;

    .line 422
    if-eqz v1, :cond_c

    .line 424
    goto :goto_8

    .line 426
    :cond_c
    iput-object v0, p1, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 427
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 429
    :cond_d
    :goto_8
    sget-object p1, Lcom/xiaomi/onetrack/api/m;->c:Ljava/util/concurrent/ExecutorService;

    .line 432
    new-instance v0, Lcom/xiaomi/onetrack/api/n;

    .line 434
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/api/n;-><init>(Lcom/xiaomi/onetrack/api/m;)V

    .line 436
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 439
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 441
    new-instance p0, Ljava/lang/StringBuilder;

    .line 444
    const-string p1, "OneTrackImp init : "

    .line 446
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p2}, Lcom/xiaomi/onetrack/Configuration;->toString()Ljava/lang/String;

    .line 451
    move-result-object p1

    .line 454
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    move-result-object p0

    .line 461
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string p0, "OneTrackImp sdk ver : 2.1.0"

    .line 465
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
    .line 470
.end method

.method public static a(Lcom/xiaomi/onetrack/api/m;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 p0, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 16
    move-result-object v1

    .line 19
    move v2, v0

    .line 20
    :goto_0
    array-length v3, v1

    .line 21
    if-ge v2, v3, :cond_4

    .line 22
    aget-char v3, v1, v2

    .line 24
    if-nez v2, :cond_1

    .line 26
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 28
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    const/16 v4, 0x5f

    .line 35
    if-eq v3, v4, :cond_3

    .line 37
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 39
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    const/16 v4, 0x61

    .line 45
    if-lt v3, v4, :cond_2

    .line 47
    const/16 v4, 0x7a

    .line 49
    if-le v3, v4, :cond_3

    .line 51
    :cond_2
    const/16 v4, 0x41

    .line 53
    if-lt v3, v4, :cond_5

    .line 55
    const/16 v4, 0x5a

    .line 57
    if-gt v3, v4, :cond_5

    .line 59
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_4
    move v1, p0

    .line 64
    goto :goto_2

    .line 65
    :cond_5
    :goto_1
    move v1, v0

    .line 66
    :goto_2
    if-nez v1, :cond_6

    .line 67
    goto :goto_3

    .line 69
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 73
    const-string v2, "onetrack_"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v2

    .line 79
    if-nez v2, :cond_8

    .line 80
    const-string v2, "ot_"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v1

    .line 87
    if-eqz v1, :cond_7

    .line 88
    goto :goto_3

    .line 90
    :cond_7
    move v0, p0

    .line 91
    :cond_8
    :goto_3
    if-nez v0, :cond_9

    .line 92
    const-string v1, "Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\""

    .line 94
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 99
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 103
    const-string v1, "OneTrackImp"

    .line 104
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_9
    xor-int/2addr p0, v0

    .line 109
    return p0
    .line 110
.end method

.method public static b(Lcom/xiaomi/onetrack/api/m;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(ZLjava/util/Map;)Lorg/json/JSONObject;

    .line 7
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 11
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    new-instance v2, Lorg/json/JSONObject;

    .line 27
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    move-object v2, v1

    .line 33
    :goto_0
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/r;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 34
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string v2, "getCommonProperty: "

    .line 42
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    const-string v2, "OneTrackImp"

    .line 47
    invoke-static {p0, v0, v2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    :goto_1
    return-object v1
    .line 52
.end method

.method public static c(Lcom/xiaomi/onetrack/api/m;)V
    .locals 13

    .line 1
    const-string v0, "last_app_version"

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v1, "last_ver_code"

    .line 7
    const-string v2, "last_ver_name"

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 11
    iget-object v3, v3, Lcom/xiaomi/onetrack/Configuration;->f:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 13
    sget-object v4, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 15
    if-eq v3, v4, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    sget v3, Lcom/xiaomi/onetrack/f/a;->c:I

    .line 20
    int-to-long v7, v3

    .line 22
    sget-object v3, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 23
    new-instance v4, Lorg/json/JSONObject;

    .line 25
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 27
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v4, v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 39
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    .line 54
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 59
    move-result-wide v9

    .line 62
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 66
    cmp-long v1, v9, v7

    .line 67
    if-eqz v1, :cond_2

    .line 69
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-wide v0, Lcom/xiaomi/onetrack/f/a;->f:J

    .line 74
    iget-object v11, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 76
    iget-object v12, p0, Lcom/xiaomi/onetrack/api/m;->i:Lcom/xiaomi/onetrack/util/v;

    .line 78
    move-wide v4, v9

    .line 80
    move-wide v9, v0

    .line 81
    invoke-static/range {v4 .. v12}, Lcom/xiaomi/onetrack/api/h;->a(JLjava/lang/String;JJLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 85
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->b:Lcom/xiaomi/onetrack/api/j;

    .line 86
    const-string v1, "onetrack_upgrade"

    .line 88
    invoke-interface {p0, v1, v0}, Lcom/xiaomi/onetrack/api/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 93
    :catch_0
    move-exception p0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v1, "trackUpgradeEvent error: "

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v1, "OneTrackImp"

    .line 103
    invoke-static {p0, v0, v1}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    :cond_2
    :goto_0
    return-void
    .line 108
.end method

.method public static f()Z
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    const-string v1, "com.miui.analytics"

    .line 4
    const-string v2, "com.miui.analytics.onetrack.OneTrackService"

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    if-nez v0, :cond_1

    .line 24
    :cond_0
    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    const-string v2, "enable error:"

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v2, "OneTrackImp"

    .line 35
    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 40
    return v0
    .line 41
.end method

.method public static g()Z
    .locals 5

    .line 1
    const-string v0, "OneTrackImp"

    .line 2
    const-string/jumbo v1, "system analytics version: "

    .line 4
    const/4 v2, 0x0

    .line 7
    :try_start_0
    sget-object v3, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v3

    .line 13
    const-string v4, "com.miui.analytics"

    .line 14
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    move-result-object v3

    .line 19
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 20
    const v4, 0x7867b6b4

    .line 22
    if-lt v3, v4, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    const-string v4, "isSupportEmptyEvent error:"

    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return v2
    .line 67
.end method


# virtual methods
.method public final h()Z
    .locals 5

    .line 1
    const-string v0, "OneTrackImp"

    .line 2
    const-string/jumbo v1, "system analytics version: "

    .line 4
    const/4 v2, 0x1

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/m;->f:Lcom/xiaomi/onetrack/Configuration;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 p0, 0x0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    return v2

    .line 20
    :cond_0
    sget-boolean p0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    .line 21
    if-eqz p0, :cond_1

    .line 23
    return v2

    .line 25
    :cond_1
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object p0

    .line 31
    const-string v3, "com.miui.analytics"

    .line 32
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    move-result-object p0

    .line 38
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const v0, 0x7885ed14

    .line 56
    if-lt p0, v0, :cond_2

    .line 59
    return v2

    .line 61
    :cond_2
    return v4

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string v3, "isSupportAdMonitor error:"

    .line 66
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return v2
    .line 85
.end method
