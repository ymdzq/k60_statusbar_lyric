.class public final Lcom/xiaomi/onetrack/api/k;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final g:Ljava/util/Date;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Date;

    .line 5
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    .line 10
    const/16 v0, 0x32

    .line 12
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->i:I

    .line 14
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->j:I

    .line 16
    const/16 v0, 0xc8

    .line 18
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->k:I

    .line 20
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/k;->l:Z

    .line 23
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/k;->m:Z

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    .line 7
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 11
    const/4 v3, 0x0

    .line 13
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v4

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 22
    move-result-object v2

    .line 25
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 28
    :catch_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    const-string/jumbo v2, "unknown"

    .line 36
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 39
    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 41
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    const-string v6, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\nTombstone maker: \'OneTrack 2.1.0\'\nCrash type: \'java\'\nStart time: \'"

    .line 51
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string p0, "\'\nCrash time: \'"

    .line 63
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string p0, "\'\nApp ID: \'"

    .line 75
    const-string p1, "\'\nApp version: \'"

    .line 77
    invoke-static {v5, p0, v1, p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string p0, "\'\nRooted: \'"

    .line 82
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :try_start_1
    sget-object p0, Lcom/xiaomi/onetrack/util/b;->m:[Ljava/lang/String;

    .line 87
    move p1, v3

    .line 89
    :goto_1
    const/16 v1, 0xb

    .line 90
    if-ge p1, v1, :cond_2

    .line 92
    aget-object v1, p0, p1

    .line 94
    new-instance v2, Ljava/io/File;

    .line 96
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 101
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    const/4 v3, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 109
    goto :goto_1

    .line 111
    :catch_1
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 112
    const-string p0, "Yes"

    .line 114
    goto :goto_3

    .line 116
    :cond_3
    const-string p0, "No"

    .line 117
    :goto_3
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string p0, "\'\nAPI level: \'"

    .line 122
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 127
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string p0, "\'\nOS version: \'"

    .line 132
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 137
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string p0, "\'\nABI list: \'"

    .line 142
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string p0, ","

    .line 147
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 149
    invoke-static {p0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 154
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string p0, "\'\nManufacturer: \'"

    .line 158
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 163
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string p0, "\'\nBrand: \'"

    .line 168
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 173
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string p0, "\'\nModel: \'"

    .line 178
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 183
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string p0, "\'\nBuild fingerprint: \'"

    .line 188
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 193
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string p0, "\'\n"

    .line 198
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string p0, "pid: "

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 215
    move-result p0

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string p0, ", tid: "

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 227
    move-result p0

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    const-string p0, ", name: "

    .line 234
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 239
    move-result-object p0

    .line 242
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string p0, "  >>> "

    .line 246
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string p0, " <<<\n\njava stacktrace:\n"

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string p0, "\n"

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 272
    return-object p0
    .line 273
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    const-string v0, "OneTrackExceptionHandler"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string v3, "crash happened->stacktrace: "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 15
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v1, Lcom/xiaomi/onetrack/api/l;

    .line 29
    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/l;-><init>(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 31
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 34
    const/4 v3, 0x0

    .line 36
    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 37
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 40
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    const-wide/16 v3, 0x2

    .line 45
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    const-string v3, "handleException error :"

    .line 58
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 66
    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 70
    :cond_0
    return-void
    .line 73
.end method
