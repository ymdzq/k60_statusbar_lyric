.class public abstract Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.super Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.source "VolumeSeekBarPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field protected mHelper:Lcom/android/settings/notification/AudioHelper;

.field protected mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field protected mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setAudioHelper(Lcom/android/settings/notification/AudioHelper;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setupVolPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public abstract getAudioStream()I
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getMax()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result p0

    return p0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMin()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result p0

    return p0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getMinVolume(I)I

    move-result p0

    return p0
.end method

.method protected abstract getMuteIcon()I
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$string;->menu_key_sound:I

    return p0
.end method

.method public getSliderPosition()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    return p0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

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

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    :cond_0
    return-void
.end method

.method setAudioHelper(Lcom/android/settings/notification/AudioHelper;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setSliderPosition(I)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/AudioHelper;->setStreamVolume(II)Z

    move-result p0

    return p0
.end method

.method protected setupVolPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
