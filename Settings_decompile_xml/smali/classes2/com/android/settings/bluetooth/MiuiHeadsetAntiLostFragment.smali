.class public final Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiHeadsetAntiLostFragment.java"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

.field private mHeadsetAntiLostSwitch:Landroidx/preference/CheckBoxPreference;

.field private final mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mRootView:Landroid/view/View;

.field private mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;


# direct methods
.method static bridge synthetic -$$Nest$mupdateLossDialog(Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->updateLossDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 148
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private gotoFindDeviceFragment()V
    .locals 1

    .line 208
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFindDeviceFragment;-><init>()V

    .line 209
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->changeFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private isCheckOpen()Z
    .locals 6

    const-string v0, ""

    const-string v1, "MiuiHeadsetAntiLostFragment"

    const/4 v2, 0x0

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x65

    .line 134
    invoke-interface {v4, v5, v0, v3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCheckOpen(): anti-lost tag is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1"

    .line 136
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    .line 138
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "device anti-lost tag is wrong"

    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v3, "0"

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v4, 0x64

    invoke-interface {v0, v4, v3, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "can not get device or service"

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set checkbox failed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v2
.end method

.method private updateLossDialog()V
    .locals 5

    const-string v0, "Update if Bluetooth headset will show dialog. "

    const-string v1, "MiuiHeadsetAntiLostFragment"

    .line 170
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ""

    const/16 v4, 0x65

    .line 177
    invoke-interface {v2, v4, v3, v0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    const/16 v3, 0x64

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "loss tag is not set, set it to open."

    .line 179
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3, v2, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadsetAntiLostSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Bluetooth headset is open, set to close. "

    .line 184
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v2, "0"

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3, v2, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "Bluetooth headset is close, set to open. "

    .line 187
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3, v2, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "can not get device or service"

    .line 173
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 49
    const-class p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 96
    sget p0, Lcom/android/settings/R$xml;->headsetAntiLostLayout:I

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 56
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 68
    sget v0, Lcom/android/settings/R$layout;->headsetAntiLostLayout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mRootView:Landroid/view/View;

    .line 70
    sget v2, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    sget p2, Lcom/android/settings/R$string;->switch_headset_anti_lost_title:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string/jumbo p1, "switch_mi_headset_loss_dialog"

    .line 78
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadsetAntiLostSwitch:Landroidx/preference/CheckBoxPreference;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$plurals;->switch_headset_anti_lost_summary:I

    const/4 v0, 0x3

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 79
    invoke-virtual {p2, p3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadsetAntiLostSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mPrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadsetAntiLostSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->isCheckOpen()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 217
    sget p1, Lcom/android/settings/R$string;->switch_headset_anti_lost_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 196
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "find_device"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->gotoFindDeviceFragment()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 119
    sget v0, Lcom/android/settings/R$string;->switch_headset_anti_lost_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->mHeadsetAntiLostSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetAntiLostFragment;->isCheckOpen()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method
