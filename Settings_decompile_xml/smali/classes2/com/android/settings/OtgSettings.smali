.class public Lcom/android/settings/OtgSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtgSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OtgSettings$USBReceiver;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private lastEnableState:I

.field private mOtgCheckbox:Landroidx/preference/CheckBoxPreference;

.field private usbReceiver:Lcom/android/settings/OtgSettings$USBReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lcom/android/settings/OtgSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastEnableState(Lcom/android/settings/OtgSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/OtgSettings;->lastEnableState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetEnableState(Lcom/android/settings/OtgSettings;Z)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/OtgSettings;->getEnableState(Z)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpostUsbChangeRefreshMsg(Lcom/android/settings/OtgSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->postUsbChangeRefreshMsg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateOtgStatus(Lcom/android/settings/OtgSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->updateOtgStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/android/settings/OtgSettings;->lastEnableState:I

    .line 38
    new-instance v0, Lcom/android/settings/OtgSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/OtgSettings$1;-><init>(Lcom/android/settings/OtgSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getEnableState(Z)I
    .locals 0

    .line 0
    return p1
.end method

.method private postUsbChangeRefreshMsg()V
    .locals 2

    const-string v0, "OtgSettings"

    const-string/jumbo v1, "postUsbChangeRefreshMsg"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private registerUsbReceiver()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/OtgSettings;->usbReceiver:Lcom/android/settings/OtgSettings$USBReceiver;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/settings/OtgSettings$USBReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/OtgSettings$USBReceiver;-><init>(Lcom/android/settings/OtgSettings;)V

    iput-object v0, p0, Lcom/android/settings/OtgSettings;->usbReceiver:Lcom/android/settings/OtgSettings$USBReceiver;

    :cond_0
    const-string v0, "OtgSettings"

    const-string/jumbo v1, "registerUsbReceiver"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/OtgSettings;->usbReceiver:Lcom/android/settings/OtgSettings$USBReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private sendDelayUpdateMsg()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/32 v1, 0x49bb0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private unRegisterUsbReceiver()V
    .locals 2

    const-string v0, "OtgSettings"

    const-string/jumbo v1, "unRegisterUsbReceiver"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/OtgSettings;->usbReceiver:Lcom/android/settings/OtgSettings$USBReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private updateOtgStatus()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/settings/OtgSettings;->mOtgCheckbox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lmiui/util/IOtgSwitch;->getInstance()Lmiui/util/IOtgSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/IOtgSwitch;->getOtgStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isChecked()Z

    move-result v0

    .line 99
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isEnable()Z

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/android/settings/OtgSettings;->mOtgCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 101
    invoke-direct {p0, v1}, Lcom/android/settings/OtgSettings;->getEnableState(Z)I

    move-result v1

    iput v1, p0, Lcom/android/settings/OtgSettings;->lastEnableState:I

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/settings/OtgSettings;->mOtgCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/settings/OtgSettings;->mOtgCheckbox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz v0, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->sendDelayUpdateMsg()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/android/settings/R$xml;->otg_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "otg_button"

    .line 63
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/OtgSettings;->mOtgCheckbox:Landroidx/preference/CheckBoxPreference;

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->otg_new_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->registerUsbReceiver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->unRegisterUsbReceiver()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 84
    iget-object p0, p0, Lcom/android/settings/OtgSettings;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "otg_button"

    .line 125
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 127
    invoke-static {}, Lcom/android/settings/utils/OtgUtils;->isSupport()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    invoke-static {p1}, Lcom/android/settings/utils/OtgUtils;->setCheck(Z)V

    if-eqz p1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->sendDelayUpdateMsg()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lmiui/util/IOtgSwitch;->getInstance()Lmiui/util/IOtgSwitch;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmiui/util/IOtgSwitch;->setOtgEnabled(Z)I

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/OtgSettings;->updateOtgStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
