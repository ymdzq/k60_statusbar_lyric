.class public abstract Lcom/xiaomi/onetrack/util/b;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final m:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "/data/local/su"

    .line 2
    const-string v1, "/data/local/bin/su"

    .line 4
    const-string v2, "/data/local/xbin/su"

    .line 6
    const-string v3, "/system/xbin/su"

    .line 8
    const-string v4, "/system/bin/su"

    .line 10
    const-string v5, "/system/bin/.ext/su"

    .line 12
    const-string v6, "/system/bin/failsafe/su"

    .line 14
    const-string v7, "/system/sd/xbin/su"

    .line 16
    const-string v8, "/system/usr/we-need-root/su"

    .line 18
    const-string v9, "/sbin/su"

    .line 20
    const-string v10, "/su/bin/su"

    .line 22
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    sput-object v0, Lcom/xiaomi/onetrack/util/b;->m:[Ljava/lang/String;

    .line 28
    return-void
    .line 30
.end method

.method public static a(III)Ljava/lang/String;
    .locals 4

    .line 14
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "logcat:\n"

    .line 15
    invoke-static {v1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p0, :cond_0

    const-string v2, "main"

    const/16 v3, 0x44

    .line 16
    invoke-static {v0, v1, v2, p0, v3}, Lcom/xiaomi/onetrack/util/b;->a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_0
    if-lez p1, :cond_1

    const-string/jumbo p0, "system"

    const/16 v2, 0x57

    .line 17
    invoke-static {v0, v1, p0, p1, v2}, Lcom/xiaomi/onetrack/util/b;->a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_1
    if-lez p2, :cond_2

    const-string p0, "events"

    const/16 p2, 0x49

    .line 18
    invoke-static {v0, v1, p0, p1, p2}, Lcom/xiaomi/onetrack/util/b;->a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V

    :cond_2
    const-string p0, "\n"

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "  "

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2
    :try_start_3
    const-string v3, "CrashUtil"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CrashUtil getInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") failed"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v4, :cond_2

    .line 10
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    .line 11
    :catch_2
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_4
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_4

    .line 12
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 13
    :catch_3
    :cond_4
    throw p0
.end method

.method public static a(ILjava/lang/StringBuilder;Ljava/lang/String;IC)V
    .locals 2

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/bin/logcat"

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-b"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-d"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-v"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "threadtime"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-t"

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "--pid"

    .line 49
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "*:"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const-string p3, "--------- tail end of log "

    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-static {p2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 55
    :try_start_0
    new-instance p2, Ljava/lang/ProcessBuilder;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p2

    .line 56
    new-instance p3, Ljava/io/BufferedReader;

    new-instance p4, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, p4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    :try_start_1
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    :goto_1
    :try_start_2
    const-string p1, "CrashUtil"

    const-string p2, "CrashUtil run logcat command failed"

    .line 59
    invoke-static {p1, p2, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p3, :cond_1

    .line 60
    :cond_0
    :try_start_3
    invoke-virtual {p3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_1
    return-void

    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, p3

    :goto_2
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    :catch_3
    :cond_2
    throw p1
.end method

.method public static d()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "memory info:\n System Summary (From: /proc/meminfo)\n"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v1, "/proc/meminfo"

    .line 9
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "-\n Process Status (From: /proc/PID/status)\n"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "/proc/self/status"

    .line 23
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "-\n Process Limits (From: /proc/PID/limits)\n"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "/proc/self/limits"

    .line 37
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "-\n"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " Process Summary (From: android.os.Debug.MemoryInfo)\n"

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    const-string v3, "Pss(KB)"

    .line 60
    const-string v4, ""

    .line 62
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 67
    const-string v5, "%21s %8s\n"

    .line 68
    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "------"

    .line 77
    filled-new-array {v4, v3}, [Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 82
    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :try_start_0
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    .line 90
    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 92
    invoke-static {v3}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 95
    const/4 v4, 0x2

    .line 98
    new-array v6, v4, [Ljava/lang/Object;

    .line 99
    const-string v7, "Java Heap:"

    .line 101
    const/4 v8, 0x0

    .line 103
    aput-object v7, v6, v8

    .line 104
    const-string/jumbo v7, "summary.java-heap"

    .line 106
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 112
    const/4 v9, 0x1

    .line 113
    aput-object v7, v6, v9

    .line 114
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-array v6, v4, [Ljava/lang/Object;

    .line 123
    const-string v7, "Native Heap:"

    .line 125
    aput-object v7, v6, v8

    .line 127
    const-string/jumbo v7, "summary.native-heap"

    .line 129
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v7

    .line 135
    aput-object v7, v6, v9

    .line 136
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    move-result-object v6

    .line 141
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-array v6, v4, [Ljava/lang/Object;

    .line 145
    const-string v7, "Code:"

    .line 147
    aput-object v7, v6, v8

    .line 149
    const-string/jumbo v7, "summary.code"

    .line 151
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v7

    .line 157
    aput-object v7, v6, v9

    .line 158
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 163
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-array v6, v4, [Ljava/lang/Object;

    .line 167
    const-string v7, "Stack:"

    .line 169
    aput-object v7, v6, v8

    .line 171
    const-string/jumbo v7, "summary.stack"

    .line 173
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v7

    .line 179
    aput-object v7, v6, v9

    .line 180
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    move-result-object v6

    .line 185
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    new-array v6, v4, [Ljava/lang/Object;

    .line 189
    const-string v7, "Graphics:"

    .line 191
    aput-object v7, v6, v8

    .line 193
    const-string/jumbo v7, "summary.graphics"

    .line 195
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v7

    .line 201
    aput-object v7, v6, v9

    .line 202
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    move-result-object v6

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-array v6, v4, [Ljava/lang/Object;

    .line 211
    const-string v7, "Private Other:"

    .line 213
    aput-object v7, v6, v8

    .line 215
    const-string/jumbo v7, "summary.private-other"

    .line 217
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v7

    .line 223
    aput-object v7, v6, v9

    .line 224
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 226
    move-result-object v6

    .line 229
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-array v6, v4, [Ljava/lang/Object;

    .line 233
    const-string v7, "System:"

    .line 235
    aput-object v7, v6, v8

    .line 237
    const-string/jumbo v7, "summary.system"

    .line 239
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    move-result-object v7

    .line 245
    aput-object v7, v6, v9

    .line 246
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    move-result-object v5

    .line 251
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v5, "%21s %8s %21s %8s\n"

    .line 255
    const/4 v6, 0x4

    .line 257
    new-array v6, v6, [Ljava/lang/Object;

    .line 258
    const-string v7, "TOTAL:"

    .line 260
    aput-object v7, v6, v8

    .line 262
    const-string/jumbo v7, "summary.total-pss"

    .line 264
    invoke-virtual {v3, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    move-result-object v7

    .line 270
    aput-object v7, v6, v9

    .line 271
    const-string v7, "TOTAL SWAP:"

    .line 273
    aput-object v7, v6, v4

    .line 275
    const-string/jumbo v4, "summary.total-swap"

    .line 277
    invoke-virtual {v3, v4}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    move-result-object v3

    .line 283
    const/4 v4, 0x3

    .line 284
    aput-object v3, v6, v4

    .line 285
    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 294
    :catch_0
    move-exception v2

    .line 295
    const-string v3, "CrashUtil"

    .line 296
    const-string v4, "CrashUtil getProcessMemoryInfo failed"

    .line 298
    invoke-static {v3, v4, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "\n"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 318
    return-object v0
    .line 319
.end method

.method public static f()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "open files:\n"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const/16 v1, 0xa

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 11
    const-string v3, "/proc/self/fd"

    .line 13
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v3, Lcom/xiaomi/onetrack/util/c;

    .line 18
    invoke-direct {v3}, Lcom/xiaomi/onetrack/util/c;-><init>()V

    .line 20
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 23
    move-result-object v2

    .line 26
    if-eqz v2, :cond_4

    .line 27
    array-length v3, v2

    .line 29
    const/4 v4, 0x0

    .line 30
    move v5, v4

    .line 31
    :goto_0
    const/16 v6, 0x400

    .line 32
    if-ge v4, v3, :cond_2

    .line 34
    aget-object v7, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    move-result-object v8

    .line 41
    invoke-static {v8}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    const/4 v8, 0x0

    .line 47
    :goto_1
    :try_start_2
    const-string v9, "    fd "

    .line 48
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    move-result-object v7

    .line 56
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v7, ": "

    .line 60
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v7

    .line 68
    if-eqz v7, :cond_0

    .line 69
    const-string v7, "???"

    .line 71
    goto :goto_2

    .line 73
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 77
    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 84
    if-le v5, v6, :cond_1

    .line 86
    goto :goto_3

    .line 88
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    :goto_3
    array-length v3, v2

    .line 92
    if-le v3, v6, :cond_3

    .line 93
    const-string v3, "    ......\n"

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_3
    const-string v3, "    (number of FDs: "

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    array-length v2, v2

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, ")\n"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    :catch_1
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 120
    return-object v0
    .line 121
.end method
