.class public Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.super Lcom/android/settings/bluetooth/BluetoothSettings;
.source "MiuiBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;,
        Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;,
        Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;,
        Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;,
        Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;
    }
.end annotation


# static fields
.field private static HEADSETPLUGIN_ENABLE:I

.field private static HEADSETPLUGIN_INITED:I

.field private static HEADSETPLUGIN_INITED_NOTIFY:Ljava/lang/String;

.field private static HEADSETPLUGIN_NOTSET:I

.field private static PREFIX_SUPPORT_CLOUD_SHARE_DEVICEID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allowForceUpdate:Z

.field private allowNewUpgrade:Z

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

.field private mBondState:I

.field private mBtEnablePrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mBtEnablePrefDelayTag:Z

.field private mBtHelpClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mCachedDeviceInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDeleteDeviceZipRunnable:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

.field private mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

.field private mHandler:Landroid/os/Handler;

.field private mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

.field private mMainHandler:Landroid/os/Handler;

.field mMiBleDeviceManagerInited:Z

.field private mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

.field mPreloadPlugin:Z

.field private mProfileChangeReceiver:Landroid/content/BroadcastReceiver;

.field mQigsawInstalled:Z

.field private final mRefreshListener:Landroid/view/View$OnClickListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

.field private mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

.field mShowDevicesWithoutNamesOld:Z

.field private mStatus:I

.field private mThread:Landroid/os/HandlerThread;

