.class public Lcom/android/settings/development/SelectLogLevelPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SelectLogLevelPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mLogdLogLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "select_logd_system_level"

    .line 32
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/development/SelectLogLevelPreferenceController;->mLogdLogLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "select_logd_system_level"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 37
    invoke-virtual {p0, p2}, Lcom/android/settings/development/SelectLogLevelPreferenceController;->writeLogdLevelOption(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateLogdLogLevel()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settings/development/SelectLogLevelPreferenceController;->mLogdLogLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.logd.limit"

    const-string v1, ""

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_0

    const-string v0, "Warn"

    goto :goto_0

    :cond_0
    const-string v0, "Info"

    .line 58
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/SelectLogLevelPreferenceController;->mLogdLogLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/settings/development/SelectLogLevelPreferenceController;->mLogdLogLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/SelectLogLevelPreferenceController;->mLogdLogLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/development/SelectLogLevelPreferenceController;->updateLogdLogLevel()V

    return-void
.end method

.method public writeLogdLevelOption(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    const-string/jumbo v1, "persist.logd.limit"

    .line 67
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ctl.start"

    const-string v0, "logd-reinit"

    .line 72
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/development/SelectLogLevelPreferenceController;->updateLogdLogLevel()V

    :cond_1
    return-void
.end method
