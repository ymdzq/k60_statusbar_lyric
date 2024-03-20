.class public Lcom/android/settings/backup/SettingsBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "SettingsBackupAgent.java"


# instance fields
.field private mAgent:Lcom/android/settings/backup/AgentBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method

.method private backupAgentWithKey(Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)V
    .locals 6

    const-string v0, "Settings:SettingsBackupAgent"

    .line 189
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupAgentWithKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingsBackupAgent;->getAgent(Ljava/lang/String;)Lcom/android/settings/backup/AgentBase;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 195
    :cond_0
    instance-of v2, v1, Lcom/android/settings/backup/SettingsAgent;

    if-eqz v2, :cond_1

    .line 196
    move-object v2, v1

    check-cast v2, Lcom/android/settings/backup/SettingsAgent;

    invoke-virtual {v2}, Lcom/android/settings/backup/SettingsAgent;->skipBackupRestoreRing()V

    :cond_1
    const-string v2, "backupAgent start"

    .line 198
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_backup_temp_file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "newFile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/high16 v3, 0x20000000

    .line 204
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const-string v4, "fullBackup start"

    .line 205
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v1, v3}, Lcom/android/settings/backup/AgentBase;->fullBackup(Landroid/os/ParcelFileDescriptor;)I

    const/high16 v1, 0x10000000

    .line 207
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 208
    invoke-direct {p0, p2, p1, v1}, Lcom/android/settings/backup/SettingsBackupAgent;->writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 209
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p0

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backup delete tmp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onBackup error"

    .line 212
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private getAgent(Ljava/lang/String;)Lcom/android/settings/backup/AgentBase;
    .locals 2

    .line 230
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_2

    .line 232
    :pswitch_0
    new-instance p1, Lcom/android/settings/backup/SettingsAgent;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/SettingsAgent;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    :goto_1
    move-object p0, p1

    goto :goto_2

    .line 238
    :pswitch_1
    new-instance p1, Lcom/android/settings/backup/WifiAgent;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/WifiAgent;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    goto :goto_1

    .line 235
    :pswitch_2
    new-instance p1, Lcom/android/settings/backup/AccountAgent;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/AccountAgent;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    goto :goto_1

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x462c75d3 -> :sswitch_2
        0x37af15 -> :sswitch_1
        0x5582bc23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAgent(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lcom/android/settings/backup/AccountAgent;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/AccountAgent;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Lcom/android/settings/backup/WifiAgent;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/WifiAgent;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Lcom/android/settings/backup/SettingsAgent;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/SettingsAgent;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    :goto_0
    return-void
.end method

.method private writeEntity(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    const-string v0, "Settings:SettingsBackupAgent"

    .line 218
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackup writeEntity start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0, p3}, Lcom/android/settings/backup/SettingsBackupAgent;->convertParcelFileDescriptorToByteArray(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object p0

    .line 220
    array-length p3, p0

    invoke-virtual {p1, p2, p3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 221
    array-length p2, p0

    invoke-virtual {p1, p0, p2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    const-string/jumbo p0, "onBackup writeEntity end:"

    .line 222
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onBackup writeEntity error:"

    .line 224
    invoke-static {v0, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public convertParcelFileDescriptorToByteArray(Landroid/os/ParcelFileDescriptor;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "convertParcelFileDescriptorToByteArray start"

    const-string v0, "Settings:SettingsBackupAgent"

    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 160
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 162
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read buffer start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, p0

    .line 167
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    add-int/2addr v4, v5

    .line 169
    invoke-virtual {v3, v1, p0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-ne p1, v4, :cond_0

    const-string/jumbo p1, "write end"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v1

    :goto_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v3, v1

    :goto_1
    :try_start_3
    const-string v2, "convertParcelFd"

    .line 177
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    :goto_2
    const-string p1, "convertParcelFileDescriptorToByteArray end"

    .line 183
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_3

    new-array p0, p0, [B

    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :goto_3
    return-object p0

    :goto_4
    if-eqz v1, :cond_4

    .line 180
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 182
    :cond_4
    throw p0
.end method

.method protected getVersion(I)I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingsBackupAgent;->initAgent(I)V

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    invoke-virtual {p0}, Lcom/android/settings/backup/AgentBase;->getBackupVersion()I

    move-result p0

    return p0
.end method

.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/backup/AgentBase;->restoreAttaches(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo p1, "onBackup start"

    const-string p3, "Settings:SettingsBackupAgent"

    .line 47
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo p1, "settings"

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/backup/SettingsBackupAgent;->backupAgentWithKey(Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)V

    const-string/jumbo p1, "wifi"

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/backup/SettingsBackupAgent;->backupAgentWithKey(Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "onBackup error"

    .line 52
    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p0, "onBackup end"

    .line 54
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    if-nez v0, :cond_0

    .line 108
    iget v0, p1, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-direct {p0, v0}, Lcom/android/settings/backup/SettingsBackupAgent;->initAgent(I)V

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/AgentBase;->restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    return p0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0, p2}, Lcom/android/settings/backup/SettingsBackupAgent;->initAgent(I)V

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    invoke-virtual {p0, p1}, Lcom/android/settings/backup/AgentBase;->fullBackup(Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    return p0
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo p2, "onRestore start"

    const-string p3, "Settings:SettingsBackupAgent"

    .line 58
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 61
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestore loading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v0

    .line 64
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1, v1, v2, v0}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_restore_temp_file"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p2

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :try_start_2
    invoke-virtual {p2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 73
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    :try_start_6
    const-string/jumbo v1, "write result error"

    .line 76
    invoke-static {p3, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/high16 p2, 0x10000000

    .line 80
    invoke-static {v0, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/backup/SettingsBackupAgent;->getAgent(Ljava/lang/String;)Lcom/android/settings/backup/AgentBase;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreData agentBase:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreData agent key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v1, p2}, Lcom/android/settings/backup/AgentBase;->restoreData(Landroid/os/ParcelFileDescriptor;)I

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restore delete tmp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "onRestore error"

    .line 92
    invoke-static {p3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string/jumbo p0, "onRestore end"

    .line 94
    invoke-static {p3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/settings/backup/AgentBase;->endRestore(Lmiui/app/backup/BackupMeta;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-super {p0, p1, p2, p3}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result p3

    if-nez p3, :cond_1

    .line 125
    iget-object p0, p0, Lcom/android/settings/backup/SettingsBackupAgent;->mAgent:Lcom/android/settings/backup/AgentBase;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/backup/AgentBase;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :cond_1
    :goto_0
    return p3
.end method
