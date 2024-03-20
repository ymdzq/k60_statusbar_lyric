.class public abstract Lcom/android/settings/nfc/BaseNfcPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BaseNfcPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;
    }
.end annotation


# instance fields
.field private mAirplaneMode:I

.field private mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field protected mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

.field protected mPreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateNfcPreference(Lcom/android/settings/nfc/BaseNfcPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->updateNfcPreference()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/BaseNfcPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/BaseNfcPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "nfc"

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateNfcPreference()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    iget v2, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    .line 103
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 105
    iget v1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    if-ne v0, v1, :cond_0

    return-void

    .line 108
    :cond_0
    iput v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 115
    :goto_1
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 55
    iput-object v1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    new-instance p1, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    invoke-direct {p1, p0, v1}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;-><init>(Lcom/android/settings/nfc/BaseNfcPreferenceController;Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver-IA;)V

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    .line 64
    invoke-direct {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->updateNfcPreference()V

    :cond_1
    return-void
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public isAvailable()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->unregister()V

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    if-eqz p0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->register()V

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/BaseNfcEnabler;

    if-eqz p0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcEnabler;->resume()V

    :cond_1
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
