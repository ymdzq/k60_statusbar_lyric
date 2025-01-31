.class public Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ShowOnLockScreenNotificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mSettingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 51
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private adminAllowsNotifications()Z
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 2

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getLockscreenSilentNotificationsEnabled()Z
    .locals 2

    .line 159
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_silent_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 139
    invoke-static {p0, p4, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 142
    new-instance p4, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {p4, p2, p3, p0}, Lcom/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 144
    invoke-virtual {p1, p4}, Lcom/android/settings/RestrictedListPreference;->addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->clearRestrictedItems()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->lock_screen_notifs_show_all:I

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    .line 83
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 86
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->lock_screen_notifs_show_alerting:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0, p1, v2, v6, v5}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->setRestrictedIfNotificationFeaturesDisabled(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 93
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->lock_screen_notifs_show_none:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->adminAllowsNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->getLockscreenSilentNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_2
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mSettingKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->adminAllowsNotifications()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->getLockscreenSilentNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_alerting:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_all_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 125
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 126
    sget v0, Lcom/android/settings/R$string;->lock_screen_notifs_show_none:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 127
    :goto_0
    sget v3, Lcom/android/settings/R$string;->lock_screen_notifs_show_all:I

    if-ne p2, v3, :cond_1

    move v1, v2

    .line 128
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "lock_screen_show_silent_notifications"

    invoke-static {p2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "lock_screen_show_notifications"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v2
.end method

.method setDpm(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method
