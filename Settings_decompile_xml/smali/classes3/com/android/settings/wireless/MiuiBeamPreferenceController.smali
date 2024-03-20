.class public Lcom/android/settings/wireless/MiuiBeamPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MiuiBeamPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field public static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final TAG:Ljava/lang/String; = "MiuiBeamPreferenceController"


# instance fields
.field private mMiuiAndroidBeamEnabler:Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRestrictedPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "android_beam_settings"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 32
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private isBeamSupported()Z
    .locals 1

    const-string p0, "persist.nfc.cloud.beam"

    const-string v0, "1"

    .line 83
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mMiuiAndroidBeamEnabler:Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;

    .line 40
    iget-object v1, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mRestrictedPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 42
    iput-object v0, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mRestrictedPreference:Lcom/android/settingslib/RestrictedPreference;

    :cond_0
    return-void

    :cond_1
    const-string v0, "android_beam_settings"

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez p1, :cond_2

    const-string p0, "MiuiBeamPreferenceController"

    const-string p1, "findPreference android_beam_settings failed: "

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_2
    new-instance v0, Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V

    iput-object v0, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mMiuiAndroidBeamEnabler:Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.sofware.nfc.beam"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->isBeamSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
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

.method public onPause()V
    .locals 2

    const-string v0, "MiuiBeamPreferenceController"

    const-string v1, "onPause"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mMiuiAndroidBeamEnabler:Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "MiuiBeamPreferenceController"

    const-string v1, "onResume"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/settings/wireless/MiuiBeamPreferenceController;->mMiuiAndroidBeamEnabler:Lcom/android/settings/nfc/MiuiAndroidBeamEnabler;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
