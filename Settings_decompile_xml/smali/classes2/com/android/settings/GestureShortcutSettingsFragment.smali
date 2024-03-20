.class public Lcom/android/settings/GestureShortcutSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GestureShortcutSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mFingerprintHelper:Lcom/android/settings/FingerprintHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getSummary(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private initFpDoubleTap()V
    .locals 4

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/android/settings/MiuiShortcut$Key;->initFunctionsAndValues(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateState()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FINGERPRINT_TAP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 152
    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 154
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "none"

    .line 158
    :cond_1
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getPageIndex()I
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$System;->isFullScreenStatus(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x7d1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/android/settings/R$xml;->gesture_shortcut_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->hasBackTapSensorFeature(Landroid/content/Context;)Z

    move-result p1

    .line 38
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$Key;->setGestureMap(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/settings/FingerprintHelper;

    iget-object v1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    const-string v0, "function_shortcut"

    .line 41
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "advanced_gesture"

    .line 43
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 46
    sget-object v2, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 48
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo v4, "mi_pay"

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    iget-object v4, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/MiuiShortcut$Key;->isTSMClientInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    iget-object v4, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.nfc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 56
    iget-object v4, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->mi_pay_summary_without_nfc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/settings/GestureShortcutSettingsFragment;->getSummary(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_a

    const-string v0, "knock_gesture_v"

    .line 69
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/MiuiShortcut$System;->hasKnockFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 73
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_4
    const-string v2, "knock_slide_v"

    .line 75
    iget-object v3, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v2, v3}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    const-string v0, "back_tap"

    .line 80
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 83
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    const-string p1, "fingerprint_double_tap"

    .line 85
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p1, :cond_9

    .line 88
    sget-boolean p1, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FINGERPRINT_TAP:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 89
    invoke-virtual {p1}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    .line 92
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/GestureShortcutSettingsFragment;->initFpDoubleTap()V

    goto :goto_5

    .line 90
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 96
    :cond_9
    :goto_5
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_a

    .line 97
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    const-string/jumbo p0, "setting_Additional_settings_btnshortcut"

    .line 100
    invoke-static {p0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 165
    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/GestureShortcutSettingsFragment;->mDropDownFpTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 146
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/GestureShortcutSettingsFragment;->updateState()V

    return-void
.end method
