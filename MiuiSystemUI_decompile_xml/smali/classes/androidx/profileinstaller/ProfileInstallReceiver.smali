.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "androidx.profileinstaller.action.INSTALL_PROFILE"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    new-instance p2, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {p2, v2}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>(I)V

    .line 20
    new-instance v0, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;

    .line 23
    invoke-direct {v0, p0}, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;-><init>(Landroidx/profileinstaller/ProfileInstallReceiver;)V

    .line 25
    const/4 p0, 0x1

    .line 28
    invoke-static {p1, p2, v0, p0}, Landroidx/profileinstaller/ProfileInstaller;->writeProfile(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Z)V

    .line 29
    goto/16 :goto_2

    .line 32
    :cond_1
    const-string v1, "androidx.profileinstaller.action.SKIP_FILE"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    sget-object v3, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$1;

    .line 40
    const/16 v4, 0xa

    .line 42
    const/4 v5, 0x0

    .line 44
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 47
    move-result-object p2

    .line 50
    if-eqz p2, :cond_7

    .line 51
    const-string v0, "EXTRA_SKIP_FILE_OPERATION"

    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p2

    .line 58
    const-string v0, "WRITE_SKIP_FILE"

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 64
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 65
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    move-result-object v0

    .line 80
    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 81
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 85
    move-result-object p1

    .line 88
    new-instance v0, Ljava/io/File;

    .line 89
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    :try_start_1
    new-instance p1, Ljava/io/DataOutputStream;

    .line 94
    new-instance v1, Ljava/io/FileOutputStream;

    .line 96
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :try_start_2
    iget-wide v0, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 104
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 109
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p2

    .line 113
    :try_start_4
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    goto :goto_0

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :goto_0
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 122
    :catch_0
    :goto_1
    invoke-virtual {v3, v4, v5}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 123
    invoke-virtual {p0, v4}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 126
    goto/16 :goto_2

    .line 129
    :catch_1
    move-exception p1

    .line 131
    const/4 p2, 0x7

    .line 132
    invoke-virtual {v3, p2, p1}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 133
    invoke-virtual {p0, p2}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 136
    goto/16 :goto_2

    .line 139
    :cond_2
    const-string v0, "DELETE_SKIP_FILE"

    .line 141
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result p2

    .line 146
    if-eqz p2, :cond_7

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 149
    move-result-object p1

    .line 152
    new-instance p2, Ljava/io/File;

    .line 153
    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 158
    const/16 p1, 0xb

    .line 161
    invoke-virtual {v3, p1, v5}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 166
    goto :goto_2

    .line 169
    :cond_3
    const-string v1, "androidx.profileinstaller.action.SAVE_PROFILE"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    move-result v1

    .line 175
    if-eqz v1, :cond_4

    .line 176
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 178
    move-result p1

    .line 181
    invoke-static {p1, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 182
    const/16 p1, 0xc

    .line 185
    invoke-virtual {v3, p1, v5}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 187
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 190
    goto :goto_2

    .line 193
    :cond_4
    const-string v1, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v0

    .line 199
    if-eqz v0, :cond_7

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 202
    move-result-object p2

    .line 205
    if-eqz p2, :cond_7

    .line 206
    const-string v0, "EXTRA_BENCHMARK_OPERATION"

    .line 208
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-result-object p2

    .line 213
    const-string v0, "DROP_SHADER_CACHE"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result p2

    .line 219
    if-eqz p2, :cond_6

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 222
    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 226
    move-result-object p1

    .line 229
    invoke-static {p1}, Landroidx/profileinstaller/BenchmarkOperation;->deleteFilesRecursively(Ljava/io/File;)Z

    .line 230
    move-result p1

    .line 233
    if-eqz p1, :cond_5

    .line 234
    const/16 p1, 0xe

    .line 236
    invoke-virtual {v3, p1, v5}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 241
    goto :goto_2

    .line 244
    :cond_5
    const/16 p1, 0xf

    .line 245
    invoke-virtual {v3, p1, v5}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 247
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 250
    goto :goto_2

    .line 253
    :cond_6
    const/16 p1, 0x10

    .line 254
    invoke-virtual {v3, p1, v5}, Landroidx/profileinstaller/ProfileInstaller$1;->onResultReceived(ILjava/lang/Object;)V

    .line 256
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 259
    :cond_7
    :goto_2
    return-void
    .line 262
.end method
