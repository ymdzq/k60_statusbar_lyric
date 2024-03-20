.class public abstract Landroidx/profileinstaller/ProfileVerifier;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final SYNC_OBJ:Ljava/lang/Object;

.field public static sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

.field public static final sFuture:Landroidx/concurrent/futures/ResolvableFuture;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/concurrent/futures/ResolvableFuture;

    .line 2
    invoke-direct {v0}, Landroidx/concurrent/futures/ResolvableFuture;-><init>()V

    .line 4
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    .line 16
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 17
    return-void
    .line 19
.end method

.method public static writeProfileVerification(Landroid/content/Context;)V
    .locals 18

    .line 1
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroidx/profileinstaller/ProfileVerifier;->SYNC_OBJ:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    monitor-exit v1

    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 16
    new-instance v2, Ljava/io/File;

    .line 18
    const-string v3, "/data/misc/profiles/ref/"

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 25
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v3, "primary.prof"

    .line 29
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 34
    move-result-wide v2

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 38
    move-result v0

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x1

    .line 45
    if-eqz v0, :cond_2

    .line 46
    cmp-long v0, v2, v4

    .line 48
    if-lez v0, :cond_2

    .line 50
    move v0, v7

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move v0, v6

    .line 54
    :goto_0
    new-instance v8, Ljava/io/File;

    .line 55
    new-instance v9, Ljava/io/File;

    .line 57
    const-string v10, "/data/misc/profiles/cur/0/"

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    move-result-object v11

    .line 64
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v10, "primary.prof"

    .line 68
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v8}, Ljava/io/File;->length()J

    .line 73
    move-result-wide v16

    .line 76
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 77
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v8, :cond_3

    .line 81
    cmp-long v8, v16, v4

    .line 83
    if-lez v8, :cond_3

    .line 85
    move v8, v7

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v8, v6

    .line 89
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 90
    move-result-object v9

    .line 93
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 94
    move-result-object v9

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 98
    move-result-object v10

    .line 101
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 102
    move-result-object v4

    .line 105
    invoke-virtual {v9, v10, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 106
    move-result-object v4

    .line 109
    iget-wide v14, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    new-instance v4, Ljava/io/File;

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 114
    move-result-object v5

    .line 117
    const-string v9, "profileInstalled"

    .line 118
    invoke-direct {v4, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 123
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v5, :cond_4

    .line 127
    :try_start_3
    invoke-static {v4}, Landroidx/profileinstaller/ProfileVerifier$Cache;->readFromFile(Ljava/io/File;)Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 129
    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    goto :goto_2

    .line 133
    :catch_0
    :try_start_4
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 134
    invoke-direct {v0}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>()V

    .line 136
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 139
    sget-object v2, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 141
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto :goto_6

    .line 149
    :cond_4
    const/4 v5, 0x0

    .line 150
    :goto_2
    const/4 v9, 0x2

    .line 151
    if-eqz v5, :cond_6

    .line 152
    iget-wide v10, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mPackageLastUpdateTime:J

    .line 154
    cmp-long v10, v10, v14

    .line 156
    if-nez v10, :cond_6

    .line 158
    iget v10, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 160
    if-ne v10, v9, :cond_5

    .line 162
    goto :goto_3

    .line 164
    :cond_5
    move v6, v10

    .line 165
    goto :goto_4

    .line 166
    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 167
    move v6, v7

    .line 169
    goto :goto_4

    .line 170
    :cond_7
    if-eqz v8, :cond_8

    .line 171
    move v6, v9

    .line 173
    :cond_8
    :goto_4
    if-eqz v5, :cond_9

    .line 174
    iget v0, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mResultCode:I

    .line 176
    if-ne v0, v9, :cond_9

    .line 178
    if-ne v6, v7, :cond_9

    .line 180
    iget-wide v7, v5, Landroidx/profileinstaller/ProfileVerifier$Cache;->mInstalledCurrentProfileSize:J

    .line 182
    cmp-long v0, v2, v7

    .line 184
    if-gez v0, :cond_9

    .line 186
    const/4 v0, 0x3

    .line 188
    move v13, v0

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    move v13, v6

    .line 191
    :goto_5
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$Cache;

    .line 192
    const/4 v12, 0x1

    .line 194
    move-object v11, v0

    .line 195
    invoke-direct/range {v11 .. v17}, Landroidx/profileinstaller/ProfileVerifier$Cache;-><init>(IIJJ)V

    .line 196
    if-eqz v5, :cond_a

    .line 199
    invoke-virtual {v5, v0}, Landroidx/profileinstaller/ProfileVerifier$Cache;->equals(Ljava/lang/Object;)Z

    .line 201
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    if-nez v2, :cond_b

    .line 205
    :cond_a
    :try_start_5
    invoke-virtual {v0, v4}, Landroidx/profileinstaller/ProfileVerifier$Cache;->writeOnFile(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    :catch_1
    :cond_b
    :try_start_6
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 210
    invoke-direct {v0}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>()V

    .line 212
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 215
    sget-object v2, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 217
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1

    .line 222
    return-void

    .line 223
    :catch_2
    new-instance v0, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 224
    invoke-direct {v0}, Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;-><init>()V

    .line 226
    sput-object v0, Landroidx/profileinstaller/ProfileVerifier;->sCompilationStatus:Landroidx/profileinstaller/ProfileVerifier$CompilationStatus;

    .line 229
    sget-object v2, Landroidx/profileinstaller/ProfileVerifier;->sFuture:Landroidx/concurrent/futures/ResolvableFuture;

    .line 231
    invoke-virtual {v2, v0}, Landroidx/concurrent/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 233
    monitor-exit v1

    .line 236
    return-void

    .line 237
    :goto_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 238
    throw v0
    .line 239
.end method
