.class public Lcom/android/settings/development/DemoModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DemoModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mDemoMode:Landroidx/preference/CheckBoxPreference;

.field private final mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/android/settings/development/DemoModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private enableDemoMode(Z)V
    .locals 3

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "enter"

    goto :goto_0

    :cond_0
    const-string v1, "exit"

    :goto_0
    const-string v2, "command"

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sysui_tuner_demo_on"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private isDemoModeEnabled()Z
    .locals 2

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sysui_tuner_demo_on"

    const/4 v1, 0x0

    .line 91
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "demo_mode"

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/development/DemoModePreferenceController;->mDemoMode:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "demo_mode"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/development/DemoModePreferenceController;->onEnableDemoModeDismissed()V

    return-void
.end method

.method public onEnableDemoModeConfirmed()V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-direct {p0, v0}, Lcom/android/settings/development/DemoModePreferenceController;->enableDemoMode(Z)V

    .line 39
    iget-object p0, p0, Lcom/android/settings/development/DemoModePreferenceController;->mDemoMode:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onEnableDemoModeDismissed()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/android/settings/development/DemoModePreferenceController;->isDemoModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, v1}, Lcom/android/settings/development/DemoModePreferenceController;->enableDemoMode(Z)V

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/DemoModePreferenceController;->mDemoMode:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/android/settings/development/DemoModePreferenceController;->mDemoMode:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/development/DemoModePreferenceController;->onEnableDemoModeDismissed()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/DemoModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lcom/android/settings/development/DemoModeWarningDialog;->show(Landroidx/fragment/app/Fragment;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/android/settings/development/DemoModePreferenceController;->mDemoMode:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/development/DemoModePreferenceController;->isDemoModeEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
