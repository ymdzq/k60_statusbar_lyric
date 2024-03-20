.class Lcom/android/settings/search/BackupSettingsUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "BackupSettingsUpdateHelper.java"


# static fields
.field private static final AUTO_RESTORE_RESOURCE:Ljava/lang/String; = "auto_restore_title"

.field private static final BACKUP_DATA_RESOURCE:Ljava/lang/String; = "backup_data_title"

.field private static final CLOUD_BACKUP_RESOURCE:Ljava/lang/String; = "cloud_backup_settings_section_title"

.field private static final CLOUD_RESTORE_RESOURCE:Ljava/lang/String; = "cloud_restore_section_title"

.field private static final CONFIGURE_ACCOUNT_RESOURCE:Ljava/lang/String; = "backup_configure_account_title"

.field private static final LOCAL_AUTO_BACKUP_RESOURCE:Ljava/lang/String; = "local_auto_backup_section_title"

.field private static final LOCAL_BACKUP_RESOURCE:Ljava/lang/String; = "local_backup_section_title"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lmiui/accounts/ExtraAccountManager;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "cloud_backup_settings_section_title"

    const-string v2, "cloud_restore_section_title"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 24
    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 25
    invoke-static {p0, p1, v1, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.google.settings"

    const/4 v5, 0x0

    .line 28
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v4, "auto_restore_title"

    const-string v6, "backup_configure_account_title"

    if-eqz v0, :cond_2

    const-string v0, "backup_data_title"

    .line 30
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideTreeByRootResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 31
    invoke-static {p0, p1, v6}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 32
    invoke-static {p0, p1, v4}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "backup"

    .line 35
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 40
    :try_start_0
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :try_start_1
    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    move v5, v3

    goto :goto_1

    :catch_0
    move v7, v5

    :catch_1
    :cond_3
    :goto_1
    if-nez v7, :cond_4

    .line 47
    invoke-static {p0, p1, v4, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    :cond_4
    if-nez v5, :cond_5

    .line 50
    invoke-static {p0, p1, v6, v3}, Lcom/android/settings/search/BaseSearchUpdateHelper;->disableByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 53
    :cond_5
    :goto_2
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_7

    .line 55
    invoke-static {p0, p1, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 56
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v0, "local_backup_section_title"

    .line 58
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "com.android.settings.SubSettings"

    const-string v3, "com.android.settings"

    const-string v4, ""

    const-string v5, "fragment"

    const-string v6, "dest_class"

    const-string v7, "dest_package"

    const-string v8, "intent_action"

    const/4 v9, 0x4

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.miui.backup.ui.MainFragmentPad"

    filled-new-array {v4, v3, v2, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v9, v5, v2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateSearchItem(Ljava/util/ArrayList;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "local_auto_backup_section_title"

    .line 71
    invoke-static {p0, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->getIdWithResource(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.miui.backup.auto.AutoBackupFragmentPad"

    filled-new-array {v4, v3, v2, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v1, v9, v10, v11}, Lcom/android/settings/search/BaseSearchUpdateHelper;->updateSearchItem(Ljava/util/ArrayList;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    return-void
.end method
