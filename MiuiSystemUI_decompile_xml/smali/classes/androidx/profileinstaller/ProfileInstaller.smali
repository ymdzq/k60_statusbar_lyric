.class public abstract Landroidx/profileinstaller/ProfileInstaller;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$1;

.field public static final LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/profileinstaller/ProfileInstaller$1;-><init>(I)V

    .line 5
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$1;

    .line 8
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$1;

    .line 10
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Landroidx/profileinstaller/ProfileInstaller$1;-><init>(I)V

    .line 13
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$1;

    .line 16
    return-void
    .line 18
.end method

.method public static writeProfile(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Z)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 14
    move-result-object v4

    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 20
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 25
    move-result-object v7

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 34
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 38
    move-result-object v3

    .line 41
    const-string v5, "ProfileInstaller"

    .line 42
    if-nez p3, :cond_4

    .line 44
    new-instance p3, Ljava/io/File;

    .line 46
    const-string v6, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 48
    invoke-direct {p3, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 53
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    goto :goto_1

    .line 59
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    .line 60
    new-instance v6, Ljava/io/FileInputStream;

    .line 62
    invoke-direct {v6, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 64
    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    .line 70
    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    iget-wide v10, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 77
    cmp-long p3, v8, v10

    .line 79
    if-nez p3, :cond_1

    .line 81
    const/4 v2, 0x1

    .line 83
    :cond_1
    if-eqz v2, :cond_2

    .line 84
    const/4 p3, 0x2

    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-interface {p2, p3, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 88
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p3

    .line 92
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    goto :goto_0

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    :try_start_5
    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    :goto_0
    throw p3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 101
    :catch_0
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 102
    goto :goto_2

    .line 104
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    const-string p2, "Skipping profile installation for "

    .line 107
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 112
    move-result-object p2

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 122
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p0}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;)V

    .line 126
    goto :goto_3

    .line 129
    :cond_4
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    .line 130
    const-string v0, "Installing profile for "

    .line 132
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 140
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object p3

    .line 147
    invoke-static {v5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    new-instance v8, Ljava/io/File;

    .line 153
    new-instance v0, Ljava/io/File;

    .line 155
    const-string v2, "/data/misc/profiles/cur/0"

    .line 157
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "primary.prof"

    .line 162
    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 167
    move-object v3, v0

    .line 169
    move-object v5, p1

    .line 170
    move-object v6, p2

    .line 171
    invoke-direct/range {v3 .. v8}, Landroidx/profileinstaller/DeviceProfileWriter;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/io/File;)V

    .line 172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object p2

    .line 178
    new-instance p3, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;

    .line 179
    const/4 v1, 0x3

    .line 181
    invoke-direct {p3, v0, v1, p2}, Landroidx/profileinstaller/DeviceProfileWriter$$ExternalSyntheticLambda0;-><init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    .line 182
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    invoke-static {p0}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;)V

    .line 188
    :goto_3
    return-void

    .line 191
    :catch_1
    move-exception p1

    .line 192
    const/4 p3, 0x7

    .line 193
    invoke-interface {p2, p3, p1}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    .line 194
    invoke-static {p0}, Landroidx/profileinstaller/ProfileVerifier;->writeProfileVerification(Landroid/content/Context;)V

    .line 197
    return-void
    .line 200
.end method
