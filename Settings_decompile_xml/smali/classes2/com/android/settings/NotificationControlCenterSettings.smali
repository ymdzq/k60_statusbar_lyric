.class public Lcom/android/settings/NotificationControlCenterSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "NotificationControlCenterSettings.java"


# instance fields
.field private mControlCenterExpandCard:Landroidx/preference/Preference;

.field private mNotifDisplay:Landroidx/preference/PreferenceScreen;

.field private mNotifManager:Landroidx/preference/PreferenceScreen;

.field private mNotificationAnimation:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mNotificationAnimationStyleObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$mupdateNotificationAnimationPref(Lcom/android/settings/NotificationControlCenterSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->updateNotificationAnimationPref()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getDefaultKeyguardNotificationAnimationStyle()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "new_device_after_support_notification_animation"

    const/4 v1, 0x0

    .line 163
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    return v0
.end method

.method private getNotificationAnimationStyle()Ljava/lang/String;
    .locals 3

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->getDefaultKeyguardNotificationAnimationStyle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$array;->aod_notification_status_entries:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-ltz v0, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 157
    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method private isAODAvailable()Z
    .locals 4

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "bool"

    const-string v2, "android"

    const-string v3, "config_dozeAlwaysOnDisplayAvailable"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isAppEnable(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 84
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private registerNotificationAnimationObserver()V
    .locals 4

    .line 179
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->isAODAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wakeup_for_keyguard_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimationStyleObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimationStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method private setUpNotificationSettingsEnable()V
    .locals 2

    const-string v0, "com.miui.notification"

    .line 76
    invoke-direct {p0, v0}, Lcom/android/settings/NotificationControlCenterSettings;->isAppEnable(Ljava/lang/String;)Z

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotifManager:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 78
    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotifDisplay:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setupControlCenter()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "control_center"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/utils/Utils;->MIUI_LITE_V2:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "control_center_style"

    .line 107
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/Utils;->isPad()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/Utils;->isFold()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/utils/Utils;->MIUI_LITE_V2:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "style_delete_guide"

    .line 111
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private setupControlCenterExpandCard()V
    .locals 1

    const-string v0, "expand_card_action"

    .line 117
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mControlCenterExpandCard:Landroidx/preference/Preference;

    return-void
.end method

.method private setupNotificationAnimation()V
    .locals 3

    const-string/jumbo v0, "notification_control_center_settings"

    .line 132
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    const-string/jumbo v1, "notification_light_effect"

    .line 133
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v2, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimation:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 134
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->isAODAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreferenceRecursively(Ljava/lang/CharSequence;)Z

    :cond_0
    return-void
.end method

.method private unregisterNotificationAnimationObserver()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimationStyleObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimationStyleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateControlCenterExpandCard()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mControlCenterExpandCard:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mControlCenterExpandCard:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private updateNotificationAnimationPref()V
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->getNotificationAnimationStyle()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object p0, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimation:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/android/settings/R$xml;->notification_control_center_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->notification_control_center:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->setupControlCenter()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->setupControlCenterExpandCard()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->setupNotificationAnimation()V

    .line 62
    new-instance p1, Lcom/android/settings/NotificationControlCenterSettings$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/NotificationControlCenterSettings$1;-><init>(Lcom/android/settings/NotificationControlCenterSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotificationAnimationStyleObserver:Landroid/database/ContentObserver;

    const-string/jumbo p1, "notification_managing"

    .line 70
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotifManager:Landroidx/preference/PreferenceScreen;

    const-string/jumbo p1, "notification_display_settings"

    .line 71
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/NotificationControlCenterSettings;->mNotifDisplay:Landroidx/preference/PreferenceScreen;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->setUpNotificationSettingsEnable()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->unregisterNotificationAnimationObserver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->updateControlCenterExpandCard()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/NotificationControlCenterSettings;->registerNotificationAnimationObserver()V

    return-void
.end method
