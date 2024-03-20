.class public Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiDefaultAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$ResetToDefault;
    }
.end annotation


# instance fields
.field private mDefaultAppControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mEntries:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mresetToDefault(Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->resetToDefault()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private resetToDefault()V
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->setDefaultDialer(Ljava/lang/String;)Z

    const-string v1, "com.android.mms"

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_structure_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assist_screenshot_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/DefaultAppsHelper;->getRsaDefaultBrowser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.mi.globalbrowser"

    invoke-static {v1, v3}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v3, "com.android.browser"

    invoke-static {v1, v3}, Lcom/android/settings/MiuiUtils;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    goto :goto_0

    .line 162
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    .line 165
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ASSIST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 167
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_5

    .line 168
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 171
    :cond_5
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settings/applications/DefaultAppsHelper;->getIntent(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 173
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_6

    .line 174
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 178
    instance-of v2, v1, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$ResetToDefault;

    if-eqz v2, :cond_7

    .line 179
    check-cast v1, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$ResetToDefault;

    invoke-interface {v1}, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$ResetToDefault;->resetDefaults()V

    goto :goto_1

    .line 182
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultVideoPlayer(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultAssistant(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->preferred_app_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mEntries:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    .line 65
    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultApplicationPreferenceController;

    const-string v2, "default_call_screening"

    const-string v3, "android.app.role.CALL_SCREENING"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/applications/defaultapps/DefaultApplicationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultCameraPreferenceController;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mEntries:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v4, "default_camera"

    invoke-direct {v1, p1, v4, v3, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultCameraPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultGalleryPreferenceController;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mEntries:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "default_gallery"

    invoke-direct {v1, p1, v4, v3, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultGalleryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultMusicPreferenceController;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mEntries:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const-string v4, "default_music"

    invoke-direct {v1, p1, v4, v3, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultMusicPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultEmailPreferenceController;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mEntries:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const-string v4, "default_email"

    invoke-direct {v1, p1, v4, v3, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultEmailPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultVideoPreferenceController;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mEntries:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const-string v4, "default_video"

    invoke-direct {v1, p1, v4, v3, v2}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceControllerImpl$DefaultVideoPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->mDefaultAppControllers:Ljava/util/List;

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiDefaultAppSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 57
    sget p0, Lcom/android/settings/R$xml;->miui_app_default_settings:I

    return p0
.end method

.method public isAdapterFoldDevice()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isEasyMode()Z
    .locals 2

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "elderly_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 92
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->isEasyMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "default_home"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 128
    :cond_0
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/settings/RegionUtils;->isRSA4()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string v0, "default_voice_helper"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 p0, 0x1

    .line 97
    sget p2, Lcom/android/settings/R$string;->preferred_app_settings_reset:I

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    .line 98
    sget p1, Lcom/android/settings/R$drawable;->action_button_clear:I

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p1, 0x5

    .line 99
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->preferred_app_settings_reset:I

    .line 107
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->preferred_app_settings_reset_message:I

    .line 108
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->preferred_app_settings_reset_button:I

    .line 110
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$1;-><init>(Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return v1

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
