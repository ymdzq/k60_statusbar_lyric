.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;
.super Lcom/android/settingslib/widget/AppSwitchPreference;
.source "UnrestrictedDataAccessPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCacheIcon:Landroid/graphics/drawable/Drawable;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private final mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public static synthetic $r8$lambda$DxCScf8dVEJSatr28EEzbla2wR4(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->lambda$onBindViewHolder$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cSDC4dy4__htbdMPb_RJn1yAPyU(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->lambda$onBindViewHolder$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/datausage/DataSaverBackend;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 3

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 55
    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 57
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v2, :cond_0

    .line 58
    check-cast v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    goto :goto_0

    .line 60
    :cond_0
    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    .line 63
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 64
    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 65
    iput-object p4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 66
    iput-object p5, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 67
    iget-object p3, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 68
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 67
    invoke-static {p1, p4, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    .line 70
    invoke-static {p2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->generateKey(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 76
    :cond_1
    sget p1, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_1
    return-void
.end method

.method static generateKey(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getDataUsageState()Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object p0
.end method

.method public getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public isDisabledByAdmin()Z
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result p0

    return p0
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    .line 177
    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->isDisabledByAdmin()Z

    move-result v0

    const v1, 0x1020018    # @android:id/widget_frame

    .line 157
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    .line 161
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/AppSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 167
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected onClick()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    if-eqz v0, :cond_0

    .line 102
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    sget v1, Lcom/android/settings/R$string;->data_usage_app_summary_title:I

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    :goto_0
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    .line 185
    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 93
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public performClick()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void
.end method

.method public updateState()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    .line 211
    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget v0, Lcom/android/settings/R$string;->disabled_by_admin:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->mDataUsageState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverDenylisted:Z

    if-eqz v0, :cond_1

    .line 215
    sget v0, Lcom/android/settings/R$string;->restrict_background_blocklisted:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 217
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
