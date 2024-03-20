.class public Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsAddSourceButtonController.java"


# instance fields
.field private mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mBCProfile:Lcom/android/settingslib/bluetooth/BCProfile;

.field private mIsConnected:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$uHs3g8Zxjrz4HBPSy9ZuSDmcnwg(Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mIsConnected:Z

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mBCProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    .line 64
    invoke-virtual {p3, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->onAddLESourcePressed()V

    return-void
.end method

.method private onAddLESourcePressed()V
    .locals 3

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 71
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "group_op"

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 75
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/bluetooth/BluetoothSADetail;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->bluetooth_search_broadcasters:I

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x19

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "sync_helper_buttons"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "BluetoothDetailsAddSourceButtonController"

    const-string v1, "init"

    .line 90
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 92
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 93
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BCProfile;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mBCProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v0, Lcom/android/settings/R$string;->add_source_button_text:I

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    .line 98
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->refresh()V

    return-void
.end method

.method protected refresh()V
    .locals 5

    const-string/jumbo v0, "refresh"

    const-string v1, "BluetoothDetailsAddSourceButtonController"

    .line 106
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mBCProfile:Lcom/android/settingslib/bluetooth/BCProfile;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/BCProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mIsConnected:Z

    .line 110
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mIsConnected:Z

    if-eqz v0, :cond_2

    .line 111
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_1

    :cond_2
    const-string v0, "Bass is not connected for thsi device>>"

    .line 114
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsAddSourceButtonController;->mActionButtons:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :goto_1
    return-void
.end method
