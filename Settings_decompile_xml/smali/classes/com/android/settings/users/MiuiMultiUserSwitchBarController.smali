.class public Lcom/android/settings/users/MiuiMultiUserSwitchBarController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiMultiUserSwitchBarController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserSwitchBar"


# instance fields
.field private mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

.field private final mUserCapabilities:Lcom/android/settings/users/UserCapabilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V
    .locals 1

    const-string/jumbo v0, "multiuser_switch"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/MiuiMultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    .line 27
    iput-object p2, p0, Lcom/android/settings/users/MiuiMultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "multiuser_switch"

    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 39
    instance-of v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 40
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 41
    iget-object v0, p0, Lcom/android/settings/users/MiuiMultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "no_user_switch"

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 43
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 46
    iget-boolean p0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez p0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggling multi-user feature enabled state to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiUserSwitchBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_switcher_enabled"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/settings/users/MiuiMultiUserSwitchBarController;->mListener:Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0, p2}, Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;->onMultiUserSwitchChanged(Z)V

    .line 74
    :cond_0
    instance-of p0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p0, :cond_2

    .line 75
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 76
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_2
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_2

    .line 55
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 56
    iget-object v0, p0, Lcom/android/settings/users/MiuiMultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/android/settings/users/UserCapabilities;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/users/MiuiMultiUserSwitchBarController;->mUserCapabilities:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 60
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string/jumbo v1, "user_switcher_enabled"

    .line 59
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
