.class public Lcom/android/settings/development/MiuiDirectEnterSystemController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "MiuiDirectEnterSystemController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;
    }
.end annotation


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenAsyncTask:Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/development/MiuiDirectEnterSystemController;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public static isEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateUnlockEnterSystemPref(Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController;->mLockScreenAsyncTask:Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 62
    :cond_0
    new-instance v0, Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;-><init>(Lcom/android/settings/development/MiuiDirectEnterSystemController;)V

    iput-object v0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController;->mLockScreenAsyncTask:Lcom/android/settings/development/MiuiDirectEnterSystemController$LockScreenAsyncTask;

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "unlock_enter_system"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "unlock_enter_system"

    .line 50
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 52
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/development/MiuiDirectEnterSystemController;->updateUnlockEnterSystemPref(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 33
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 34
    iget-object v0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, p1}, Lcom/android/settings/development/MiuiDirectEnterSystemController;->isEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/development/MiuiDirectEnterSystemController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    .line 36
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
