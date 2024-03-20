.class public Lcom/android/settings/backup/SettingsAgent;
.super Lcom/android/settings/backup/AgentBase;
.source "SettingsAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/backup/SettingsAgent$AgentV1;,
        Lcom/android/settings/backup/SettingsAgent$AgentV2;
    }
.end annotation


# instance fields
.field private final VERSION_SETTINGS_AGENT:I

.field private mV1:Lcom/android/settings/backup/SettingsAgent$AgentV1;

.field private mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

.field private skipBackupRestoreRing:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetskipBackupRestoreRing(Lcom/android/settings/backup/SettingsAgent;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/backup/SettingsAgent;->skipBackupRestoreRing:Z

    return p0
.end method

.method public constructor <init>(Lmiui/app/backup/FullBackupAgent;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/backup/AgentBase;-><init>(Lmiui/app/backup/FullBackupAgent;)V

    const/4 p1, 0x2

    .line 39
    iput p1, p0, Lcom/android/settings/backup/SettingsAgent;->VERSION_SETTINGS_AGENT:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/backup/SettingsAgent;->skipBackupRestoreRing:Z

    return-void
.end method


# virtual methods
.method public endRestore(Lmiui/app/backup/BackupMeta;)I
    .locals 2

    .line 151
    iget p1, p1, Lmiui/app/backup/BackupMeta;->version:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent;->mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent;->mV1:Lcom/android/settings/backup/SettingsAgent$AgentV1;

    if-eqz p0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/backup/SettingsAgent$AgentV1;->endRestore()I

    :goto_0
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Backup:SettingsAgent"

    const-string v1, "full backup"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/android/settings/backup/SettingsAgent$AgentV2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SettingsAgent$AgentV2;-><init>(Lcom/android/settings/backup/SettingsAgent;Lcom/android/settings/backup/SettingsAgent$AgentV2-IA;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingsAgent;->mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/settings/backup/SettingsAgent$AgentV2;->fullBackup(Landroid/os/ParcelFileDescriptor;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getBackupVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public restoreAttaches(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 2

    .line 127
    iget p1, p1, Lmiui/app/backup/BackupMeta;->version:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/android/settings/backup/SettingsAgent;->mV1:Lcom/android/settings/backup/SettingsAgent$AgentV1;

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/backup/SettingsAgent$AgentV1;->restoreAttaches(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v0

    .line 135
    :goto_0
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent;->mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

    if-eqz p0, :cond_3

    .line 136
    invoke-static {p3, p2}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreOneFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    move v0, p1

    :cond_3
    :goto_1
    return v0
.end method

.method public restoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/android/settings/backup/SettingsAgent$AgentV2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/SettingsAgent$AgentV2;-><init>(Lcom/android/settings/backup/SettingsAgent;Lcom/android/settings/backup/SettingsAgent$AgentV2-IA;)V

    iput-object v0, p0, Lcom/android/settings/backup/SettingsAgent;->mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

    .line 120
    invoke-virtual {v0, p1}, Lcom/android/settings/backup/SettingsAgent$AgentV2;->restoreData(Landroid/os/ParcelFileDescriptor;)I

    const/4 p0, 0x0

    return p0
.end method

.method public restoreData(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget p1, p1, Lmiui/app/backup/BackupMeta;->version:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    const-string p1, "Backup:SettingsAgent"

    const-string/jumbo v0, "restore data"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p1, Lcom/android/settings/backup/SettingsAgent$AgentV2;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/backup/SettingsAgent$AgentV2;-><init>(Lcom/android/settings/backup/SettingsAgent;Lcom/android/settings/backup/SettingsAgent$AgentV2-IA;)V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsAgent;->mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

    .line 109
    invoke-virtual {p1, p2}, Lcom/android/settings/backup/SettingsAgent$AgentV2;->restoreData(Landroid/os/ParcelFileDescriptor;)I

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Lcom/android/settings/backup/SettingsAgent$AgentV1;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/backup/SettingsAgent$AgentV1;-><init>(Lcom/android/settings/backup/SettingsAgent;Lcom/android/settings/backup/SettingsAgent$AgentV1-IA;)V

    iput-object p1, p0, Lcom/android/settings/backup/SettingsAgent;->mV1:Lcom/android/settings/backup/SettingsAgent$AgentV1;

    .line 104
    invoke-virtual {p1, p2}, Lcom/android/settings/backup/SettingsAgent$AgentV1;->restoreData(Landroid/os/ParcelFileDescriptor;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public skipBackupRestoreRing()V
    .locals 1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/android/settings/backup/SettingsAgent;->skipBackupRestoreRing:Z

    return-void
.end method

.method public tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/backup/SettingsAgent;->mV2:Lcom/android/settings/backup/SettingsAgent$AgentV2;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
