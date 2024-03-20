.class public Lcom/android/settings/deviceinfo/MiuiUsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiUsbSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCharging:Landroidx/preference/CheckBoxPreference;

.field private mChargingEnable:Z

.field private mChargingFunctionName:Ljava/lang/String;

.field private mMassStorageEnable:Z

.field private mMassStorageFunctionName:Ljava/lang/String;

.field private mMsd:Landroidx/preference/CheckBoxPreference;

.field private mMtp:Landroidx/preference/CheckBoxPreference;

.field private mMtpFunctionName:Ljava/lang/String;

.field private mPtp:Landroidx/preference/CheckBoxPreference;

.field private mPtpFunctionName:Ljava/lang/String;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUsbManager(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateToggles(Lcom/android/settings/deviceinfo/MiuiUsbSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/MiuiUsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 4

    .line 57
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 61
    :cond_0
    sget v0, Lcom/android/settings/R$xml;->usb_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "usb_mtp"

    .line 64
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v1, "usb_ptp"

    .line 65
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v1, "usb_msd"

    .line 66
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v1, "usb_charging"

    .line 67
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    .line 68
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->config_mtp_function_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->config_ptp_function_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->config_mass_storage_function_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->config_charging_function_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingFunctionName:Ljava/lang/String;

    .line 78
    sget-boolean v1, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    sget v2, Lcom/android/settings/R$string;->usb_msd_driver_installer_title:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 80
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    sget v2, Lcom/android/settings/R$string;->usb_msd_driver_installer_summary:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    .line 84
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 86
    iput-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    .line 89
    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingEnable:Z

    .line 90
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 91
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 92
    iput-object v2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    :cond_3
    return-object v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingEnable:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingFunctionName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 99
    const-class p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "usb"

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 142
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/android/settings/MiuiUtils;->setUsbCurrentFunction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 148
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtpFunctionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/android/settings/MiuiUtils;->setUsbCurrentFunction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtpFunctionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    if-ne p1, p2, :cond_3

    iget-boolean p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    if-eqz p2, :cond_3

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/android/settings/MiuiUtils;->setUsbCurrentFunction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageFunctionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingEnable:Z

    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingFunctionName:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/android/settings/MiuiUtils;->setUsbCurrentFunction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingFunctionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string/jumbo p1, "none"

    invoke-static {p0, p1, v2}, Lcom/android/settings/MiuiUtils;->setUsbCurrentFunction(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return v2
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 169
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMtp:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mPtp:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMsd:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mMassStorageEnable:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mCharging:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mChargingEnable:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiUtils;->setUsbCurrentFunction(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 180
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiUsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method
