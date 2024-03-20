.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebug;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/log/LogcatEchoTracker;


# static fields
.field public static final Factory:Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;


# instance fields
.field private final cachedBufferLevels:Ljava/util/Map;

.field private final cachedTagLevels:Ljava/util/Map;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final logInBackgroundThread:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->Factory:Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;

    .line 7
    return-void
    .line 9
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedBufferLevels:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedTagLevels:Ljava/util/Map;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->logInBackgroundThread:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContentResolver;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static final synthetic access$attach(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->attach(Landroid/os/Looper;)V

    .line 2
    return-void
    .line 5
.end method

.method public static final synthetic access$clearCache(Lcom/android/systemui/log/LogcatEchoTrackerDebug;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->clearCache()V

    .line 2
    return-void
    .line 5
.end method

.method private final attach(Landroid/os/Looper;)V
    .locals 5

    .line 1
    const-string v0, "LogcatEchoTrackerDebug#attach"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    .line 7
    const-string/jumbo v1, "systemui/buffer"

    .line 9
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v1

    .line 15
    new-instance v2, Landroid/os/Handler;

    .line 16
    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    new-instance v3, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;

    .line 21
    const/4 v4, 0x0

    .line 23
    invoke-direct {v3, p0, v2, v4}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;-><init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Handler;I)V

    .line 24
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    .line 31
    const-string/jumbo v1, "systemui/tag"

    .line 33
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object v1

    .line 39
    new-instance v3, Landroid/os/Handler;

    .line 40
    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 42
    new-instance p1, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;

    .line 45
    invoke-direct {p1, p0, v3, v2}, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;-><init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Handler;I)V

    .line 47
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 53
    return-void
    .line 56
.end method

.method private final clearCache()V
    .locals 1

    .line 1
    const-string v0, "LogcatEchoTrackerDebug#clearCache"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedBufferLevels:Ljava/util/Map;

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    return-void
    .line 15
.end method

