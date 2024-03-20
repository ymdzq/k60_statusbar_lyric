.class public Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;
.super Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;
.source "MiuiSyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 61
    sget v0, Lcom/android/settings/R$style;->SyncSwitchPreference:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-boolean v2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsActive:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsPending:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mFailed:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 62
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget p1, Lcom/android/settings/R$layout;->miuix_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    sget v0, Lcom/android/settings/R$style;->SyncSwitchPreference:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput-boolean v1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsActive:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsPending:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mFailed:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mOneTimeSyncMode:Z

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 54
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mUid:I

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mUid:I

    return p0
.end method

.method public isOneTimeSyncMode()Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mOneTimeSyncMode:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 78
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 79
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 80
    sget v0, Lcom/android/settings/R$id;->sync_active:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/AnimatedImageView;

    .line 82
    sget v1, Lcom/android/settings/R$id;->sync_failed:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    iget-boolean v2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsActive:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsPending:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    const/16 v5, 0x8

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    .line 85
    :goto_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-boolean v6, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setAnimating(Z)V

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mFailed:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v5

    .line 89
    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020001    # @android:id/checkbox

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v1, :cond_5

    .line 95
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020010    # @android:id/summary

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sync_one_time_sync:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 105
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_5
    sget p0, Lcom/android/settings/R$id;->icon_frame:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 110
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method protected onClick()V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_1

    .line 161
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SyncState"

    const-string v0, "ignoring monkey\'s attempt to flip sync state"

    .line 162
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_0
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsActive:Z

    .line 120
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mFailed:Z

    .line 138
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setPending(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mIsPending:Z

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 68
    iput-object p2, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 70
    iput p4, p0, Lcom/android/settings/accounts/MiuiSyncStateSwitchPreference;->mUid:I

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
