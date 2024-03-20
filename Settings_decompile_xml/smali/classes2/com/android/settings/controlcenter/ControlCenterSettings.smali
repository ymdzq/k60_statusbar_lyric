.class public Lcom/android/settings/controlcenter/ControlCenterSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "ControlCenterSettings.java"


# instance fields
.field private mUseControlPanel:Lcom/android/settings/controlcenter/ControlCenterStylePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setupUseControlPanel()V
    .locals 2

    const-string v0, "control_center_style_preference"

    .line 41
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/controlcenter/ControlCenterStylePreference;

    iput-object v0, p0, Lcom/android/settings/controlcenter/ControlCenterSettings;->mUseControlPanel:Lcom/android/settings/controlcenter/ControlCenterStylePreference;

    .line 42
    new-instance v1, Lcom/android/settings/controlcenter/ControlCenterSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/controlcenter/ControlCenterSettings$1;-><init>(Lcom/android/settings/controlcenter/ControlCenterSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateUseControlPanel()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/controlcenter/ControlCenterSettings;->mUseControlPanel:Lcom/android/settings/controlcenter/ControlCenterStylePreference;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/view/VisualCheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lcom/android/settings/R$xml;->control_center_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 29
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->status_bar_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/controlcenter/ControlCenterSettings;->setupUseControlPanel()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings/controlcenter/ControlCenterSettings;->updateUseControlPanel()V

    return-void
.end method
