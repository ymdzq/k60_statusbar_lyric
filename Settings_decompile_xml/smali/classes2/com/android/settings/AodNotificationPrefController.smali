.class public Lcom/android/settings/AodNotificationPrefController;
.super Lcom/android/settings/core/AodPreferenceController;
.source "AodNotificationPrefController.java"


# static fields
.field public static final AOD_KEYGUARD_NOTIFICATION_STATUS:Ljava/lang/String; = "aod_notification_status"


# instance fields
.field private mAodShowModeStyleSelectAvaliable:Z

.field private mNotificationStyleSelectAvaliable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "aod_notification_status"

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/AodPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/settings/AodNotificationPrefController;->mNotificationStyleSelectAvaliable:Z

    .line 16
    iput-boolean p1, p0, Lcom/android/settings/AodNotificationPrefController;->mAodShowModeStyleSelectAvaliable:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSupportAodAnimateDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/AodNotificationPrefController;->mNotificationStyleSelectAvaliable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

    .line 26
    iput-boolean p1, p0, Lcom/android/settings/AodNotificationPrefController;->mAodShowModeStyleSelectAvaliable:Z

    return-void
.end method

.method public setNotificationStyleSelectAvaliable(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/android/settings/AodNotificationPrefController;->mNotificationStyleSelectAvaliable:Z

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
    move-object v0, p1

    check-cast v0, Lcom/android/settings/KeyguardRestrictedPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    invoke-static {v1}, Lcom/android/settings/utils/AodUtils;->getNotificationWakeUpStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/settings/KeyguardRestrictedPreference;->setValue(Ljava/lang/CharSequence;)V

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AodNotificationPrefController;->getAvailabilityStatus()I

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
