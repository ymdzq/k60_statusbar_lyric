.class public Lcom/android/settings/backup/PrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private actionBar:Lmiuix/appcompat/app/ActionBar;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 234
    new-instance v0, Lcom/android/settings/backup/PrivacySettings$3;

    sget v1, Lcom/android/settings/R$xml;->privacy_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/backup/PrivacySettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/backup/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 216
    new-instance v0, Lcom/android/settings/backup/PrivacySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/backup/PrivacySettings$2;-><init>(Lcom/android/settings/backup/PrivacySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private updatePrivacySettingsConfigData(Landroid/content/Context;)V
    .locals 0

    .line 137
    invoke-static {p1}, Lcom/android/settings/backup/PrivacySettingsUtils;->isAdminUser(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 139
    invoke-static {}, Lcom/android/settings/backup/PrivacySettingsConfigData;->getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;

    move-result-object p0

    .line 138
    invoke-static {p1, p0}, Lcom/android/settings/backup/PrivacySettingsUtils;->updatePrivacyBuffer(Landroid/content/Context;Lcom/android/settings/backup/PrivacySettingsConfigData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public customActionBar()V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->actionBar:Lmiuix/appcompat/app/ActionBar;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/backup/PrivacySettings;->isDarkModeEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    sget v1, Lcom/android/settings/R$drawable;->miuix_appcompat_icon_settings_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 186
    :cond_1
    sget v1, Lcom/android/settings/R$drawable;->miuix_appcompat_icon_settings_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    :goto_0
    new-instance v1, Lcom/android/settings/backup/PrivacySettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/backup/PrivacySettings$1;-><init>(Lcom/android/settings/backup/PrivacySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->backup_more_settings:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/backup/PrivacySettings;->actionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 207
    sget-boolean v0, Lcom/android/settings/utils/TabletUtils;->IS_TABLET:Z

    if-eqz v0, :cond_2

    .line 208
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->actionBar:Lmiuix/appcompat/app/ActionBar;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_1

    .line 210
    :cond_2
    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->actionBar:Lmiuix/appcompat/app/ActionBar;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    :goto_1
    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 92
    sget p0, Lcom/android/settings/R$string;->help_url_backup_reset:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "PrivacySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x51

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 87
    sget p0, Lcom/android/settings/R$xml;->privacy_settings:I

    return p0
.end method

.method public isDarkModeEnable()Z
    .locals 0

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/backup/MiuiFlashDriveBackupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string/jumbo p0, "setting_About_phone_backup"

    .line 101
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "cloud_restore"

    .line 163
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "miui.intent.action.APP_SETTINGS"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.miui.cloudservice"

    const-string v1, "com.miui.cloudservice.ui.MiCloudMainActivity"

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x10

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 145
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/backup/PrivacySettings;->customActionBar()V

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "local_backup_disable_service"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/backup/PrivacySettings;->actionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/backup/PrivacySettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected updatePreferenceStates()V
    .locals 6

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/backup/PrivacySettings;->updatePrivacySettingsConfigData(Landroid/content/Context;)V

    const-string v0, "cloud_backup_category"

    .line 114
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const-string v1, "cloud_restore"

    .line 115
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveMiCloud(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 122
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "local_backup_disable_service"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "phone_backup"

    .line 123
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v3, "computer_backup"

    .line 124
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "local_backup_usestatus"

    .line 125
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    xor-int/lit8 v5, v0, 0x1

    .line 126
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    xor-int/lit8 v1, v0, 0x1

    .line 127
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isUsbBackupEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "flash_drive_backup"

    .line 129
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v0, :cond_3

    .line 130
    const-class v3, Lcom/android/settings/backup/MiuiFlashDriveBackupController;

    invoke-virtual {p0, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/backup/MiuiFlashDriveBackupController;

    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 132
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 133
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
