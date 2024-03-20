.class public Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;
.super Ljava/lang/Object;
.source "SettingsCloudBackupImpl.java"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# instance fields
.field private skipBackupRestoreRing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->skipBackupRestoreRing:Z

    return-void
.end method

.method private getWeiboAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string p0, "account"

    .line 161
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 162
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    .line 163
    iget-object v2, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.sina.weibo.account"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object p0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 154
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    if-nez v0, :cond_1

    const-string v0, "SettingsCloudBackup"

    .line 155
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    const-string/jumbo v0, "start settings backup. "

    const-string v1, "SettingsCloudBackup"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1}, Lcom/android/settings/cloudbackup/ConnectionCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Connection"

    .line 45
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "weiboAccount"

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->getWeiboAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/android/settings/cloudbackup/NotificationCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "NotificationFilter"

    .line 48
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 51
    invoke-static {p1}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "StatusBar"

    .line 50
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 53
    invoke-static {p1}, Lcom/android/settings/cloudbackup/AdvancedSettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "AdvanceSettings"

    .line 52
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 55
    invoke-static {p1}, Lcom/android/settings/cloudbackup/SoundAndVibrateCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "SoundAndVibrateSettings"

    .line 54
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    invoke-static {p1}, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "DisplaySettings"

    .line 56
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 59
    invoke-static {p1}, Lcom/android/settings/cloudbackup/AccessibilityCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "Accessibility"

    .line 58
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 61
    invoke-static {p1}, Lcom/android/settings/cloudbackup/LockScreenSettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "LockScreen"

    .line 60
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 63
    invoke-static {p1}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "SilentSettings"

    .line 62
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 65
    invoke-static {p1}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "DefaultAppSettings"

    .line 64
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 67
    invoke-static {p1}, Lcom/android/settings/cloudbackup/KeySettingsCloudBackupHelper;->saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "ScreenKeySettings"

    .line 66
    invoke-virtual {p2, v2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipBackupRestoreRing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->skipBackupRestoreRing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean p0, p0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->skipBackupRestoreRing:Z

    if-nez p0, :cond_0

    .line 70
    invoke-static {p1, p2}, Lcom/android/settings/cloudbackup/RingtoneCloudBackupHelper;->backupRingtones(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    :cond_0
    const-string p0, "end settings backup. "

    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "ScreenKeySettings"

    const-string v5, "DefaultAppSettings"

    const-string v6, "SilentSettings"

    const-string v7, "LockScreen"

    const-string v8, "Accessibility"

    const-string v9, "DisplaySettings"

    const-string v10, "SoundAndVibrateSettings"

    const-string v11, "AdvanceSettings"

    const-string v12, "StatusBar"

    const-string v13, "NotificationFilter"

    const-string v14, "Connection"

    const-string/jumbo v0, "start settings restore. "

    const-string v15, "SettingsCloudBackup"

    .line 81
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreFiles(Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    const-string/jumbo v0, "onRestoreSettings: restoreFile"

    .line 88
    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_0
    invoke-virtual {v3, v14}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v3, v14}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 91
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/ConnectionCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 94
    :cond_0
    invoke-virtual {v3, v13}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v3, v13}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/NotificationCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 98
    :cond_1
    invoke-virtual {v3, v12}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v3, v12}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/StatusBarCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 102
    :cond_2
    invoke-virtual {v3, v11}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v3, v11}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/AdvancedSettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 106
    :cond_3
    invoke-virtual {v3, v10}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 108
    invoke-virtual {v3, v10}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/SoundAndVibrateCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 110
    :cond_4
    invoke-virtual {v3, v9}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 112
    invoke-virtual {v3, v9}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/DisplaySettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 114
    :cond_5
    invoke-virtual {v3, v8}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 116
    invoke-virtual {v3, v8}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/AccessibilityCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 118
    :cond_6
    invoke-virtual {v3, v7}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 120
    invoke-virtual {v3, v7}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/LockScreenSettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 122
    :cond_7
    invoke-virtual {v3, v6}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 124
    invoke-virtual {v3, v6}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 126
    :cond_8
    invoke-virtual {v3, v5}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {v3, v5}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/DefaultAppSettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 130
    :cond_9
    invoke-virtual {v3, v4}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 132
    invoke-virtual {v3, v4}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->logJSON(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    invoke-static {v2, v0}, Lcom/android/settings/cloudbackup/KeySettingsCloudBackupHelper;->restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 134
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skipBackupRestoreRing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    iget-boolean v4, v1, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->skipBackupRestoreRing:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, v1, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->skipBackupRestoreRing:Z

    if-nez v0, :cond_b

    .line 136
    invoke-static/range {p1 .. p2}, Lcom/android/settings/cloudbackup/RingtoneCloudBackupHelper;->restoreRingtones(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    :cond_b
    const-string v0, "end settings restore. "

    .line 138
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string/jumbo v0, "settings restore exception."

    .line 140
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CloudBackupRestoreException"

    .line 141
    invoke-static {v0}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setSkipBackupRestoreRing(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/settings/cloudbackup/SettingsCloudBackupImpl;->skipBackupRestoreRing:Z

    return-void
.end method
