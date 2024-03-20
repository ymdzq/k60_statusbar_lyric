.class public Lcom/android/settings/backup/WifiAgent;
.super Lcom/android/settings/backup/AgentBase;
.source "WifiAgent.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/backup/AgentBase;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    .line 38
    invoke-virtual {p1}, Lmiui/app/backup/FullBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/WifiAgent;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public endRestore(Lmiui/app/backup/BackupMeta;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "IOException"

    const-string v1, "-------------fullBackup begin-------------"

    const-string v2, "Backup:WifiAgent"

    .line 48
    invoke-static {v2, v1}, Lcom/android/settings/utils/LogUtil;->logCloudSync(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 51
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    invoke-static {}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->getInstance()Lcom/android/settings/wifi/WifiConfigForSupplicant;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/backup/WifiAgent;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->getConfiguredNetworks(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 61
    :goto_1
    :try_start_3
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 68
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const-string p0, "-------------fullBackup   end-------------"

    .line 71
    invoke-static {v2, p0}, Lcom/android/settings/utils/LogUtil;->logCloudSync(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :goto_3
    if-eqz v1, :cond_3

    .line 65
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 68
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_3
    :goto_4
    throw p0
.end method

.method public getBackupVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public restoreAttaches(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public restoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/backup/WifiAgent;->restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    return p0
.end method

.method public restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "-------------restoreData begin-------------"

    const-string v0, "Backup:WifiAgent"

    .line 82
    invoke-static {v0, p1}, Lcom/android/settings/utils/LogUtil;->logCloudSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->getInstance()Lcom/android/settings/wifi/WifiConfigForSupplicant;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->storeWifiConfigs(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 86
    invoke-static {}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->getInstance()Lcom/android/settings/wifi/WifiConfigForSupplicant;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiConfigForSupplicant;->getRestoreWifiConfigs(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    .line 88
    invoke-static {p2}, Lcom/android/settings/wifi/WifiConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WifiConfigurationManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/WifiConfigurationManager;->filterUnsavedWifiConfigurations(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "-------------restoreData   end-------------"

    .line 89
    invoke-static {v0, p2}, Lcom/android/settings/utils/LogUtil;->logCloudSync(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore configs size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.RESTORE_WIFI_CONFIGURATIONS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android"

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "wifiConfiguration"

    const/16 v4, 0x1f4

    if-le v1, v4, :cond_1

    move v5, p2

    :goto_0
    if-ge v5, v1, :cond_2

    .line 100
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "split configs: start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " end="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {p1, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 103
    iget-object v5, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Lmiui/app/backup/FullBackupAgent;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit16 v5, v4, 0x1f4

    if-le v5, v1, :cond_0

    move v5, v4

    move v4, v1

    goto :goto_0

    :cond_0
    move v8, v5

    move v5, v4

    move v4, v8

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 112
    iget-object p0, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Lmiui/app/backup/FullBackupAgent;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p2
.end method

.method public tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