.field private mUpdateClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetallowNewUpgrade(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowNewUpgrade:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBondState(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBtEnablePrefDelayTag(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtEnablePrefDelayTag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBtHelpClickListener(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtHelpClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Landroid/content/ServiceConnection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalfClosePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoHandler(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObserver(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunnable(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBtEnablePrefDelayTag(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtEnablePrefDelayTag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmObserver(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckBluetoothPackageInfo(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkBluetoothPackageInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEnableHelpPreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkEnableHelpPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckHeadsetSurpportMiuiFragment(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkHeadsetSurpportMiuiFragment(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartQigsawInstaller(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->startQigsawInstaller(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDeviceNamePreferenceStatus(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateDeviceNamePreferenceStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePluginUpdatePreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updatePluginUpdatePreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 99
    const-class v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v0, "BLUETOOTHHEADSETPLUGIN_INITED"

    .line 151
    sput-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_INITED_NOTIFY:Ljava/lang/String;

    const/4 v0, 0x1

    .line 152
    sput v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_ENABLE:I

    const/4 v1, -0x1

    .line 153
    sput v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_NOTSET:I

    .line 154
    sput v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_INITED:I

    const-string v0, "cloud_shared"

    .line 155
    sput-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->PREFIX_SUPPORT_CLOUD_SHARE_DEVICEID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowNewUpgrade:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowForceUpdate:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMiBleDeviceManagerInited:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mShowDevicesWithoutNamesOld:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mPreloadPlugin:Z

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mQigsawInstalled:Z

    .line 124
    sget v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_NOTSET:I

    iput v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    .line 127
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeleteDeviceZipRunnable:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

    const/16 v1, 0xa

    .line 128
    iput v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 147
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    .line 218
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    .line 220
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtEnablePrefDelayTag:Z

    .line 241
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mRunnable:Ljava/lang/Runnable;

    .line 772
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$5;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtEnablePrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 803
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$6;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mUpdateClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 815
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$7;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtHelpClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 831
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$8;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 842
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$9;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 1241
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$10;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$11;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mProfileChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$101(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method private checkBluetoothPackageInfo()V
    .locals 2

    .line 1491
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.bluetooth"

    .line 1492
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 1493
    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1499
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$12;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1513
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkEnableHelpPreference()V
    .locals 7

    .line 614
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 619
    :goto_0
    iget v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    sget v4, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_INITED:I

    if-ne v3, v4, :cond_2

    const-string v3, ""

    .line 621
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 623
    invoke-interface {v4}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getCurrentSplitInfoVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 624
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 625
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "bt_help"

    invoke-static {v5, v3, v6}, Lcom/android/settings/connectivity/MiuiBluetoothDataBaseOperaterUtil;->queryPluginSupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 630
    :goto_1
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current settings verison: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", manager: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", languageFlag: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 633
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->setConnectHelpPreferenceVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 635
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private checkHeadsetSurpportMiuiFragment(Landroid/bluetooth/BluetoothDevice;)V
    .locals 8

    const-string v0, ""

    .line 1518
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-nez v1, :cond_0

    return-void

    .line 1519
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHeadsetSurpportMiuiFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    invoke-interface {v2, p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->checkSupport(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 1526
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 1527
    :cond_1
    iget v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    sget v4, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_INITED:I

    if-ne v3, v4, :cond_2

    .line 1528
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v3

    .line 1529
    invoke-interface {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getCurrentSplitInfoVersion()Ljava/lang/String;

    move-result-object v3

    .line 1530
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x78

    invoke-interface {v4, v5, v0, p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 1532
    iget-object v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v5, "SettingsOriginal"

    const/16 v6, 0x85

    invoke-interface {v4, v6, v5, p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v3

    .line 1534
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current settings verison:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", headset customer:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", plugin state:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 1538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    .line 1540
    :cond_3
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "true"

    .line 1542
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 1543
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mPreloadPlugin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1546
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1547
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private createHalfClosePref(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;
    .locals 1

    .line 1646
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v0, "create restrict pref"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    new-instance p0, Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;-><init>(Landroid/content/Context;)V

    const-string p1, "bluetooth_half_close"

    .line 1648
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p1, -0x5

    .line 1649
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1650
    sget p1, Lcom/android/settings/R$string;->accept_new_connection:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 1651
    sget p1, Lcom/android/settings/R$string;->accept_new_connection_detail:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-object p0
.end method

.method private getBluetoothClass(I)Landroid/bluetooth/BluetoothClass;
    .locals 4

    .line 1679
    :try_start_0
    const-class p0, Landroid/bluetooth/BluetoothClass;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1680
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothClass;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1682
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBluetoothClass: e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private handleClickHalfClosePref()V
    .locals 4

    .line 1656
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v1, "handle restrict click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    const-string p0, "half close mLocalAdapter is null"

    .line 1658
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1661
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "bt restrict is already off and won\'t do!"

    .line 1662
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1665
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enableBluetoothRestrict(Landroid/content/Context;Z)Z

    .line 1666
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const-string p0, "ignore scanning since device is in bonding state."

    .line 1667
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1670
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1671
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->startScanning()V

    :cond_3
    return-void
.end method

.method private initService()V
    .locals 4

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->headSetFeatureIsEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->headSetMoreDetailEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    if-nez v0, :cond_2

    .line 328
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mi_tws_hs_feature_enable"

    .line 330
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mi_tws_deviceid_list_hs_feature_enable"

    .line 332
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    .line 331
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 322
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v1, "init the headset service start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.mible.BluetoothHeadsetService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 336
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init the headset service failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private internalSmoothScrollToPosition()V
    .locals 1

    .line 1303
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1304
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1305
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private renameMyDevice()V
    .locals 2

    .line 868
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isCustomizedOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBTUtils;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 873
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 874
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private setConnectHelpPreferenceVisible(Z)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMainHandler:Landroid/os/Handler;

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$4;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Z)V

    const-wide/16 p0, 0xa

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startQigsawInstaller(Ljava/lang/String;)V
    .locals 1

    .line 1554
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    .line 1555
    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1556
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mQigsawInstalled:Z

    .line 1557
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string p1, "Qigsaw already installed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1560
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QigsawInstaller;-><init>(Landroid/content/Context;)V

    .line 1561
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/QigsawInstaller;->initInstall(Ljava/util/ArrayList;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1564
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string p1, "initInstall error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1567
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDeviceNamePreferenceStatus(Z)V
    .locals 1

    .line 1572
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_0

    .line 1573
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateHalfClosePreference()V
    .locals 3

    .line 599
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_half_close_switch_value"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 607
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updatePluginUpdatePreference()V
    .locals 2

    .line 585
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->checkNewInfo(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bluetooth_version_update"

    .line 587
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 593
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V

    .line 707
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    return-void
.end method

.method addDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 1600
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->access$101(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public addNewOnSavedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_4

    .line 1074
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1076
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "this device preference exists in mPairedDevicesCategory"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1080
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1081
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this device is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    move v1, v0

    .line 1083
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1084
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPairedDevicesCategory bonded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1085
    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1084
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    .line 1090
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1093
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_3

    .line 1095
    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1098
    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 1099
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 1100
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1101
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_3

    .line 1102
    check-cast v1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setShowDivider(Z)V

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 1109
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    .line 1110
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1111
    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 1112
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set the pointer to mPairedDevicesCategory, currentGroup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    const-string/jumbo v3, "start to create DevicePreference"

    .line 1115
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0, p4}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->getBluetoothClass(I)Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getDeviceFromOnLineBluetooth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/bluetooth/BluetoothClass;Ljava/util/List;)V

    .line 1117
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 1118
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    :cond_4
    return-void
.end method

.method public checkAndDeleteOnSavedDevice()V
    .locals 4

    .line 1215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virtual_bluetooth_device_delete"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "0"

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 1220
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1226
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method checkDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 1595
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$CheckAsyncTask;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroidx/preference/PreferenceGroup;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1}, [Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 1596
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public checkStartMiuiHeadset(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 7

    .line 367
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 368
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkHeadsetSurpportMiuiFragment(Landroid/bluetooth/BluetoothDevice;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;

    :cond_0
    if-eqz v0, :cond_1

    .line 374
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v2, "deviceSupportInfo is exit."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->mConfig:Ljava/lang/String;

    .line 376
    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->mPlugin:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    move-object v0, v1

    .line 379
    :goto_0
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", headset customer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", plugin state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->checkNewInfo(Landroid/content/Context;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 382
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowNewUpgrade:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowForceUpdate:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->handleForceUpdateClick(Landroid/content/Context;)V

    return v4

    .line 386
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "miui.bluetooth.action.HEADSET_SETTINGS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    .line 387
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    invoke-static {}, Lcom/android/settings/bluetooth/FitSplitUtils;->isFitSplit()Z

    move-result p1

    const/high16 v5, 0x10000000

    const v6, 0x8000

    if-eqz p1, :cond_3

    .line 389
    invoke-virtual {v3, v6}, Landroid/content/Intent;->removeFlags(I)V

    .line 390
    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeFlags(I)V

    const/16 p1, 0x10

    .line 391
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 392
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 395
    :cond_3
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 396
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    const-string p1, "MIUI_HEADSET_SUPPORT"

    .line 398
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "COME_FROM"

    const-string v5, "MIUI_BLUETOOTH_SETTINGS"

    .line 399
    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    .line 400
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "true"

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 403
    iget p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    sget v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_INITED:I

    if-ne p1, v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string/jumbo p1, "miui.bluetooth.action.HEADSET_SETTINGS_PLUGIN"

    .line 404
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v4

    .line 408
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 409
    invoke-static {v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->checkSupport(Ljava/lang/String;)Z

    move-result p1

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headset customer checkSettingsSupport "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    return v0

    .line 412
    :cond_5
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v4

    :cond_6
    return v0
.end method

.method createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    .line 888
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v1, "createDevicePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_5

    .line 890
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMiBleDeviceManagerInited:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 891
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    if-eqz v0, :cond_4

    .line 892
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/GattProfile;->isBleDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 893
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 895
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 896
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_1

    .line 899
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 900
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 903
    :cond_1
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lmiui/bluetooth/ble/MiBleDeviceManager;Z)V

    .line 905
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 907
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 908
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 909
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 913
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 915
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public getConfigByDevice(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;

    if-eqz v0, :cond_0

    .line 421
    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;->-$$Nest$fgetrequestedConfig(Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeviceSurpport;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v0, "SettingsOriginal"

    const/16 v1, 0x85

    invoke-interface {p0, v1, v0, p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 250
    const-class p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .line 1473
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 1475
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1477
    sget v1, Lcom/android/settings/R$layout;->miuix_preference_connect_widget_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 1480
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 1483
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1482
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1485
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDevicePreference: mFliter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDeviceListGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public initPreferencesFromPreferenceScreen()V
    .locals 4

    .line 683
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->initPreferencesFromPreferenceScreen()V

    .line 684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "bluetooth_enable"

    .line 685
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnablePreference:Landroidx/preference/CheckBoxPreference;

    .line 686
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBtEnablePrefChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 687
    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;-><init>(Landroid/content/Context;Landroidx/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/MiuiBluetoothEnabler;

    const-string v0, "bluetooth_device_name_edit"

    .line 688
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    .line 689
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeviceNameEditPreference:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 694
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 696
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateProgressUi(Z)V

    :cond_1
    const-string v0, "bluetooth_version_update"

    .line 698
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    if-eqz v0, :cond_2

    .line 700
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mUpdateClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method public isCloudSharedDeviceId(Ljava/lang/String;)Z
    .locals 2

    .line 641
    :try_start_0
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    sget v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->HEADSETPLUGIN_INITED:I

    if-ne v0, v1, :cond_0

    .line 643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->PREFIX_SUPPORT_CLOUD_SHARE_DEVICEID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-static {p0, p1}, Lcom/android/settings/connectivity/MiuiBluetoothDataBaseOperaterUtil;->queryPluginSupport(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 646
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    :cond_0
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string p1, "deviceIdExist end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 746
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    .line 748
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->onFragmentResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    .line 949
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onBluetoothStateChanged(I)V

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 951
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateProgressUi(Z)V

    .line 952
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateDeviceNamePreferenceStatus(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeleteDeviceZipRunnable:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeleteDeviceZipRunnable:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V

    .line 959
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateDeviceNamePreferenceStatus(Z)V

    .line 961
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateContent(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 257
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->initService()V

    .line 259
    new-instance v0, Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/MiuiSearchDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$3;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    invoke-static {v0, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 277
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onCreate(Landroid/os/Bundle;)V

    .line 278
    new-instance p1, Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 279
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/bluetooth/GattProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lmiui/bluetooth/ble/MiBleDeviceManager;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    .line 281
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "MiuiHeadsetHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mThread:Landroid/os/HandlerThread;

    .line 282
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 283
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 284
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;-><init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    .line 286
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsApplication;

    iget p1, p1, Lcom/android/settings/SettingsApplication;->mQigsawStarted:I

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->checkAllowNewUpgrade(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowNewUpgrade:Z

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->checkNeedForceUpdate(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowForceUpdate:Z

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mStatus:I

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/plugin/BluetoothCloudControlTools;->checkNewInfo(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 292
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowNewUpgrade:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->allowForceUpdate:Z

    if-nez p1, :cond_2

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "bluetooth_version_update"

    .line 294
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    if-eqz p1, :cond_3

    .line 296
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string p1, "bt_connect_help_flag"

    .line 299
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 304
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->createHalfClosePref(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    .line 305
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 306
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 307
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 308
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string v0, "add half close to screen"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 312
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHalfClosePreference:Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "error "

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 438
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnablePreference:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 449
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    .line 453
    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    :cond_4
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mHandler:Landroid/os/Handler;

    .line 460
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_6

    .line 461
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 463
    :cond_6
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    if-eqz v1, :cond_7

    .line 464
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    .line 466
    :cond_7
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_8

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 468
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    :cond_8
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_9

    .line 471
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 472
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMainHandler:Landroid/os/Handler;

    .line 474
    :cond_9
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mProfileChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_a

    .line 475
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mProfileChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mProfileChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 478
    :cond_a
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;

    if-eqz v1, :cond_b

    .line 479
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothUpdateTextPreference:Lcom/android/settings/bluetooth/BluetoothUpdateTextPreference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 482
    sget-object v3, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_b
    :goto_0
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mRunnable:Ljava/lang/Runnable;

    .line 486
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->close()V

    .line 488
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/GattProfile;->cleanup()V

    .line 489
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 492
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 496
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    if-eqz v1, :cond_c

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 498
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 501
    :cond_c
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    if-eqz v1, :cond_d

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 503
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mObserver:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$SettingsObserver;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 506
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_d
    :goto_2
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    .line 1345
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1350
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 1354
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1355
    :goto_0
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceAdded, isBonded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mFliter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mDeviceListGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/GattProfile;->isBleDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1358
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V

    .line 1359
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMiBleDeviceManagerInited:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 1360
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 1361
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    .line 1363
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HID over BLE device found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1365
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bonded BLE device found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1369
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ble device found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1369
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void

    :cond_5
    const-string v2, "The unknown ble device is bonded!"

    .line 1376
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1379
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BLE device without bt class found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1383
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    if-ne v1, v2, :cond_8

    .line 1384
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1385
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void

    .line 1388
    :cond_8
    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    if-ne v1, v2, :cond_9

    .line 1389
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    if-eqz v0, :cond_a

    .line 1395
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_2

    .line 1397
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_2
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 6

    .line 966
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 967
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    .line 968
    iput p2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    .line 969
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceBondStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "internalSmoothScrollToPosition E: "

    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    .line 973
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->internalSmoothScrollToPosition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 975
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 980
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->checkReCreateOnLineDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 983
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 986
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p2, :cond_0

    .line 988
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 989
    sget-object v0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find preference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 994
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 995
    check-cast p2, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p2, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setShowDivider(Z)V

    .line 999
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1000
    sget-object p2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 1001
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 1002
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1003
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p2, :cond_c

    instance-of v1, p2, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_c

    if-eqz p2, :cond_c

    .line 1006
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_c

    .line 1008
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1009
    instance-of v3, v2, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    if-eqz v3, :cond_2

    .line 1011
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1012
    sget-object v3, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "repeated Preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v3, 0xa

    const/16 v4, 0xb

    if-ne p2, v3, :cond_a

    .line 1020
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->internalSmoothScrollToPosition()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1022
    sget-object v3, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :goto_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1027
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mCachedDeviceInfoList:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez p2, :cond_5

    .line 1030
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1031
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1032
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "the preference in mDevicePreferenceMap is null, find it from mPairedDevicesCategory"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p2, :cond_6

    .line 1035
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1036
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1038
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-gtz p1, :cond_8

    .line 1039
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_7

    .line 1040
    check-cast p1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setShowDivider(Z)V

    .line 1042
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1046
    :cond_8
    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 1047
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 1048
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    if-ne p1, v2, :cond_c

    .line 1049
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-nez p1, :cond_c

    if-eq v0, v4, :cond_c

    .line 1050
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "startScanning after unpair"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_9

    .line 1052
    check-cast p1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->removeAll()V

    .line 1054
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->startScanning()V

    goto :goto_3

    :cond_a
    if-ne p2, v4, :cond_c

    .line 1059
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1060
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p1, :cond_b

    .line 1062
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1064
    :cond_b
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-gtz p1, :cond_c

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1065
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1066
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
    :goto_3
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    .line 1404
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1405
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    .line 1406
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1409
    instance-of v1, v0, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    if-eqz v1, :cond_0

    .line 1410
    move-object v1, v0

    check-cast v1, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;

    .line 1411
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/MiuiOnLineBluetoothDevicePreference;->isMiuiFastV2Pairing()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1413
    :goto_0
    sget-object v2, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDeviceDeleted mPairedDevicesCategory remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isV2Pair "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    .line 1416
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1419
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1421
    sget-object v1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceDeleted mAvailableDevicesCategory removePreference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1425
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .line 1458
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mMiBleDeviceManagerInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1460
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 1461
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_0

    .line 1462
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTempBLEDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1463
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiBTUtils;->gotoBleProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 1464
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onDevicePreferenceClick gotoBleProfile is ok "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1468
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 754
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onFragmentResult(ILandroid/os/Bundle;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const-string p1, "count"

    .line 758
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 760
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    check-cast p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 762
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set count error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onHearingAidAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 1432
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    .line 1433
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    .line 1434
    sget-object v2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 1435
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    .line 1436
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 1437
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 1438
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method public onHearingAidDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 1443
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    .line 1447
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1448
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "the preference in mDevicePreferenceMap is null, find it from mPairedDevicesCategory"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 1450
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_1

    .line 1451
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 937
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 940
    sget-object p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    const-string p1, "Cannot start scanning since device is in bonding state."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 944
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 9

    .line 721
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x65

    move-object v7, p0

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v7, v0

    move v8, v1

    .line 726
    :goto_0
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiMiscBluetoothPreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 727
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mContinueDiscovery:Z

    .line 728
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;

    .line 729
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/R$string;->bluetooth_device_misc_title:I

    const/4 v6, 0x0

    .line 728
    invoke-static/range {v2 .. v8}, Lcom/android/settings/MiuiUtils;->startPreferencePanel(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V

    .line 733
    :cond_1
    instance-of v0, p2, Lcom/android/settings/bluetooth/BluetoothHalfClosePreference;

    if-eqz v0, :cond_2

    .line 734
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bluetooth_half_close"

    .line 735
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->handleClickHalfClosePref()V

    .line 741
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 1234
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->internalSmoothScrollToPosition()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1236
    sget-object p1, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "internalSmoothScrollToPosition E: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 548
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onResume()V

    .line 549
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 550
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateDeviceNamePreferenceStatus(Z)V

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->invalidateOptionsMenu()V

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->renameMyDevice()V

    .line 556
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mShowDevicesWithoutNamesOld:Z

    const-string/jumbo v0, "persist.bluetooth.showdeviceswithoutnames"

    const/4 v1, 0x0

    .line 557
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    .line 559
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    .line 560
    check-cast v1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setShowDevicesWithoutNames(Z)V

    .line 561
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mShowDevicesWithoutNamesOld:Z

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    if-eq v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateCachedRarelyUsedDevice()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setCount(I)V

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mGattProfile:Lcom/android/settings/bluetooth/GattProfile;

    if-eqz v0, :cond_2

    .line 566
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/GattProfile;->getBondDevices()V

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTempBLEDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_3

    .line 569
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mTempBLEDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->checkAndDeleteOnSavedDevice()V

    .line 573
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeleteDeviceZipRunnable:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

    if-eqz v0, :cond_4

    .line 574
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mDeleteDeviceZipRunnable:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$DeleteDeviceZipRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mInfoHandler:Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;

    if-eqz v0, :cond_5

    .line 577
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 579
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updatePluginUpdatePreference()V

    .line 580
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateHalfClosePreference()V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 1337
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onScanningStateChanged(Z)V

    if-nez p1, :cond_0

    .line 1338
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    .line 1339
    check-cast p1, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateCachedRarelyUsedDevice()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setCount(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 531
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onStart()V

    const/16 v0, 0xa

    .line 532
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBondState:I

    .line 533
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 534
    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->updateRarelyUsedDevicePreference()V

    .line 536
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 540
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mProfileChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 678
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onStop()V

    return-void
.end method

.method startScanning()V
    .locals 3

    .line 1311
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 1312
    new-instance v0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    .line 1313
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1314
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 1315
    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 1316
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 1317
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->updateProgressUi(Z)V

    .line 1321
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    return-void
.end method

.method public updateCachedRarelyUsedDevice()I
    .locals 5

    .line 1580
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 1581
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 1582
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1583
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isRarelyUsedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1584
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 1585
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/GattProfile;->isBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1586
    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isNearByBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    .line 1587
    invoke-static {v3, v2}, Lcom/android/settings/bluetooth/MiuiBTUtils;->isVisibleDevice(ZLcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected updateContent(I)V
    .locals 0

    .line 879
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->renameMyDevice()V

    .line 880
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(I)V

    .line 881
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    .line 882
    check-cast p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->updateRarelyUsedDevicePreference()V

    :cond_0
    return-void
.end method

.method protected updateProgressUi(Z)V
    .locals 0

    .line 1330
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    .line 1331
    check-cast p0, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothFilterCategory;->updateRefreshUI(Z)V

    :cond_0
    return-void
.end method
