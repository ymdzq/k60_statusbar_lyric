.class public final Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiBleAudioSourceInfoFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

.field private mConfigedSourcePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceScanResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHintCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

.field private mHintDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPasswordCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

.field private mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;

.field private mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field private mSourceAddressPreference:Landroidx/preference/Preference;

.field private mSourceAudioSyncStatePreference:Landroidx/preference/Preference;

.field private mSourceBroadcastCodePreference:Landroidx/preference/Preference;

.field private mSourceEnableAudioSyncPreference:Landroidx/preference/CheckBoxPreference;

.field private mSourceEncryptionStatePreference:Landroidx/preference/Preference;

.field private mSourceIdPreference:Landroidx/preference/Preference;

.field private mSourceInfoCategory:Landroidx/preference/PreferenceGroup;

.field private mSourceMetadataStatePreference:Landroidx/preference/Preference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceAddedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->onBleBroadcastAudioSourceAddedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceRemovedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->onBleBroadcastAudioSourceRemovedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->onBleBroadcastAudioSourceUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastPinUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->onBleBroadcastPinUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastSourceFoundHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->onBleBroadcastSourceFoundHandle(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastSourceSelectedHandle(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->onBleBroadcastSourceSelectedHandle(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowHintDialog(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;BII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->showHintDialog(BII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPasswordDialog(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;B)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mConfigedSourcePreferenceMap:Ljava/util/HashMap;

    .line 292
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$3;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

    .line 312
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$4;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHintCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

    .line 352
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$5;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$6;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    return-void
.end method

.method private getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 2

    .line 214
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p0, :cond_1

    .line 215
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object p0

    .line 216
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 217
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    if-ne v1, p1, :cond_0

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string p1, "find the source info by srcId"

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initButton()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 250
    sget v1, Lcom/android/settings/R$id;->button_update:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 251
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->button_delete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 252
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, v0, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 253
    filled-new-array {v1}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v2

    new-array v3, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v2, v1, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 254
    new-instance v2, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$2;-><init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initPreferencesFromPreferenceScreen()V
    .locals 2

    const-string/jumbo v0, "source_info_category"

    .line 191
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceInfoCategory:Landroidx/preference/PreferenceGroup;

    const-string v0, "ble_audio_source_id"

    .line 192
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceIdPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "ble_audio_source_address"

    .line 194
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceAddressPreference:Landroidx/preference/Preference;

    .line 195
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "ble_audio_source_meatdata_state"

    .line 196
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceMetadataStatePreference:Landroidx/preference/Preference;

    .line 197
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "ble_audio_source_encryption_state"

    .line 198
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceEncryptionStatePreference:Landroidx/preference/Preference;

    .line 199
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "ble_audio_source_broadcast_code"

    .line 201
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceBroadcastCodePreference:Landroidx/preference/Preference;

    .line 202
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string v0, "ble_audio_source_audio_sync_state"

    .line 203
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceAudioSyncStatePreference:Landroidx/preference/Preference;

    .line 204
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->updateUI(Landroid/bluetooth/BleBroadcastSourceInfo;)V

    return-void
.end method

.method private onBleBroadcastAudioSourceAddedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 1

    .line 390
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBleBroadcastAudioSourceAddedHandle: rcvr: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " srcId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onBleBroadcastAudioSourceRemovedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceRemovedHandle device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " srcId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p1, 0x5

    .line 414
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->showHintDialog(BII)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method private onBleBroadcastAudioSourceUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastAudioSourceUpdatedHandle device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " srcId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p1, 0x3

    .line 396
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->showHintDialog(BII)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->updateSourceInfo(B)V

    :goto_0
    return-void
.end method

.method private onBleBroadcastPinUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBleBroadcastPinUpdatedHandle device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " srcId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p1, 0x4

    .line 405
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->showHintDialog(BII)V

    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->updateSourceInfo(B)V

    :goto_0
    return-void
.end method

.method private onBleBroadcastSourceFoundHandle(Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    return-void
.end method

.method private onBleBroadcastSourceSelectedHandle(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onBleBroadcastSourceSelectedHandle status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", broadcastSourceIndicies: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showHintDialog(BII)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHintCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->createHintDialog(Landroid/app/Activity;BIILcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private showPasswordDialog(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

    invoke-static {v0, p1, p2, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private updateSourceInfo(B)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    .line 373
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 375
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->updateUI(Landroid/bluetooth/BleBroadcastSourceInfo;)V

    return-void
.end method

.method private updateUI(Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 2

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    if-eqz p1, :cond_1

    const-string/jumbo v1, "updateUI"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceIdPreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceAddressPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceEncryptionStatePreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getEncryptionStatusString(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceMetadataStatePreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getMetadataSyncState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getMetadataSyncStatusString(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceBroadcastCodePreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceAudioSyncStatePreference:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getAudioSyncStatusString(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string p0, "mBleBroadcastSourceInfo source is null"

    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected getPreferenceScreenResId()I
    .locals 0

    .line 504
    sget p0, Lcom/android/settings/R$xml;->bleAudioSourceInfo:I

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v1, "onAttach"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "onCreate"

    const-string v1, "MiuiBleAudioSourceInfoFragment"

    .line 137
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "source_info"

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BleBroadcastSourceInfo;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BleBroadcastSourceInfo;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mBleBroadcastSourceInfo:Landroid/bluetooth/BleBroadcastSourceInfo;

    const-string p1, "device"

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 148
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_2

    const-string p1, "Local mgr is NULL"

    .line 149
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_2

    const-string p1, "Bluetooth is not supported on this device"

    .line 152
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 158
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BCProfile;

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {p1, v0, v2}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-nez p1, :cond_4

    const-string/jumbo p0, "not able to instantiate scanAssistManager"

    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "mDevice is null !"

    .line 165
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 174
    sget v0, Lcom/android/settings/R$layout;->ble_audio_source_info_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mRootView:Landroid/view/View;

    .line 176
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    sget p2, Lcom/android/settings/R$string;->bluetooth_share_broadcast_param:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->initPreferencesFromPreferenceScreen()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->initButton()V

    .line 186
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 484
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v0, "onDestroy"

    .line 485
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    const-string v0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v1, "onDetach"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 516
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 517
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 519
    sget p1, Lcom/android/settings/R$string;->bluetooth_share_broadcast_param:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 496
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v0, "onPause"

    .line 497
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 456
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ble_audio_source_audio_sync_state"

    .line 457
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 458
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->mSourceEnableAudioSyncPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    if-eqz p0, :cond_0

    const-string p0, "audio sync switch turn on!"

    .line 459
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "audio sync switch turn off!"

    .line 461
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 0

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onPreferenceTreeClick enter screen key is: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 490
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v0, "onResume"

    .line 491
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 471
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v0, "onStart"

    .line 472
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 478
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const-string p0, "MiuiBleAudioSourceInfoFragment"

    const-string/jumbo v0, "onStop"

    .line 479
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
