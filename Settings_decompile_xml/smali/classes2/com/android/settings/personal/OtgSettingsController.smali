.class public Lcom/android/settings/personal/OtgSettingsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OtgSettingsController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final DELAY_TIME:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "OtgSettingsController"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/personal/OtgSettingsController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/personal/OtgSettingsController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    new-instance p1, Lcom/android/settings/personal/OtgSettingsController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/personal/OtgSettingsController$1;-><init>(Lcom/android/settings/personal/OtgSettingsController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/personal/OtgSettingsController;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/personal/OtgSettingsController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isSupport()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-static {}, Lmiui/util/IOtgSwitch;->getInstance()Lmiui/util/IOtgSwitch;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/util/IOtgSwitch;->isOtgSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
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

.method public onStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/android/settings/personal/OtgSettingsController;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 54
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p1, :cond_4

    .line 58
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->otg_opened:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->otg_closed:I

    .line 60
    :goto_0
    sget v2, Lcom/android/settings/R$string;->otg_opened:I

    if-ne v0, v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/android/settings/personal/OtgSettingsController;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/personal/OtgSettingsController;->handler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {}, Lmiui/util/IOtgSwitch;->getInstance()Lmiui/util/IOtgSwitch;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/util/IOtgSwitch;->getOtgStatus()I

    move-result p0

    if-nez p0, :cond_2

    .line 70
    sget p0, Lcom/android/settings/R$string;->otg_opened:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/android/settings/R$string;->otg_closed:I

    :goto_1
    move v0, p0

    .line 72
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 73
    invoke-virtual {p1, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
