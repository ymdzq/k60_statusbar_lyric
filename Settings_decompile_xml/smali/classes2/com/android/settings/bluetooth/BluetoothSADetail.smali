.class public Lcom/android/settings/bluetooth/BluetoothSADetail;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSADetail.java"


# instance fields
.field clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field mBroadcastPinCode:Ljava/lang/String;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mGroupOperation:Z

.field private mInitialScanStarted:Z

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private mScanAssistDetailsDialog:Landroidx/appcompat/app/AlertDialog;

.field mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field mScanDelegatorName:Landroidx/preference/Preference;

.field mScanning:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetBluetoothName(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->getBluetoothName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSourceAdditionErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->getSourceAdditionErrMessage(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSourceRemovalErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->getSourceRemovalErrMessage(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSourceSelectionErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->getSourceSelectionErrMessage(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSourceUpdateErrMessage(Lcom/android/settings/bluetooth/BluetoothSADetail;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->getSourceUpdateErrMessage(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_bluetooth"

    .line 322
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 100
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanning:Z

    const/4 v1, 0x0

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    .line 105
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCommonMsgDialog:Landroidx/appcompat/app/AlertDialog;

    .line 188
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSADetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSADetail$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSADetail;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    return-void
.end method

.method private getBluetoothName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    const-string p0, "Scan Delegator"

    if-nez p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    .line 118
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBluetoothName returns"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothSADetail"

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getSourceAdditionErrMessage(I)I
    .locals 1

    .line 144
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_addition_error_message:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_no_empty_slot_error_message:I

    goto :goto_0

    .line 147
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_dup_addition_error_message:I

    :goto_0
    return p0
.end method

.method private getSourceRemovalErrMessage(I)I
    .locals 1

    .line 157
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_removal_error_message:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_remove_invalid_group_op:I

    goto :goto_0

    .line 166
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_remove_invalid_src_id:I

    :cond_2
    :goto_0
    return p0
.end method

.method private getSourceSelectionErrMessage(I)I
    .locals 0

    .line 123
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_selection_error_message:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_no_empty_slot_error_message:I

    goto :goto_0

    .line 134
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_dup_addition_error_message:I

    goto :goto_0

    .line 127
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_selection_error_src_unavail_message:I

    :goto_0
    :pswitch_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSourceUpdateErrMessage(I)I
    .locals 1

    .line 173
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_update_error_message:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_update_invalid_group_op:I

    goto :goto_0

    .line 182
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_source_update_invalid_src_id:I

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 6

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, "BluetoothSADetail"

    if-nez v0, :cond_0

    const-string p0, "Trying to create a device preference before the list group/category exists!"

    .line 327
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ZI)V

    .line 338
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 344
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "to the Pref map"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method disableScanning()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "BluetoothSADetail"

    const-string v1, "call stopSearchforLeAudioBroadcasters"

    .line 477
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->stopSearchforLeAudioBroadcasters()Z

    const/4 v0, 0x0

    .line 479
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanning:Z

    :cond_0
    return-void
.end method

.method enableScanning()V
    .locals 2

    .line 458
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mInitialScanStarted:Z

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mInitialScanStarted:Z

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_2

    const-string v0, "BluetoothSADetail"

    const-string v1, "call searchforLeAudioBroadcasters"

    .line 468
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->searchforLeAudioBroadcasters()Z

    :cond_2
    return-void
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "available_audio_sources"

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 651
    sget p0, Lcom/android/settings/R$string;->help_url_bluetooth:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BluetoothSADetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x3fa

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 661
    sget p0, Lcom/android/settings/R$xml;->bluetooth_search_bcast_sources:I

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    const-string v0, "bt_bcast_rcvr_device"

    .line 438
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanDelegatorName:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanDelegatorName:Landroidx/preference/Preference;

    const-string v2, "Scan Delegator"

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanDelegatorName:Landroidx/preference/Preference;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->getBluetoothName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "available_audio_sources"

    .line 445
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const-string v0, "footer_preference"

    .line 446
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 447
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method launchSyncAndBroadcastIndexOptions(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 503
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->select_source_prompt:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 506
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 509
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    sget v1, Lcom/android/settings/R$string;->bluetooth_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    if-eqz v2, :cond_2

    .line 513
    sget v2, Lcom/android/settings/R$string;->bluetooth_grp_source_selection_options_detail:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 515
    :cond_2
    sget v2, Lcom/android/settings/R$string;->bluetooth_source_selection_options_detail:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 517
    :goto_1
    sget v4, Lcom/android/settings/R$string;->bluetooth_source_selection_options_detail_title:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 540
    new-instance v5, Lcom/android/settings/bluetooth/BluetoothSADetail$2;

    invoke-direct {v5, p0}, Lcom/android/settings/bluetooth/BluetoothSADetail$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSADetail;)V

    .line 547
    new-instance v7, Lcom/android/settings/bluetooth/BluetoothSADetail$3;

    invoke-direct {v7, p0, v6, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail$3;-><init>(Lcom/android/settings/bluetooth/BluetoothSADetail;Landroid/view/View;Ljava/util/List;)V

    .line 583
    sget p1, Lcom/android/settings/R$id;->broadcastPINcode:I

    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 584
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v2, "BluetoothSADetail"

    const-string v8, "Local Adapter"

    .line 585
    invoke-static {v2, v8}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mBroadcastPinCode:Ljava/lang/String;

    const/4 v2, 0x4

    .line 587
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 588
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    if-eqz p1, :cond_3

    .line 589
    sget p1, Lcom/android/settings/R$string;->bluetooth_col_grp_source_selection_options_detail:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 591
    :cond_3
    sget p1, Lcom/android/settings/R$string;->bluetooth_col_source_selection_options_detail:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 594
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistDetailsDialog:Landroidx/appcompat/app/AlertDialog;

    .line 596
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    move-object v2, v7

    move-object v3, v5

    move-object v5, p1

    .line 594
    invoke-static/range {v0 .. v6}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->showScanAssistDetailsDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistDetailsDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_5
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 356
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mInitialScanStarted:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OnAttach Called"

    const-string v1, "BluetoothSADetail"

    .line 390
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 392
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mContext:Landroid/content/Context;

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "device_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "group_op"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    .line 395
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 397
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    const-string v0, "Local mgr is NULL"

    .line 398
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    const-string p0, "Bluetooth is not supported on this device"

    .line 401
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_2

    return-void

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 411
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BCProfile;

    .line 412
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 413
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 412
    invoke-virtual {p1, v0, v2}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez p1, :cond_3

    const-string/jumbo p0, "not able to instantiate scanAssistManager"

    .line 415
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    .line 640
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->updateContent(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->showBluetoothTurnedOnToast()V

    :cond_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->disableScanning()V

    .line 603
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->clickedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 604
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getVendorCachedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    move-result-object p1

    .line 605
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_0

    const-string v0, "BluetoothSADetail"

    const-string v1, "calling selectAudioSource"

    .line 606
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getScanResult()Landroid/bluetooth/le/ScanResult;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mGroupOperation:Z

    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const-string v0, "OnStart Called"

    const-string v1, "BluetoothSADetail"

    .line 366
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 368
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 369
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 374
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/BCProfile;

    .line 377
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 378
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 377
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez v0, :cond_2

    const-string v0, "On Start: not able to instantiate scanAssistManager"

    .line 380
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->updateContent(I)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/MiuiProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 424
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 425
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothSADetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 426
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->disableScanning()V

    .line 432
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    return-void
.end method

.method showBluetoothTurnedOnToast()V
    .locals 2

    .line 670
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->connected_device_bluetooth_turned_on_toast:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 671
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method updateContent(I)V
    .locals 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 616
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    sget v0, Lcom/android/settings/R$string;->bluetooth_preference_found_media_devices:I

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 619
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSADetail;->updateFooterPreference(Landroidx/preference/Preference;)V

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSADetail;->enableScanning()V

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 3

    .line 632
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 633
    sget v1, Lcom/android/settings/R$string;->bluetooth_footer_mac_message:I

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSADetail;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 635
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 633
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
