.class public Lcom/android/settings/PrivacyPasswordUnlockStateController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrivacyPasswordUnlockStateController.java"


# static fields
.field private static final REQUEST_CONFIRM_PRIVACY_PASSWORD:I = 0x46db0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method private handleClick()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enter_from_settings"

    const/4 v2, 0x1

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    iget-object p0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const v1, 0x46db0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/privacypassword/PrivacyPasswordSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateOpenState(Landroidx/preference/Preference;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 68
    sget p0, Lcom/android/settings/R$string;->on:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 70
    :cond_0
    sget p0, Lcom/android/settings/R$string;->off:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

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

.method public handleActivityResult(II)Z
    .locals 1

    const v0, 0x46db0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 91
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/PrivacyPasswordUnlockStateController;->handleClick()V

    const/4 p0, 0x1

    return p0

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "privacy_password"

    .line 58
    iget-object v1, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/PrivacyPasswordUnlockStateController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/PrivacyPasswordUnlockStateController;->updateOpenState(Landroidx/preference/Preference;Z)V

    .line 63
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
