.class public Lcom/android/settings/LockScreenActionsSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "LockScreenActionsSettings.java"


# instance fields
.field private mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenNotification:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateLockScreenAllowTrivialControls(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenAllowTrivialControls()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLockScreenSmartDeviceControl(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenSmartDeviceControl()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setupLockScreenAllowTrivialControls()V
    .locals 2

    const-string v0, "lock_screen_allow_trivial_controls"

    .line 127
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    .line 128
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$4;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenControlCenter()V
    .locals 2

    const-string v0, "lock_screen_control_center"

    .line 72
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    .line 73
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$2;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenNotification()V
    .locals 2

    const-string v0, "lock_screen_notification"

    .line 55
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenNotification:Landroidx/preference/CheckBoxPreference;

    .line 56
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$1;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenSmartDeviceControl()V
    .locals 2

    const-string v0, "lock_screen_smart_device_control"

    .line 101
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    .line 102
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$3;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateLockScreenAllowTrivialControls()V
    .locals 4

    .line 139
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenAllowTrivialControls(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 153
    :cond_2
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateLockScreenControlCenter()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLockScreenNotification()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenNotification:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateLockScreenSmartDeviceControl()V
    .locals 3

    .line 114
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 119
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget p1, Lcom/android/settings/R$xml;->lock_screen_actions_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenNotification()V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenControlCenter()V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenSmartDeviceControl()V

    .line 42
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenAllowTrivialControls()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenNotification()V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenControlCenter()V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenSmartDeviceControl()V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenAllowTrivialControls()V

    return-void
.end method
