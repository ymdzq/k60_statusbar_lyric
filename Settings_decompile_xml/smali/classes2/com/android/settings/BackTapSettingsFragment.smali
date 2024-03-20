.class public Lcom/android/settings/BackTapSettingsFragment;
.super Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;
.source "BackTapSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "back_double_tap"

    .line 61
    invoke-static {v0, v1}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "none"

    if-nez v0, :cond_0

    move-object v0, v1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "back_triple_tap"

    .line 67
    invoke-static {v0, v2}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 72
    :goto_0
    iget-object p0, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BackTapSettingsFragment"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "back_double_tap"

    const-string v3, "back_triple_tap"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v0, v4}, Lcom/android/settings/MiuiShortcut$Key;->initFunctionsAndValues(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 40
    sget v1, Lcom/android/settings/R$xml;->backtap_settings_fragment:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    sget-object p1, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;->GESTURE_BACK_TAP_KEY:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mPageTitle:Ljava/lang/String;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, -0x2

    if-ne p1, v0, :cond_0

    .line 78
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackDoubleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-ne p1, v0, :cond_1

    .line 84
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    iget-object p1, p0, Lcom/android/settings/KeyAndGestureShortcutStatHelperFragment;->mShortcutMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/settings/BackTapSettingsFragment;->mBackTripleTap:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/BackTapSettingsFragment;->updateState()V

    return-void
.end method
