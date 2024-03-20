.class public Lcom/android/settings/development/AdbInstallPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AdbInstallPreferenceController.java"

# interfaces
.implements Lcom/android/settings/development/OnActivityResultListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mPreference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private updateAdbInstallPreference()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/security/AdbUtils;->isInstallEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/security/AdbUtils;->setInstallEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter.action.ADB_INSTALL_VERIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mActivity:Landroid/app/Activity;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/development/AdbInstallPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/AdbInstallPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mPreference:Landroidx/preference/CheckBoxPreference;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "adb_install"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 69
    sget-object p0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "cappu"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mPreference:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/security/AdbUtils;->isInstallEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const-string p2, "adb_install"

    .line 28
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/development/AdbInstallPreferenceController;->updateAdbInstallPreference()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mPreference:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/development/AdbInstallPreferenceController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/security/AdbUtils;->isInstallEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
