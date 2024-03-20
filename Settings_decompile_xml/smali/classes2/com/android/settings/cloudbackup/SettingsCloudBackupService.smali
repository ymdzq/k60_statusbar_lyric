.class public Lcom/android/settings/cloudbackup/SettingsCloudBackupService;
.super Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;
.source "SettingsCloudBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lcom/xiaomi/settingsdk/backup/ICloudBackup;
    .locals 0

    .line 10
    new-instance p0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;

    invoke-direct {p0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;-><init>()V

    return-object p0
.end method
