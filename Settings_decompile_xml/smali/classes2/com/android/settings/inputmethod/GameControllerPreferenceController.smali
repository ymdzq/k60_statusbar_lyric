.class public Lcom/android/settings/inputmethod/GameControllerPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "GameControllerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "input"

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 6

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_vibrate_input_devices:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 74
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 75
    iget-object v5, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

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

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 109
    sget p0, Lcom/android/settings/R$string;->menu_key_system:I

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vibrate_input_devices"

    const/4 v1, 0x1

    .line 96
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vibrate_input_devices"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
