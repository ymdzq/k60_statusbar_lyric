.class public Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VolumeSettingPanelFragment.java"


# instance fields
.field private mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/sound/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->mVolumePrefs:Ljava/util/ArrayList;

    return-void
.end method

.method private initVolume()V
    .locals 3

    const/4 v0, 0x2

    .line 58
    sget v1, Lcom/android/settings/R$drawable;->ring_volume_icon:I

    const-string/jumbo v2, "ring_volume"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->initVolumePreference(Ljava/lang/String;II)V

    const/4 v0, 0x4

    .line 59
    sget v1, Lcom/android/settings/R$drawable;->alarm_volume_icon:I

    const-string v2, "alarm_volume"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->initVolumePreference(Ljava/lang/String;II)V

    const/4 v0, 0x3

    .line 60
    sget v1, Lcom/android/settings/R$drawable;->media_volume_icon:I

    const-string/jumbo v2, "media_volume"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->initVolumePreference(Ljava/lang/String;II)V

    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 65
    invoke-virtual {p1, p2}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setStream(I)V

    .line 66
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setIcon(I)V

    .line 67
    new-instance p2, Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-direct {p2, p1}, Lcom/android/settings/sound/SeekBarVolumizer;-><init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V

    .line 68
    invoke-virtual {p1, p2}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setSeekBarVolumizer(Lcom/android/settings/sound/SeekBarVolumizer;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/android/settings/R$style;->Theme_Provision_Notitle_WifiSettings:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    .line 26
    sget p1, Lcom/android/settings/R$xml;->miui_volume_settings_panel:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 28
    invoke-direct {p0}, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->initVolume()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 52
    iget-object p0, p0, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 53
    invoke-virtual {v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getSeekBarVolumizer()Lcom/android/settings/sound/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sound/SeekBarVolumizer;->pause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 34
    iget-object p0, p0, Lcom/android/settings/settingspanel/VolumeSettingPanelFragment;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 35
    invoke-virtual {v0}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getSeekBarVolumizer()Lcom/android/settings/sound/SeekBarVolumizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/sound/SeekBarVolumizer;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 44
    instance-of p1, p0, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
