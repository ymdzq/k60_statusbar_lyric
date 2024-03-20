.class public Lcom/android/settings/ExpandCardActionsSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "ExpandCardActionsSettings.java"


# instance fields
.field private mDeviceControl:Landroidx/preference/CheckBoxPreference;

.field private mExpandCardMiSmartHub:Landroidx/preference/CheckBoxPreference;

.field private mExpandCardMiSmartPlay:Landroidx/preference/CheckBoxPreference;

.field private mSmartHome:Lmiuix/preference/DropDownPreference;

.field private mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setupDeviceControl()V
    .locals 1

    const-string/jumbo v0, "miui_device_control"

    .line 109
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mDeviceControl:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method private setupExpandCardMiSmartHub()V
    .locals 2

    const-string v0, "expand_card_mi_smart_hub"

    .line 79
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isMiSmartHubVisible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iput-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mExpandCardMiSmartHub:Landroidx/preference/CheckBoxPreference;

    .line 85
    new-instance v1, Lcom/android/settings/ExpandCardActionsSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ExpandCardActionsSettings$2;-><init>(Lcom/android/settings/ExpandCardActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupExpandCardMiSmartPlay()V
    .locals 2

    const-string v0, "expand_card_mi_smart_play"

    .line 57
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 58
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iput-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mExpandCardMiSmartPlay:Landroidx/preference/CheckBoxPreference;

    .line 63
    new-instance v1, Lcom/android/settings/ExpandCardActionsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ExpandCardActionsSettings$1;-><init>(Lcom/android/settings/ExpandCardActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setupSmartHome()V
    .locals 1

    const-string/jumbo v0, "smart_home"

    .line 101
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mSmartHome:Lmiuix/preference/DropDownPreference;

    return-void
.end method

.method private updateDeviceControl()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    iget-object p0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mDeviceControl:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->updateDeviceControl(Landroidx/preference/CheckBoxPreference;)V

    return-void
.end method

.method private updateExpandCardMiSmartHub()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mExpandCardMiSmartHub:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isMiSmartHub(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateExpandCardMiSmartPlay()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mExpandCardMiSmartPlay:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isMiSmartPlay(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateSmartHome()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/settings/ExpandCardActionsSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    iget-object v1, p0, Lcom/android/settings/ExpandCardActionsSettings;->mSmartHome:Lmiuix/preference/DropDownPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;->updateSmartHome(Lmiuix/preference/DropDownPreference;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/android/settings/R$xml;->expand_card_actions_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 40
    new-instance p1, Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/smarthome/SmartHomePreferenceManager;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/settings/ExpandCardActionsSettings;->mSmartHomePreferenceManager:Lcom/android/settings/smarthome/SmartHomePreferenceManager;

    .line 41
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->setupExpandCardMiSmartPlay()V

    .line 42
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->setupExpandCardMiSmartHub()V

    .line 43
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->setupSmartHome()V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->setupDeviceControl()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->updateExpandCardMiSmartPlay()V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->updateExpandCardMiSmartHub()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->updateSmartHome()V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/ExpandCardActionsSettings;->updateDeviceControl()V

    return-void
.end method
