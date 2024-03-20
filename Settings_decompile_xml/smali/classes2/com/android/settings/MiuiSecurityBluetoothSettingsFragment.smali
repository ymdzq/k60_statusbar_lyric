.class public Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuilder(Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-void
.end method

.method private buildPreference(Ljava/lang/String;I)Landroidx/preference/Preference;
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->buildPreference(Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private buildPreference(Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 104
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private startBleDevicePickerActivity(I)V
    .locals 3

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.action.PICK_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.bluetooth.extra.MIBLE_PROPERTY"

    const/4 v2, 0x1

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 47
    const-class p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 156
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "unlock_device_by_bluetooth"

    .line 158
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const-string v1, "bluetooth_devices"

    .line 159
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const/16 v2, 0x64

    const/16 v3, 0x66

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 162
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 165
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 166
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    invoke-direct {p0, v3}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->startBleDevicePickerActivity(I)V

    goto/16 :goto_0

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p1, v5}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 172
    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 173
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x65

    const/16 v6, 0x67

    if-ne p1, v2, :cond_3

    if-ne p2, v4, :cond_3

    .line 178
    invoke-direct {p0, v6}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->startBleDevicePickerActivity(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x68

    if-eq p1, v3, :cond_4

    if-ne p1, v6, :cond_6

    :cond_4
    if-ne p2, v4, :cond_6

    if-nez p3, :cond_5

    return-void

    :cond_5
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 182
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_7

    .line 183
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 184
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "device_address"

    .line 185
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_TYPE"

    .line 186
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVICE_TYPE_MAJOR"

    .line 187
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEVICE_TYPE_MINOR"

    .line 188
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiSecurityBluetoothSettingsFragment"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-class p1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p0, p1, v2, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    if-ne p2, v4, :cond_7

    .line 197
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0, v5}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 198
    invoke-virtual {v0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 199
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 56
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 58
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 62
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->security_settings_bluetooth:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    const-string/jumbo p1, "miui_security_fragment_result"

    .line 208
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "unlock_device_by_bluetooth"

    .line 209
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const-string p2, "bluetooth_devices"

    .line 210
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    .line 211
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 214
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x66

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->startBleDevicePickerActivity(I)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 221
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 222
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 112
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "unlock_device_by_bluetooth"

    .line 113
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 5

    .line 124
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "matched_device"

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 127
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p0, v0, v2, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    const-string v1, "change_matched_device"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment$1;-><init>(Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;)V

    const/4 v3, 0x1

    .line 143
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->bluetooth_unlock_change_device_confirm_msg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000    # @android:string/cancel

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v0, v4, v3, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000a    # @android:string/ok

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 151
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 6

    .line 68
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "unlock_device_by_bluetooth"

    .line 70
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 71
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "bluetooth_devices"

    .line 72
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 74
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 75
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getBluetoothNameToUnlock()Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v3}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string/jumbo v2, "matched_device"

    .line 82
    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->buildPreference(Ljava/lang/String;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v2, "change_matched_device"

    .line 83
    sget v3, Lcom/android/settings/R$string;->bluetooth_unlock_change_matched_device:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->buildPreference(Ljava/lang/String;I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "no_matched_device"

    .line 86
    sget v3, Lcom/android/settings/R$string;->bluetooth_unlock_no_matched_device_yet:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->buildPreference(Ljava/lang/String;I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 90
    :goto_1
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothSettingsFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 91
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 92
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 94
    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method
