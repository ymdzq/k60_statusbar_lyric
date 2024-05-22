.class public Lcom/android/settings/LockScreenActionsSettings;
.super Lcom/android/settings/BaseSettingsPreferenceFragment;
.source "LockScreenActionsSettings.java"


# instance fields
.field private mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenDeviceControl:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenNotification:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenXiaomiSmartHub:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateLockScreenAllowTrivialControls(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenAllowTrivialControls()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLockScreenDeviceControl(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenDeviceControl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLockScreenSmartDeviceControl(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenSmartDeviceControl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLockScreenXiaomiSmartHub(Lcom/android/settings/LockScreenActionsSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenXiaomiSmartHub()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/BaseSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setupLockScreenAllowTrivialControls()V
    .locals 2

    const-string v0, "lock_screen_allow_trivial_controls"

    .line 205
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    .line 206
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$6;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenControlCenter()V
    .locals 2

    const-string v0, "lock_screen_control_center"

    .line 81
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    .line 82
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$2;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenDeviceControl()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_screen_device_control"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenDeviceControl:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$3;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenNotification()V
    .locals 2

    const-string v0, "lock_screen_notification"

    .line 64
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenNotification:Landroidx/preference/CheckBoxPreference;

    .line 65
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$1;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenSmartDeviceControl()V
    .locals 2

    const-string v0, "lock_screen_smart_device_control"

    .line 179
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    .line 180
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$5;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupLockScreenXiaomiSmartHub()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_screen_xiaomi_smart_hub"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenXiaomiSmartHub:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v1, Lcom/android/settings/LockScreenActionsSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenActionsSettings$4;-><init>(Lcom/android/settings/LockScreenActionsSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateLockScreenAllowTrivialControls()V
    .locals 5

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v1

    .line 219
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 221
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    :cond_0
    if-eq v1, v4, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenAllowTrivialControls(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 233
    :cond_3
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenAllowTrivialControls:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateLockScreenControlCenter()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 99
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenControlCenter:Landroidx/preference/CheckBoxPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLockScreenDeviceControl()V
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenDeviceControl:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v1

    .line 134
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v2

    if-nez v2, :cond_4

    .line 135
    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenDeviceControl:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 142
    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    .line 143
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenDeviceControl:Landroidx/preference/CheckBoxPreference;

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 138
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenDeviceControl:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateLockScreenNotification()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenNotification:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 76
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

    .line 192
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 201
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

    .line 197
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenSmartDeviceControl:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateLockScreenXiaomiSmartHub()V
    .locals 5

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenXiaomiSmartHub:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v1

    .line 166
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v2

    if-nez v2, :cond_4

    .line 167
    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/settings/utils/Utils;->checkDeviceCenterAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isExpandableUnderLockscreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenXiaomiSmartHub:Landroidx/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 174
    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    .line 175
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenXiaomiSmartHub:Landroidx/preference/CheckBoxPreference;

    if-eq v0, v4, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 170
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/LockScreenActionsSettings;->mLockScreenXiaomiSmartHub:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget p1, Lcom/android/settings/R$xml;->lock_screen_actions_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenNotification()V

    .line 45
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenControlCenter()V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenDeviceControl()V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenXiaomiSmartHub()V

    .line 48
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenSmartDeviceControl()V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->setupLockScreenAllowTrivialControls()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenNotification()V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenControlCenter()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenDeviceControl()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenXiaomiSmartHub()V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenSmartDeviceControl()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/LockScreenActionsSettings;->updateLockScreenAllowTrivialControls()V

    return-void
.end method
