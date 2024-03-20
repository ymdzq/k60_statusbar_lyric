.class public Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BleBroadcastSourceInfoDetailsFragment.java"


# instance fields
.field mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mDeviceAddress:Ljava/lang/String;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mSourceInfoIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_bluetooth"

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mSourceInfoIndex:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createPreferenceControllers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SourceInfoDetailsFrg"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v8

    .line 136
    new-instance v1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mSourceInfoIndex:Ljava/lang/Integer;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/bluetooth/BleBroadcastSourceInfo;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ILcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 76
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "SourceInfoDetailsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 125
    sget p0, Lcom/android/settings/R$xml;->bcast_source_info_details_fragment:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "broadcast_source_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "broadcast_source_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mSourceInfoIndex:Ljava/lang/Integer;

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v0, "SourceInfoDetailsFrg"

    if-nez p1, :cond_0

    const-string/jumbo p1, "onAttach() CachedDevice is null!"

    .line 97
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    if-nez p1, :cond_1

    const-string/jumbo p1, "onAttach()  mBleBroadcastSourceInfo null!"

    .line 102
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;->mSourceInfoIndex:Ljava/lang/Integer;

    if-nez p1, :cond_2

    const-string/jumbo p1, "onAttach()  mSourceInfoIndex null!"

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    return-void
.end method
