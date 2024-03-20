.class public Lcom/android/settings/AodShowModePreferenceController;
.super Lcom/android/settings/core/AodPreferenceController;
.source "AodShowModePreferenceController.java"


# static fields
.field public static final KEY_AOD_SHOW_MODE:Ljava/lang/String; = "aod_show_mode"

.field private static final TAG:Ljava/lang/String; = "AodShowModePreferenceController"


# instance fields
.field private mAodShowModeStyleSelectAvaliable:Z

.field private mLoadTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "aod_show_mode"

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/AodPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/android/settings/AodShowModePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    return-void
.end method

.method private updateAodShowMode(Landroid/content/Context;Lcom/android/settings/KeyguardRestrictedPreference;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AodShowModePreferenceController;->mLoadTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 72
    :cond_1
    new-instance v0, Lcom/android/settings/AodShowModePreferenceController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/AodShowModePreferenceController$1;-><init>(Lcom/android/settings/AodShowModePreferenceController;Landroid/content/Context;Lcom/android/settings/KeyguardRestrictedPreference;)V

    iput-object v0, p0, Lcom/android/settings/AodShowModePreferenceController;->mLoadTask:Landroid/os/AsyncTask;

    .line 95
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/settings/AodShowModePreferenceController;->mLoadTask:Landroid/os/AsyncTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/AodShowModePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    if-nez v0, :cond_1

    return v1

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/AodUtils;->isAodEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x5

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

.method public setAodShowModeStyleSelectAvaliable(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/settings/AodShowModePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    instance-of v0, p1, Lcom/android/settings/KeyguardRestrictedPreference;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/AodShowModePreferenceController;->updateAodShowMode(Landroid/content/Context;Lcom/android/settings/KeyguardRestrictedPreference;)V

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AodShowModePreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
