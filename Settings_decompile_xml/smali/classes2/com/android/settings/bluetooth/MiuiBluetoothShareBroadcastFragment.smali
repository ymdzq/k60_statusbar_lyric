.class public final Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiBluetoothShareBroadcastFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastPinCode:Ljava/lang/String;

.field private mBroadcastSourceIndicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;",
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

.field private mGroupOperation:Z

.field private mHandler:Landroid/os/Handler;

.field private mHintCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

.field private mHintDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mIsAddingBusy:Z

.field private mIsLoadingConfigedDevice:Z

.field private mIsScanning:Z

.field private mIsSynchronizingBusy:Z

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;

.field private mPasswordCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

.field private mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mRefreshListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field private mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

.field private mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

.field private mSelectDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevicePreferenceMap(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceScanResultMap(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsAddingBusy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsScanning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanAssistManager(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchBleAudioSourceCategory(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSynchronizingSourceInfoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddingSourceDevicePreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAddingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsAddingBusy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsScanning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSynchronizingBusy(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsSynchronizingBusy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSynchronizingSourceInfoPreference(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->disableScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->enableScanning()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSourceInfoBySourceId(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;B)Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceAddedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->onBleBroadcastAudioSourceAddedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceRemovedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->onBleBroadcastAudioSourceRemovedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastAudioSourceUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->onBleBroadcastAudioSourceUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastPinUpdatedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->onBleBroadcastPinUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastSourceFoundHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->onBleBroadcastSourceFoundHandle(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBleBroadcastSourceSelectedHandle(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->onBleBroadcastSourceSelectedHandle(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsScanning:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mGroupOperation:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsLoadingConfigedDevice:Z

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mBroadcastPinCode:Ljava/lang/String;

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsAddingBusy:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsSynchronizingBusy:Z

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    .line 115
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    .line 344
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 363
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$3;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

    .line 383
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$4;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHintCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

    .line 736
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$5;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    .line 822
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment$6;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;

    return-void
.end method

.method private createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;
    .locals 4

    const-string v0, "createDevicePreference  enter !"

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    .line 330
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 335
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the Pref map"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method private disableScanning()V
    .locals 3

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsScanning:Z

    .line 321
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->updateRefreshUI(Z)V

    const-string v0, "disableScanning enter"

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    .line 322
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->stopSearchforLeAudioBroadcasters()Z

    move-result p0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableScanning stop search ble audio broacaster ! isStop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private enableScanning()V
    .locals 2

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsScanning:Z

    .line 311
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->updateRefreshUI(Z)V

    const-string v0, "enableScanning enter"

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    .line 312
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_0

    const-string v0, "enableScanning start search ble audio broacaster !"

    .line 314
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->searchforLeAudioBroadcasters()Z

    :cond_0
    return-void
.end method

.method private getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_1

    .line 517
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object p0

    .line 519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 520
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    if-ne v1, p1, :cond_0

    const-string p0, "MiuiBluetoothShareBroadcastFragment"

    const-string p1, "find the source info which need to update"

    .line 521
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private isSourceDeviceHasCongfiged(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    const-string v1, "isSourceHasCongfiged device is null return"

    .line 534
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    .line 538
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 539
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    .line 540
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private loadConfigedSourceDevice()V
    .locals 5

    .line 448
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_2

    .line 449
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->getAllBroadcastSourceInformation()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has added source info size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsLoadingConfigedDevice:Z

    .line 453
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 454
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleBroadcastSourceInfo;

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source sync state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getAudioSyncState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is source info is empty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " source info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "needCreateNewPreference = true create new configed preference !"

    .line 460
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v3, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;-><init>(Landroid/content/Context;Landroid/bluetooth/BleBroadcastSourceInfo;)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mOnPreferenceDetailClickListener:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;

    invoke-virtual {v3, v1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->setOnPreferenceDetailClickListener(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$PreferenceDetailClickListener;)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsLoadingConfigedDevice:Z

    :cond_2
    return-void
.end method

.method private onBleBroadcastAudioSourceAddedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 3

    .line 663
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onBleBroadcastAudioSourceAddedHandle Activity is finished do nothing and return !"

    .line 664
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBleBroadcastAudioSourceAddedHandle: rcvr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " srcId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    if-nez p3, :cond_4

    .line 672
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 673
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 p1, 0x0

    .line 675
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsAddingBusy:Z

    .line 677
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 679
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    const-string/jumbo p3, "onBleBroadcastAudioSourceAddedHandle: broadcast has encrypted need input password"

    .line 680
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;B)V

    .line 685
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    if-eqz p2, :cond_3

    .line 686
    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 687
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    invoke-virtual {p2}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 688
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    .line 691
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onBleBroadcastAudioSourceAddedHandle: add device to source success ! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_5

    .line 693
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->loadConfigedSourceDevice()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "onBleBroadcastAudioSourceAddedHandle: add select sourrce fail !"

    .line 696
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showHintDialog(BII)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onBleBroadcastAudioSourceRemovedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 727
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

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 729
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showHintDialog(BII)V

    goto :goto_0

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->loadConfigedSourceDevice()V

    :goto_0
    return-void
.end method

.method private onBleBroadcastAudioSourceUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 703
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

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p1, 0x3

    .line 705
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showHintDialog(BII)V

    return-void

    .line 708
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->updateConfigedSourceInfo(B)V

    return-void
.end method

.method private onBleBroadcastPinUpdatedHandle(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 2

    .line 712
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

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 714
    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showHintDialog(BII)V

    return-void

    .line 717
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "onBleBroadcastPinUpdatedHandle source info is null return "

    .line 719
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 722
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    return-void
.end method

.method private onBleBroadcastSourceFoundHandle(Landroid/bluetooth/le/ScanResult;)V
    .locals 5

    .line 566
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsLoadingConfigedDevice:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->isSourceDeviceHasCongfiged(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "The found device is not present!"

    .line 580
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "cached device is null return!"

    .line 583
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 588
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    if-nez v2, :cond_7

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create preference for found device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->isLocalDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "The found device is self device !"

    .line 592
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "The found device is other device !"

    .line 595
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 597
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 598
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The found device name is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 604
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo p0, "pref = null"

    .line 606
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 609
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "add found device to it !"

    .line 613
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {p1, v2}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 615
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found device cont is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 618
    sget v1, Lcom/android/settings/R$string;->bluetooth_share_broadcast_available_connect:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 619
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private onBleBroadcastSourceSelectedHandle(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 4
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

    .line 630
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    if-nez v0, :cond_0

    const-string/jumbo p0, "onBleBroadcastSourceSelectedHandle Activity is finished do nothing and return !"

    .line 631
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBleBroadcastSourceSelectedHandle device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sel indicies: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 638
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BleBroadcastSourceChannel;

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBleBroadcastSourceSelectedHandle channel GroupId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceChannel;->getSubGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceChannel;->getStatus()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_1
    iput-object p3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mBroadcastSourceIndicies:Ljava/util/List;

    if-nez p2, :cond_2

    const-string/jumbo p1, "onBleBroadcastSourceSelectedHandle add source to device !"

    .line 647
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_3

    const-string p1, "add device to broadcast source !"

    .line 650
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mBroadcastSourceIndicies:Ljava/util/List;

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0, p0, p3}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->addBroadcastSource(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;Z)Z

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "onBleBroadcastSourceSelectedHandle BASS status error do nothing !"

    .line 656
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    const/4 p3, 0x1

    .line 657
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showHintDialog(BII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showHintDialog(BII)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHintCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->createHintDialog(Landroid/app/Activity;BIILcom/android/settings/bluetooth/MiuiBleAudioUitls$HintDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 443
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private showPasswordDialog(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mPasswordCallback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

    invoke-static {v0, p1, p2, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 430
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private updateConfigedSourceInfo(B)V
    .locals 6

    .line 473
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_5

    .line 474
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->getSourceInfoBySourceId(B)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v0

    .line 476
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsSynchronizingBusy:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    if-eqz v1, :cond_2

    .line 477
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {v1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v1

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v4

    if-ne v1, v4, :cond_2

    .line 479
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateBleBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)V

    .line 480
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getSyncState(Landroid/bluetooth/BleBroadcastSourceInfo;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 481
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateUiState(I)V

    .line 482
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 483
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateUiState(I)V

    .line 488
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsSynchronizingBusy:Z

    const/4 p1, 0x0

    .line 489
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    return-void

    .line 495
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const-string v4, "MiuiBluetoothShareBroadcastFragment"

    if-ge v3, v1, :cond_4

    .line 496
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    .line 497
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v5

    .line 499
    invoke-virtual {v5}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v5

    if-ne v5, p1, :cond_3

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateBleBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)V

    const-string/jumbo v1, "update the source info !"

    .line 501
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 506
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result v1

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "onBleBroadcastAudioSourceAddedHandle need show password dialog!"

    .line 507
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;B)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected getPreferenceScreenResId()I
    .locals 0

    .line 288
    sget p0, Lcom/android/settings/R$xml;->bluetoothShareBroadcast:I

    return p0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 2

    .line 294
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    .line 295
    sget v1, Lcom/android/settings/R$layout;->preference_bt_category_paired:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const-string v1, "configed_ble_audio_source"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 298
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 300
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    sget v1, Lcom/android/settings/R$string;->bluetooth_share_broadcast_available_connect:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    const-string/jumbo v1, "search_ble_audio_source"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v1, "onAttach"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "onCreate"

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string v0, "device"

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 176
    :cond_1
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 177
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_2

    const-string p1, "Local mgr is NULL"

    .line 178
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_2

    const-string p1, "Bluetooth is not supported on this device"

    .line 181
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_3

    goto :goto_1

    .line 189
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDevice is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 191
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getBCProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/BCProfile;

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistCallback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-virtual {p1, v0, v3}, Lcom/android/settingslib/bluetooth/BCProfile;->getBSAManager(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p1, :cond_5

    const-string/jumbo p1, "not able to instantiate scanAssistManager"

    .line 195
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "registerAppCallback"

    new-array v1, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    new-array v0, v2, [Ljava/lang/Object;

    .line 198
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p1, "mDevice is null or mLocalManager is null!"

    .line 186
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v1, "onCreateView"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget v0, Lcom/android/settings/R$layout;->bluetooth_share_broadcast_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mRootView:Landroid/view/View;

    .line 213
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 218
    sget p2, Lcom/android/settings/R$string;->bluetooth_share_broadcast:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->initPreferencesFromPreferenceScreen()V

    .line 221
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    .line 262
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "unregisterAppCallback"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    new-array v1, v2, [Ljava/lang/Object;

    .line 265
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v0, "onDestroy"

    .line 269
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v1, "onDetach"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 840
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 841
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mActivity:Landroid/app/Activity;

    check-cast p0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    .line 843
    sget p1, Lcom/android/settings/R$string;->bluetooth_share_broadcast:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string p0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v0, "onPause"

    .line 281
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 766
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->disableScanning()V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceTreeClick enter screen key is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsAddingBusy:Z

    const-wide/16 v1, 0x1388

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    if-eqz p1, :cond_1

    .line 770
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsAddingBusy:Z

    .line 771
    check-cast p2, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    .line 772
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 773
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    .line 774
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceTreeClick  mSelectDevice = "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSelectDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p2, :cond_0

    const-string p2, "calling selectAudioSource"

    .line 776
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/le/ScanResult;

    .line 778
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p2, p1, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->selectBroadcastSource(Landroid/bluetooth/le/ScanResult;Z)Z

    .line 779
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mAddingSourceDevicePreference:Lcom/android/settings/bluetooth/MiuiBleAudioSourceDevicePreference;

    sget p2, Lcom/android/settings/R$string;->bluetooth_ble_audio_source_adding:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 780
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return v4

    .line 785
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsSynchronizingBusy:Z

    if-nez p1, :cond_6

    instance-of p1, p2, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    if-eqz p1, :cond_6

    const-string/jumbo p1, "update source info sync state"

    .line 787
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    check-cast p2, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    iput-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    .line 789
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 790
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->isEmptyEntry()Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 795
    :cond_2
    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->getSyncState(Landroid/bluetooth/BleBroadcastSourceInfo;)I

    move-result p2

    if-eq p2, v3, :cond_4

    .line 798
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start to update source id: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", state: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", , channels: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastChannelsSyncStatus()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 798
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mIsSynchronizingBusy:Z

    .line 801
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSynchronizingSourceInfoPreference:Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    invoke-virtual {p2, v3}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->updateUiState(I)V

    .line 802
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {p2, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 804
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getEncryptionStatus()I

    move-result p2

    if-ne p2, v4, :cond_3

    const-string/jumbo p2, "need input password and then to sync"

    .line 805
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showPasswordDialog(Landroid/bluetooth/BluetoothDevice;B)V

    goto :goto_1

    :cond_3
    const-string/jumbo p2, "sync right now"

    .line 808
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mScanAssistManager:Landroid/bluetooth/BleBroadcastAudioScanAssistManager;

    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p2

    .line 810
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getBroadcastChannelsSyncStatus()Ljava/util/List;

    move-result-object p1

    .line 809
    invoke-virtual {p0, p2, v3, p1, v5}, Landroid/bluetooth/BleBroadcastAudioScanAssistManager;->updateBroadcastSource(BILjava/util/List;Z)Z

    goto :goto_1

    :cond_4
    const-string/jumbo p2, "show stop synchronize confirm dialog"

    .line 813
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {p1}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p1

    const/4 p2, 0x7

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->showHintDialog(BII)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string/jumbo p0, "source info is null or empty"

    .line 791
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v5
.end method

.method public onResume()V
    .locals 1

    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string p0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v0, "onResume"

    .line 275
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 227
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    const-string/jumbo v0, "onStart"

    const-string v1, "MiuiBluetoothShareBroadcastFragment"

    .line 228
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 230
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mPasswordDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHintDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mSearchBleAudioSourceCategory:Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBleAudioDeviceFilterCategory;->removeAll()V

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDeviceScanResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->loadConfigedSourceDevice()V

    .line 243
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 249
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    const-string v0, "MiuiBluetoothShareBroadcastFragment"

    const-string/jumbo v1, "onStop"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->disableScanning()V

    .line 257
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothShareBroadcastFragment;->mConfigedBleAudioSourceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method
