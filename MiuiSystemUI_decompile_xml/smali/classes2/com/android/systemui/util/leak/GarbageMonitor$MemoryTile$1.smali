.class public final Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;
.super Ljava/lang/Thread;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 2
    const-string p1, "HeapDumpThread"

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    const-wide/16 v2, 0x1f4

    .line 4
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iget-object v0, v1, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 11
    iget-object v2, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 13
    iget-object v3, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mDumpTruck:Lcom/android/systemui/util/leak/DumpTruck;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v4, Ljava/io/File;

    .line 20
    iget-object v5, v3, Lcom/android/systemui/util/leak/DumpTruck;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 24
    move-result-object v0

    .line 27
    const-string v6, "leak"

    .line 28
    invoke-direct {v4, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 33
    const/4 v0, 0x0

    .line 36
    iput-object v0, v3, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 37
    iget-object v6, v3, Lcom/android/systemui/util/leak/DumpTruck;->body:Ljava/lang/StringBuilder;

    .line 39
    const/4 v7, 0x0

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 42
    const-string v0, "Build: "

    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, "\n\nProcesses:\n"

    .line 55
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v8, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 65
    move-result v9

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v2

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 76
    const-string v10, "DumpTruck"

    .line 77
    const-string v11, "\n"

    .line 79
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/Long;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 89
    move-result v0

    .line 92
    const-string v12, "  pid "

    .line 93
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    iget-object v12, v3, Lcom/android/systemui/util/leak/DumpTruck;->mGarbageMonitor:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 101
    iget-object v12, v12, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 103
    int-to-long v13, v0

    .line 105
    invoke-virtual {v12, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 106
    move-result-object v12

    .line 109
    check-cast v12, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 110
    if-eqz v12, :cond_0

    .line 112
    const-string v13, ":"

    .line 114
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v13, " up="

    .line 119
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    move-result-wide v13

    .line 127
    move-object v15, v8

    .line 128
    iget-wide v7, v12, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    .line 129
    sub-long/2addr v13, v7

    .line 131
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    const-string v7, " rss="

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-wide v7, v12, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentRss:J

    .line 140
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 142
    iget-wide v7, v12, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentRss:J

    .line 145
    iput-wide v7, v3, Lcom/android/systemui/util/leak/DumpTruck;->rss:J

    .line 147
    goto :goto_1

    .line 149
    :cond_0
    move-object v15, v8

    .line 150
    :goto_1
    if-ne v0, v9, :cond_1

    .line 151
    new-instance v7, Ljava/io/File;

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v0

    .line 158
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 159
    move-result-object v0

    .line 162
    const-string v8, "heap-%d.ahprof"

    .line 163
    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 168
    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 175
    :try_start_1
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    move-object v7, v15

    .line 179
    :try_start_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v0, " (hprof attached)"

    .line 183
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 185
    goto :goto_3

    .line 188
    :catch_1
    move-exception v0

    .line 189
    goto :goto_2

    .line 190
    :catch_2
    move-exception v0

    .line 191
    move-object v7, v15

    .line 192
    :goto_2
    const-string v8, "error dumping memory:"

    .line 193
    invoke-static {v10, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const-string v8, "\n** Could not dump heap: \n"

    .line 198
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 206
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    goto :goto_3

    .line 213
    :cond_1
    move-object v7, v15

    .line 214
    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    move-object v8, v7

    .line 218
    const/4 v7, 0x0

    .line 219
    goto/16 :goto_0

    .line 220
    :cond_2
    move-object v7, v8

    .line 222
    const/4 v2, 0x1

    .line 223
    :try_start_3
    new-instance v0, Ljava/io/File;

    .line 224
    const-string v8, "hprof-%d.zip"

    .line 226
    new-array v9, v2, [Ljava/lang/Object;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 230
    move-result-wide v12

    .line 233
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 234
    move-result-object v12

    .line 237
    const/4 v13, 0x0

    .line 238
    aput-object v12, v9, v13

    .line 239
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    move-result-object v8

    .line 244
    invoke-direct {v0, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 248
    move-result-object v0

    .line 251
    invoke-static {v0, v7}, Lcom/android/systemui/util/leak/DumpTruck;->zipUp(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 252
    move-result v4

    .line 255
    if-eqz v4, :cond_3

    .line 256
    new-instance v4, Ljava/io/File;

    .line 258
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v0, "com.android.systemui.fileprovider"

    .line 263
    invoke-static {v5, v0, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 265
    move-result-object v0

    .line 268
    iput-object v0, v3, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 269
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    goto :goto_4

    .line 274
    :catch_3
    move-exception v0

    .line 275
    const-string/jumbo v4, "unable to zip up heapdumps"

    .line 276
    invoke-static {v10, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    const-string v4, "\n** Could not zip up files: \n"

    .line 282
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 287
    move-result-object v0

    .line 290
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_3
    :goto_4
    new-instance v0, Landroid/content/Intent;

    .line 297
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 299
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    const/high16 v4, 0x10000000

    .line 304
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    iget-wide v4, v3, Lcom/android/systemui/util/leak/DumpTruck;->rss:J

    .line 312
    const-wide/16 v7, 0x400

    .line 314
    div-long/2addr v4, v7

    .line 316
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 317
    move-result-object v4

    .line 320
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 321
    move-result-object v4

    .line 324
    const-string v5, "SystemUI memory dump (rss=%dM)"

    .line 325
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 327
    move-result-object v4

    .line 330
    const-string v5, "android.intent.extra.SUBJECT"

    .line 331
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    move-result-object v4

    .line 339
    const-string v5, "android.intent.extra.TEXT"

    .line 340
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    iget-object v4, v3, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 345
    if-eqz v4, :cond_4

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    .line 349
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v5, v3, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 354
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    const-string v5, "application/zip"

    .line 359
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v5, "android.intent.extra.STREAM"

    .line 364
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 366
    new-instance v4, Landroid/content/ClipData;

    .line 369
    new-instance v5, Landroid/content/ClipDescription;

    .line 371
    const-string/jumbo v6, "text/plain"

    .line 373
    filled-new-array {v6}, [Ljava/lang/String;

    .line 376
    move-result-object v6

    .line 379
    const-string v7, "content"

    .line 380
    invoke-direct {v5, v7, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 382
    new-instance v6, Landroid/content/ClipData$Item;

    .line 385
    iget-object v3, v3, Lcom/android/systemui/util/leak/DumpTruck;->hprofUri:Landroid/net/Uri;

    .line 387
    invoke-direct {v6, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 389
    invoke-direct {v4, v5, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 392
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    :cond_4
    iget-object v2, v1, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 401
    iget-object v2, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    .line 403
    new-instance v3, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;

    .line 405
    invoke-direct {v3, v1, v0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;Landroid/content/Intent;)V

    .line 407
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
    .line 413
.end method
