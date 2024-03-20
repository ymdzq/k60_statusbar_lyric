.class public Lcom/android/settings/backup/AccountAgent;
.super Lcom/android/settings/backup/AgentBase;
.source "AccountAgent.java"


# instance fields
.field private mAttachDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/backup/AgentBase;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    return-void
.end method


# virtual methods
.method public endRestore(Lmiui/app/backup/BackupMeta;)I
    .locals 2

    .line 177
    new-instance p1, Lcom/android/settings/backup/AccountRestoreManager;

    iget-object v0, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/backup/AccountRestoreManager;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/android/settings/backup/AccountRestoreManager;->setAttachDir(Ljava/io/File;)V

    .line 179
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    sget-object v1, Lcom/android/settings/backup/AccountRestoreManager;->ACCOUNTS_DB_FILE:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p1, v0}, Lcom/android/settings/backup/AccountRestoreManager;->prepareImport(Ljava/io/File;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/settings/backup/AccountRestoreManager;->importData()V

    .line 183
    invoke-virtual {p1}, Lcom/android/settings/backup/AccountRestoreManager;->setActiveAdmin()V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const-string p0, "Backup:AccountAgent"

    const-string p1, "account not exist."

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "IOException"

    .line 39
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v2}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_attach"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v2}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    sget-object v2, Lcom/android/settings/backup/AccountRestoreManager;->ACCOUNTS_DB_FILE:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    new-instance p0, Ljava/io/File;

    sget-object v2, Lcom/android/settings/backup/AccountRestoreManager;->ACCOUNT_DB_PATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lmiuix/core/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy account result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Backup:AccountAgent"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 v3, 0x0

    .line 54
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x2000

    :try_start_2
    new-array v3, v3, [B

    .line 59
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 60
    invoke-virtual {v4, v3, p0, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 69
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 71
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto/16 :goto_6

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object p1, v3

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_2

    :catch_5
    move-exception p1

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object p1, v3

    goto :goto_9

    :catch_6
    move-exception p1

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    .line 65
    :goto_2
    :try_start_5
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_3

    .line 69
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_3

    :catch_7
    move-exception v3

    .line 71
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    if-eqz p1, :cond_5

    .line 76
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    goto :goto_6

    :catch_9
    move-exception p1

    move-object v4, v3

    move-object v3, p1

    move-object p1, v4

    :goto_4
    :try_start_8
    const-string v5, "IllegalArgumentException"

    .line 63
    invoke-static {v2, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_4

    .line 69
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_5

    :catch_a
    move-exception v3

    .line 71
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    .line 76
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_7

    :catch_b
    move-exception p1

    .line 78
    :goto_6
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_5
    :goto_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return p0

    :catchall_2
    move-exception p0

    :goto_8
    move-object v3, v4

    :goto_9
    if-eqz v3, :cond_6

    .line 69
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_a

    :catch_c
    move-exception v3

    .line 71
    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_a
    if-eqz p1, :cond_7

    .line 76
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_b

    :catch_d
    move-exception p1

    .line 78
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_7
    :goto_b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 82
    throw p0
.end method

.method public getBackupVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public restoreAttaches(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 3

    const-string p1, "IOException"

    const-string v0, "Backup:AccountAgent"

    .line 140
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    invoke-direct {v1, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p3, 0x0

    .line 144
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 145
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x2000

    :try_start_2
    new-array p2, p2, [B

    .line 149
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_0

    .line 150
    invoke-virtual {v2, p2, p0, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 159
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 161
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, p3

    :goto_2
    move-object p3, v2

    goto :goto_a

    :catch_3
    move-exception p2

    move-object v1, p3

    :goto_3
    move-object p3, v2

    goto :goto_5

    :catch_4
    move-exception p2

    move-object v1, p3

    :goto_4
    move-object p3, v2

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v1, p3

    goto :goto_a

    :catch_5
    move-exception p2

    move-object v1, p3

    .line 155
    :goto_5
    :try_start_5
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p3, :cond_1

    .line 159
    :try_start_6
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 161
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_6
    if-eqz v1, :cond_3

    .line 166
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_9

    :catch_7
    move-exception p2

    move-object v1, p3

    :goto_7
    :try_start_8
    const-string v2, "IllegalArgumentException"

    .line 153
    invoke-static {v0, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p3, :cond_2

    .line 159
    :try_start_9
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p2

    .line 161
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_8
    if-eqz v1, :cond_3

    .line 166
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception p2

    .line 168
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_9
    return p0

    :catchall_3
    move-exception p0

    :goto_a
    if-eqz p3, :cond_4

    .line 159
    :try_start_b
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    :catch_a
    move-exception p2

    .line 161
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_b
    if-eqz v1, :cond_5

    .line 166
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_c

    :catch_b
    move-exception p2

    .line 168
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_5
    :goto_c
    throw p0
.end method

.method public restoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/backup/AccountAgent;->restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    return p0
.end method

.method public restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "IOException"

    const-string v0, "Backup:AccountAgent"

    .line 93
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v2}, Lmiui/app/backup/FullBackupAgent;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "_tmp_attach"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/settings/backup/AccountAgent;->mAttachDir:Ljava/io/File;

    sget-object v2, Lcom/android/settings/backup/AccountRestoreManager;->ACCOUNTS_DB_FILE:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 101
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x2000

    :try_start_2
    new-array p2, p2, [B

    .line 106
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 107
    invoke-virtual {v3, p2, p0, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 116
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 118
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    goto :goto_9

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v2

    :goto_2
    move-object v2, v3

    goto :goto_a

    :catch_3
    move-exception p2

    move-object v1, v2

    :goto_3
    move-object v2, v3

    goto :goto_5

    :catch_4
    move-exception p2

    move-object v1, v2

    :goto_4
    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v1, v2

    goto :goto_a

    :catch_5
    move-exception p2

    move-object v1, v2

    .line 112
    :goto_5
    :try_start_5
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_2

    .line 116
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception p2

    .line 118
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_6
    if-eqz v1, :cond_4

    .line 123
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_9

    :catch_7
    move-exception p2

    move-object v1, v2

    :goto_7
    :try_start_8
    const-string v3, "IllegalArgumentException"

    .line 110
    invoke-static {v0, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_3

    .line 116
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception p2

    .line 118
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_8
    if-eqz v1, :cond_4

    .line 123
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_9

    :catch_9
    move-exception p2

    .line 125
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_9
    return p0

    :catchall_3
    move-exception p0

    :goto_a
    if-eqz v2, :cond_5

    .line 116
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    :catch_a
    move-exception p2

    .line 118
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_b
    if-eqz v1, :cond_6

    .line 123
    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_c

    :catch_b
    move-exception p2

    .line 125
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_6
    :goto_c
    throw p0
.end method

.method public tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