.method public static final create(Landroid/content/ContentResolver;Landroid/os/Looper;)Lcom/android/systemui/log/LogcatEchoTrackerDebug;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->Factory:Lcom/android/systemui/log/LogcatEchoTrackerDebug$Factory;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;-><init>(Landroid/content/ContentResolver;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-static {v0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->access$attach(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Looper;)V

    .line 13
    return-object v0
    .line 16
.end method

.method private final getLogLevel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    .line 1
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/log/LogLevel;

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "/"

    .line 10
    invoke-static {p2, v0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 15
    invoke-direct {p0, p2}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->readSetting(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;

    .line 16
    move-result-object v0

    .line 19
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    return-object v0
    .line 23
.end method

.method private final parseProp(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_e

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result p1

    .line 17
    sparse-switch p1, :sswitch_data_0

    .line 18
    goto/16 :goto_1

    .line 21
    :sswitch_0
    const-string/jumbo p1, "warning"

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    goto/16 :goto_1

    .line 32
    :cond_1
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 34
    goto/16 :goto_2

    .line 36
    :sswitch_1
    const-string/jumbo p1, "verbose"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    goto/16 :goto_1

    .line 47
    :cond_2
    sget-object p0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 49
    goto/16 :goto_2

    .line 51
    :sswitch_2
    const-string p1, "error"

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_3
    sget-object p0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 63
    goto/16 :goto_2

    .line 65
    :sswitch_3
    const-string p1, "debug"

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 72
    if-nez p0, :cond_4

    .line 73
    goto/16 :goto_1

    .line 75
    :cond_4
    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 77
    goto/16 :goto_2

    .line 79
    :sswitch_4
    const-string/jumbo p1, "warn"

    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p0

    .line 87
    if-nez p0, :cond_5

    .line 88
    goto/16 :goto_1

    .line 90
    :cond_5
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 92
    goto/16 :goto_2

    .line 94
    :sswitch_5
    const-string p1, "info"

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p0

    .line 101
    if-nez p0, :cond_6

    .line 102
    goto :goto_1

    .line 104
    :cond_6
    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 105
    goto :goto_2

    .line 107
    :sswitch_6
    const-string/jumbo p1, "wtf"

    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p0

    .line 114
    if-nez p0, :cond_7

    .line 115
    goto :goto_1

    .line 117
    :cond_7
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    .line 118
    goto :goto_2

    .line 120
    :sswitch_7
    const-string/jumbo p1, "w"

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result p0

    .line 127
    if-nez p0, :cond_8

    .line 128
    goto :goto_1

    .line 130
    :cond_8
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 131
    goto :goto_2

    .line 133
    :sswitch_8
    const-string/jumbo p1, "v"

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    move-result p0

    .line 140
    if-nez p0, :cond_9

    .line 141
    goto :goto_1

    .line 143
    :cond_9
    sget-object p0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 144
    goto :goto_2

    .line 146
    :sswitch_9
    const-string p1, "i"

    .line 147
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result p0

    .line 152
    if-nez p0, :cond_a

    .line 153
    goto :goto_1

    .line 155
    :cond_a
    sget-object p0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 156
    goto :goto_2

    .line 158
    :sswitch_a
    const-string p1, "e"

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p0

    .line 164
    if-nez p0, :cond_b

    .line 165
    goto :goto_1

    .line 167
    :cond_b
    sget-object p0, Lcom/android/systemui/log/LogLevel;->ERROR:Lcom/android/systemui/log/LogLevel;

    .line 168
    goto :goto_2

    .line 170
    :sswitch_b
    const-string p1, "d"

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    move-result p0

    .line 176
    if-nez p0, :cond_c

    .line 177
    goto :goto_1

    .line 179
    :cond_c
    sget-object p0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 180
    goto :goto_2

    .line 182
    :sswitch_c
    const-string p1, "assert"

    .line 183
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result p0

    .line 188
    if-nez p0, :cond_d

    .line 189
    goto :goto_1

    .line 191
    :cond_d
    sget-object p0, Lcom/android/systemui/log/LogLevel;->WTF:Lcom/android/systemui/log/LogLevel;

    .line 192
    goto :goto_2

    .line 194
    :cond_e
    :goto_1
    sget-object p0, Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;->DEFAULT_LEVEL:Lcom/android/systemui/log/LogLevel;

    .line 195
    :goto_2
    return-object p0

    .line 197
    :sswitch_data_0
    .sparse-switch
        -0x53ef8cba -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x69 -> :sswitch_9
        0x76 -> :sswitch_8
        0x77 -> :sswitch_7
        0x1cd29 -> :sswitch_6
        0x3164ae -> :sswitch_5
        0x379286 -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x5c4d208 -> :sswitch_2
        0x14ed7982 -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch
    .line 198
.end method

.method private final readSetting(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "LogcatEchoTrackerDebug#readSetting"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->contentResolver:Landroid/content/ContentResolver;

    .line 7
    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->parseProp(Ljava/lang/String;)Lcom/android/systemui/log/LogLevel;

    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    :try_start_1
    sget-object p0, Lcom/android/systemui/log/LogcatEchoTrackerDebugKt;->DEFAULT_LEVEL:Lcom/android/systemui/log/LogLevel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 22
    return-object p0

    .line 25
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 26
    throw p0
    .line 29
.end method


# virtual methods
.method public getLogInBackgroundThread()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->logInBackgroundThread:Z

    .line 2
    return p0
    .line 4
.end method

.method public declared-synchronized isBufferLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 3
    move-result p2

    .line 6
    const-string/jumbo v0, "systemui/buffer"

    .line 7
    iget-object v1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedBufferLevels:Ljava/util/Map;

    .line 10
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->getLogLevel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/log/LogLevel;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-lt p2, p1, :cond_0

    .line 20
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    return p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0

    .line 28
    throw p1
    .line 29
.end method

.method public declared-synchronized isTagLoggable(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "systemui/tag"

    .line 3
    iget-object v1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->cachedTagLevels:Ljava/util/Map;

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->getLogLevel(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/android/systemui/log/LogLevel;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-ltz p1, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    monitor-exit p0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
    .line 25
.end method
