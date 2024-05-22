.class public final Lcom/xiaomi/onetrack/api/l;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Thread;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lcom/xiaomi/onetrack/api/k;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/k;

    .line 2
    iput-object p2, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/Thread;

    .line 4
    iput-object p3, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/lang/Throwable;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string/jumbo v1, "tombstone"

    .line 4
    iget-object v2, v0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/k;

    .line 7
    iget-object v3, v0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/Thread;

    .line 9
    iget-object v4, v0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/lang/Throwable;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string v5, "\n\n"

    .line 16
    const-string v6, "JavaCrashHandler close RandomAccessFile failed"

    .line 18
    const-string v7, "OneTrackExceptionHandler"

    .line 20
    const-string v8, "UTF-8"

    .line 22
    const-string v9, "error reason:\n\t"

    .line 24
    const-string v10, "backtrace feature id:\n\t"

    .line 26
    new-instance v11, Ljava/util/Date;

    .line 28
    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 30
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    const-string v13, "%s/%s_%020d_%s__%s%s"

    .line 35
    const/4 v14, 0x6

    .line 37
    new-array v14, v14, [Ljava/lang/Object;

    .line 38
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/k;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v15

    .line 43
    const/4 v12, 0x0

    .line 44
    aput-object v15, v14, v12

    .line 45
    const/4 v15, 0x1

    .line 47
    aput-object v1, v14, v15

    .line 48
    iget-object v1, v2, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    .line 50
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 52
    move-result-wide v15

    .line 55
    const-wide/16 v17, 0x3e8

    .line 56
    mul-long v15, v15, v17

    .line 58
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v1

    .line 63
    const/4 v15, 0x2

    .line 64
    aput-object v1, v14, v15

    .line 65
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    move-result-object v15

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    invoke-virtual {v15, v1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 77
    move-result-object v1

    .line 80
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    goto :goto_0

    .line 83
    :catch_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v12

    .line 88
    if-eqz v12, :cond_0

    .line 89
    const-string/jumbo v1, "unknown"

    .line 91
    :cond_0
    const/4 v12, 0x3

    .line 94
    aput-object v1, v14, v12

    .line 95
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 97
    const/4 v12, 0x4

    .line 99
    aput-object v1, v14, v12

    .line 100
    const-string v1, ".java.xcrash"

    .line 102
    const/4 v12, 0x5

    .line 104
    aput-object v1, v14, v12

    .line 105
    invoke-static {v0, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 110
    new-instance v1, Ljava/io/File;

    .line 111
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 116
    move-result v0

    .line 119
    if-nez v0, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    goto :goto_1

    .line 127
    :catch_2
    move-exception v0

    .line 128
    const/4 v1, 0x0

    .line 129
    :goto_1
    const-string v12, "JavaCrashHandler createLogFile failed"

    .line 130
    invoke-static {v7, v12, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_1
    :goto_2
    :try_start_4
    new-instance v0, Ljava/io/StringWriter;

    .line 135
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 137
    new-instance v12, Ljava/io/PrintWriter;

    .line 140
    invoke-direct {v12, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    invoke-virtual {v4, v12}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 148
    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 151
    :try_start_5
    invoke-virtual {v2, v11, v3, v12}, Lcom/xiaomi/onetrack/api/k;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 155
    goto :goto_4

    .line 156
    :catch_3
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :catch_4
    move-exception v0

    .line 159
    const/4 v12, 0x0

    .line 160
    :goto_3
    const-string v3, "JavaCrashHandler getEmergency failed"

    .line 161
    invoke-static {v7, v3, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    const/4 v0, 0x0

    .line 166
    :goto_4
    if-eqz v1, :cond_8

    .line 167
    :try_start_6
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 169
    const-string v11, "rws"

    .line 171
    invoke-direct {v3, v1, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    :try_start_7
    invoke-static {v12}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 179
    new-instance v11, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 194
    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 195
    move-result-object v1

    .line 198
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 207
    move-result-object v4

    .line 210
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 220
    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 221
    move-result-object v1

    .line 224
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 225
    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 230
    move-result-object v0

    .line 233
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 234
    :cond_2
    iget v0, v2, Lcom/xiaomi/onetrack/api/k;->k:I

    .line 237
    if-gtz v0, :cond_3

    .line 239
    iget v1, v2, Lcom/xiaomi/onetrack/api/k;->i:I

    .line 241
    if-gtz v1, :cond_3

    .line 243
    iget v1, v2, Lcom/xiaomi/onetrack/api/k;->j:I

    .line 245
    if-lez v1, :cond_4

    .line 247
    :cond_3
    iget v1, v2, Lcom/xiaomi/onetrack/api/k;->i:I

    .line 249
    iget v4, v2, Lcom/xiaomi/onetrack/api/k;->j:I

    .line 251
    invoke-static {v0, v1, v4}, Lcom/xiaomi/onetrack/util/b;->a(III)Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 256
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 257
    move-result-object v0

    .line 260
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 261
    :cond_4
    iget-boolean v0, v2, Lcom/xiaomi/onetrack/api/k;->l:Z

    .line 264
    if-eqz v0, :cond_5

    .line 266
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->f()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 271
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 272
    move-result-object v0

    .line 275
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 276
    :cond_5
    iget-boolean v0, v2, Lcom/xiaomi/onetrack/api/k;->m:Z

    .line 279
    if-eqz v0, :cond_6

    .line 281
    const-string v0, "network info:\nNot supported on Android Q (API level 29) and later.\n\n"

    .line 283
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 285
    move-result-object v0

    .line 288
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 289
    :cond_6
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->d()Ljava/lang/String;

    .line 292
    move-result-object v0

    .line 295
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 296
    move-result-object v0

    .line 299
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 300
    const-string v0, "foreground:\nyes\n\n"

    .line 303
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 305
    move-result-object v0

    .line 308
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 312
    goto :goto_9

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    move-object v1, v0

    .line 317
    goto :goto_7

    .line 318
    :catch_5
    move-exception v0

    .line 319
    move-object v12, v3

    .line 320
    goto :goto_5

    .line 321
    :catchall_1
    move-exception v0

    .line 322
    const/4 v12, 0x0

    .line 323
    goto :goto_6

    .line 324
    :catch_6
    move-exception v0

    .line 325
    const/4 v12, 0x0

    .line 326
    :goto_5
    :try_start_9
    const-string v1, "JavaCrashHandler write log file failed"

    .line 327
    invoke-static {v7, v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 329
    if-eqz v12, :cond_8

    .line 332
    :try_start_a
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 334
    goto :goto_9

    .line 337
    :catch_7
    move-exception v0

    .line 338
    invoke-static {v7, v6, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    goto :goto_9

    .line 342
    :catchall_2
    move-exception v0

    .line 343
    :goto_6
    move-object v1, v0

    .line 344
    move-object v3, v12

    .line 345
    :goto_7
    if-eqz v3, :cond_7

    .line 346
    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 348
    goto :goto_8

    .line 351
    :catch_8
    move-exception v0

    .line 352
    move-object v2, v0

    .line 353
    invoke-static {v7, v6, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    :cond_7
    :goto_8
    throw v1

    .line 357
    :cond_8
    :goto_9
    return-void
    .line 358
.end method
