.class public final Lcom/android/systemui/dump/LogBufferEulogizer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final files:Lcom/android/systemui/util/io/Files;

.field public final logPath:Ljava/nio/file/Path;

.field public final maxLogAgeToDump:J

.field public final minWriteGap:J

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/io/Files;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    const-string v0, "log_buffers.txt"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 20
    move-result-object p1

    .line 23
    sget-wide v0, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MIN_WRITE_GAP:J

    .line 24
    sget-wide v2, Lcom/android/systemui/dump/LogBufferEulogizerKt;->MAX_AGE_TO_DUMP:J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 33
    iput-object p4, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    .line 37
    iput-wide v0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->minWriteGap:J

    .line 39
    iput-wide v2, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->maxLogAgeToDump:J

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final getMillisSinceLastWrite(Ljava/nio/file/Path;)J
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    .line 2
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 4
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/nio/file/LinkOption;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {p1, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 12
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 18
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide v0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    .line 31
    move-result-object p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    .line 37
    move-result-wide p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const-wide/16 p0, 0x0

    .line 42
    :goto_1
    sub-long/2addr v0, p0

    .line 44
    return-wide v0
    .line 45
.end method

.method public final record(Ljava/lang/Exception;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-string v1, "ms"

    .line 4
    const-string v2, "Buffer eulogy took "

    .line 6
    iget-object v3, v0, Lcom/android/systemui/dump/LogBufferEulogizer;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 8
    move-object v4, v3

    .line 10
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v4

    .line 19
    const-string v6, "BufferEulogizer"

    .line 20
    const-string v7, "Performing emergency dump of log buffers"

    .line 22
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v7, v0, Lcom/android/systemui/dump/LogBufferEulogizer;->logPath:Ljava/nio/file/Path;

    .line 27
    invoke-virtual {v0, v7}, Lcom/android/systemui/dump/LogBufferEulogizer;->getMillisSinceLastWrite(Ljava/nio/file/Path;)J

    .line 29
    move-result-wide v8

    .line 32
    iget-wide v10, v0, Lcom/android/systemui/dump/LogBufferEulogizer;->minWriteGap:J

    .line 33
    cmp-long v10, v8, v10

    .line 35
    if-gez v10, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "Cannot dump logs, last write was only "

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, " ms ago"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 57
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_0
    const-wide/16 v8, 0x0

    .line 62
    :try_start_0
    iget-object v10, v0, Lcom/android/systemui/dump/LogBufferEulogizer;->files:Lcom/android/systemui/util/io/Files;

    .line 64
    const/4 v11, 0x2

    .line 66
    new-array v11, v11, [Ljava/nio/file/OpenOption;

    .line 67
    sget-object v12, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    .line 69
    const/4 v13, 0x0

    .line 71
    aput-object v12, v11, v13

    .line 72
    sget-object v12, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 74
    const/4 v14, 0x1

    .line 76
    aput-object v12, v11, v14

    .line 77
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 82
    invoke-static {v7, v10, v11}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    .line 84
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    new-instance v10, Ljava/io/PrintWriter;

    .line 88
    invoke-direct {v10, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    sget-object v11, Lcom/android/systemui/dump/LogBufferEulogizerKt;->DATE_FORMAT:Landroid/icu/text/SimpleDateFormat;

    .line 93
    move-object v12, v3

    .line 95
    check-cast v12, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 96
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    move-result-wide v14

    .line 104
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    move-result-object v12

    .line 108
    invoke-virtual {v11, v12}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    move-result-object v11

    .line 112
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 116
    const-string v11, "Dump triggered by exception:"

    .line 119
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    move-object/from16 v11, p1

    .line 124
    invoke-virtual {v11, v10}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 126
    iget-object v0, v0, Lcom/android/systemui/dump/LogBufferEulogizer;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 129
    invoke-virtual {v0, v10, v13}, Lcom/android/systemui/dump/DumpManager;->dumpBuffers(Ljava/io/PrintWriter;I)V

    .line 131
    check-cast v3, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 134
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 139
    move-result-wide v8

    .line 142
    sub-long/2addr v8, v4

    .line 143
    invoke-virtual {v10}, Ljava/io/PrintWriter;->println()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 161
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :try_start_2
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    move-object v3, v0

    .line 171
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    move-object v4, v0

    .line 174
    :try_start_4
    invoke-static {v7, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 175
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v3, "Exception while attempting to dump buffers, bailing"

    .line 180
    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 199
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
    .line 203
.end method
