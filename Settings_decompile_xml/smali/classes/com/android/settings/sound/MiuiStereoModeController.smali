.class public Lcom/android/settings/sound/MiuiStereoModeController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiStereoModeController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;,
        Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;
    }
.end annotation


# static fields
.field public static final IS_SUPPORT_STEREO:Z

.field private static final STEREO_MODE_CLOSE:I = 0x0

.field private static final STEREO_MODE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiStereoMode"


# instance fields
.field private mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

.field private mHeadsetReceiver:Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;

.field private mPreference:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateUI(Lcom/android/settings/sound/MiuiStereoModeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiStereoModeController;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.vendor.audio.sfx.spk.stereo"

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/sound/MiuiStereoModeController;->IS_SUPPORT_STEREO:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mHeadsetReceiver:Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    if-nez v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->isHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    .line 111
    invoke-virtual {v0}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->isBluetoothSpeakerConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 112
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mPreference:Landroidx/preference/CheckBoxPreference;

    .line 51
    new-instance p1, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;-><init>(Lcom/android/settings/sound/MiuiStereoModeController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    .line 52
    new-instance p1, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;

    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;-><init>(Lcom/android/settings/sound/MiuiStereoModeController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mHeadsetReceiver:Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;

    .line 53
    invoke-virtual {p1}, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->register()V

    .line 54
    iget-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    invoke-virtual {p1}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->register()V

    .line 55
    iget-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 60
    sget-boolean p0, Lcom/android/settings/sound/MiuiStereoModeController;->IS_SUPPORT_STEREO:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
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

.method public onDestroy()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mHeadsetReceiver:Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;->unregister()V

    .line 80
    iput-object v1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mHeadsetReceiver:Lcom/android/settings/sound/MiuiStereoModeController$HeadsetReceiver;

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->unregister()V

    .line 85
    iput-object v1, p0, Lcom/android/settings/sound/MiuiStereoModeController;->mBluetoothStatusRecevier:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiStereoModeController;->updateUI()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
