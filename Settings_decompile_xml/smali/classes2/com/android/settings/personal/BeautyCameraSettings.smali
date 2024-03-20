.class public Lcom/android/settings/personal/BeautyCameraSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BeautyCameraSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBeautyCameraPreference:Lcom/android/settingslib/miuisettings/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private updateStatus()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/personal/BeautyCameraSettings;->mBeautyCameraPreference:Lcom/android/settingslib/miuisettings/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.vendor.vcb.enable"

    const-string v1, "false"

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/android/settings/personal/BeautyCameraSettings;->mBeautyCameraPreference:Lcom/android/settingslib/miuisettings/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/personal/BeautyCameraSettings;->mBeautyCameraPreference:Lcom/android/settingslib/miuisettings/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BeautyCameraSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 26
    sget p0, Lcom/android/settings/R$xml;->beauty_camera_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "beauty_camera_switch_preference"

    .line 32
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/personal/BeautyCameraSettings;->mBeautyCameraPreference:Lcom/android/settingslib/miuisettings/preference/SwitchPreference;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 51
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "beauty_camera_switch_preference"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 53
    invoke-static {p1, p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    const-string/jumbo p2, "persist.vendor.vcb.enable"

    .line 54
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/personal/BeautyCameraSettings;->updateStatus()V

    return-void
.end method
