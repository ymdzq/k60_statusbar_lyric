.class public Lcom/android/settings/backup/MiuiFlashDriveBackupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiFlashDriveBackupController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final FLASH_DRIVE_BACKUP:Ljava/lang/String; = "flash_drive_backup"

.field private static final TAG:Ljava/lang/String; = "MiuiFlashDriveBackup"


# instance fields
.field private mChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mFlashDriveBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

.field private mIsSupportBRWithUsb:Z

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static bridge synthetic -$$Nest$mupdateFlashDriveBackupPreference(Lcom/android/settings/backup/MiuiFlashDriveBackupController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->updateFlashDriveBackupPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/android/settings/backup/MiuiFlashDriveBackupController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/MiuiFlashDriveBackupController$1;-><init>(Lcom/android/settings/backup/MiuiFlashDriveBackupController;)V

    iput-object p1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 123
    new-instance p1, Lcom/android/settings/backup/MiuiFlashDriveBackupController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/MiuiFlashDriveBackupController$2;-><init>(Lcom/android/settings/backup/MiuiFlashDriveBackupController;)V

    iput-object p1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 49
    invoke-direct {p0}, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->supportBackupRestoreWithUsb()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mIsSupportBRWithUsb:Z

    .line 50
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private supportBackupRestoreWithUsb()Z
    .locals 3

    .line 91
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.miui.backup"

    const/16 v2, 0x80

    .line 94
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 95
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v0, "com.miui.backup.hasBackupToUsbFeature"

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    :catch_0
    :cond_1
    return v1
.end method

.method private updateFlashDriveBackupPreference()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 75
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mFlashDriveBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    if-eqz v1, :cond_5

    .line 83
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mFlashDriveBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_3

    sget v3, Lcom/android/settings/R$string;->flash_drive_backup_enable:I

    goto :goto_2

    :cond_3
    sget v3, Lcom/android/settings/R$string;->flash_drive_backup_disable:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mFlashDriveBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_4

    sget v0, Lcom/android/settings/R$drawable;->ic_usb_enable:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/android/settings/R$drawable;->ic_usb_disable:I

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/backup/CustomRadioButtonPreference;->setCustomItemIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "flash_drive_backup"

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/backup/CustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mFlashDriveBackup:Lcom/android/settings/backup/CustomRadioButtonPreference;

    .line 63
    iget-object p0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isUsbBackupEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mIsSupportBRWithUsb:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mIsSupportBRWithUsb:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiFlashDriveBackup"

    const-string/jumbo v1, "onPause -> unregisterListener"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mIsSupportBRWithUsb:Z

    if-eqz v0, :cond_0

    const-string v0, "MiuiFlashDriveBackup"

    const-string/jumbo v1, "onResume -> registerListener"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/backup/MiuiFlashDriveBackupController;->updateFlashDriveBackupPreference()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
