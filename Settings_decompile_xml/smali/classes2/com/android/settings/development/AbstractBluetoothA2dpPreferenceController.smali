.class public abstract Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractBluetoothA2dpPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/BluetoothServiceConnectionListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field static final STREAMING_LABEL_ID:I


# instance fields
.field protected mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field protected final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mListSummaries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;

.field protected mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget v0, Lcom/android/settings/R$string;->bluetooth_select_a2dp_codec_streaming_label:I

    sput v0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->STREAMING_LABEL_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 69
    const-class p3, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getListValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getListSummaries()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 231
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 235
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p0

    .line 236
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v1

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 224
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method protected abstract getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
.end method

.method protected abstract getDefaultIndex()I
.end method

.method protected abstract getListSummaries()[Ljava/lang/String;
.end method

.method protected abstract getListValues()[Ljava/lang/String;
.end method

.method public onBluetoothCodecUpdated()V
    .locals 0

    .line 0
    return-void
.end method

.method public onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 156
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onBluetoothServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 97
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->writeConfigurationValues(Ljava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->createCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v1

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_1

    .line 107
    monitor-exit v1

    return v0

    .line 110
    :cond_1
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 111
    invoke-virtual {p0, v2, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object p1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 119
    iget-object p2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object p2, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->STREAMING_LABEL_ID:I

    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object p0, p0, p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 112
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 211
    :cond_1
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    return-void
.end method

.method setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 243
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "vendor"

    .line 247
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object p0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_2
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 129
    invoke-direct {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCodecConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->getDefaultIndex()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->STREAMING_LABEL_ID:I

    iget-object v3, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListSummaries:[Ljava/lang/String;

    aget-object v3, v3, p1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;->writeConfigurationValues(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 137
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract writeConfigurationValues(Ljava/lang/Object;)V
.end method
