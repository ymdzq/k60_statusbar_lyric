.class public Lcom/android/settings/AodStylePreferenceController;
.super Lcom/android/settings/core/AodPreferenceController;
.source "AodStylePreferenceController.java"


# static fields
.field public static final AUTO_DUAL_CLOCK:Ljava/lang/String; = "auto_dual_clock"

.field public static final KEY_AOD_STYLE:Ljava/lang/String; = "aod_show_style"

.field public static final RESIDENT_TIMEZONE:Ljava/lang/String; = "resident_timezone"

.field private static final TAG:Ljava/lang/String; = "AodStylePreferenceController"


# instance fields
.field private mAodShowModeStyleSelectAvaliable:Z

.field private mLoadTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "aod_show_style"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/AodPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/settings/AodStylePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    return-void
.end method

.method public static isDualClock(Landroid/content/Context;)Z
    .locals 4

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dual_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "resident_timezone"

    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 63
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method private updateAodThumbnail(Landroid/content/Context;Lcom/android/settings/AodStylePreference;)V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/AodStylePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AodStylePreferenceController;->mLoadTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 83
    :cond_2
    new-instance v0, Lcom/android/settings/AodStylePreferenceController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/AodStylePreferenceController$1;-><init>(Lcom/android/settings/AodStylePreferenceController;Landroid/content/Context;Lcom/android/settings/AodStylePreference;)V

    iput-object v0, p0, Lcom/android/settings/AodStylePreferenceController;->mLoadTask:Landroid/os/AsyncTask;

    .line 106
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/android/settings/AodStylePreferenceController;->mLoadTask:Landroid/os/AsyncTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/AodStylePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
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

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/AodStylePreferenceController;->mAodShowModeStyleSelectAvaliable:Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AodStylePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 41
    instance-of v0, p1, Lcom/android/settings/AodStylePreference;

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/settings/AodStylePreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/AodStylePreferenceController;->updateAodThumbnail(Landroid/content/Context;Lcom/android/settings/AodStylePreference;)V

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
