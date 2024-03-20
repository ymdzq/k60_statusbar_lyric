.class Lcom/android/settings/backup/SettingsAgent$AgentV2;
.super Ljava/lang/Object;
.source "SettingsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgentV2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/backup/SettingsAgent;


# direct methods
.method private constructor <init>(Lcom/android/settings/backup/SettingsAgent;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV2;->this$0:Lcom/android/settings/backup/SettingsAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingsAgent;Lcom/android/settings/backup/SettingsAgent$AgentV2-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingsAgent$AgentV2;-><init>(Lcom/android/settings/backup/SettingsAgent;)V

    return-void
.end method


# virtual methods
.method public fullBackup(Landroid/os/ParcelFileDescriptor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;

    invoke-direct {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV2;->this$0:Lcom/android/settings/backup/SettingsAgent;

    invoke-static {v1}, Lcom/android/settings/backup/SettingsAgent;->-$$Nest$fgetskipBackupRestoreRing(Lcom/android/settings/backup/SettingsAgent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->setSkipBackupRestoreRing(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV2;->this$0:Lcom/android/settings/backup/SettingsAgent;

    iget-object v1, v1, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-static {v1, p1, v0}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    move-result-object p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "backup attach count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Backup:SettingsAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->getFileItems()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV2;->this$0:Lcom/android/settings/backup/SettingsAgent;

    iget-object v1, v1, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v1, v0}, Lmiui/app/backup/FullBackupAgent;->addAttachedFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public restoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;

    invoke-direct {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/android/settings/backup/SettingsAgent$AgentV2;->this$0:Lcom/android/settings/backup/SettingsAgent;

    invoke-static {v1}, Lcom/android/settings/backup/SettingsAgent;->-$$Nest$fgetskipBackupRestoreRing(Lcom/android/settings/backup/SettingsAgent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->setSkipBackupRestoreRing(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent$AgentV2;->this$0:Lcom/android/settings/backup/SettingsAgent;

    iget-object p0, p0, Lcom/android/settings/backup/AgentBase;->mAgent:Lmiui/app/backup/FullBackupAgent;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)V

    const/4 p0, 0x0

    return p0
.end method
