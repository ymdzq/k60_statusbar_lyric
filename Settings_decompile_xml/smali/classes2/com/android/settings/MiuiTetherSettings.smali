.class public Lcom/android/settings/MiuiTetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiTetherSettings$BluetoothListener;,
        Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;,
        Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;,
        Lcom/android/settings/MiuiTetherSettings$DelayWeekHandler;,
        Lcom/android/settings/MiuiTetherSettings$EthernetListener;,
        Lcom/android/settings/MiuiTetherSettings$IntentSpan;
    }
.end annotation


# static fields
.field private static final CONFIG_SUBTEXT:I


# instance fields
.field private isClickUsb:Z

.field private isStopP2p:Z

.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private final mAvailableInterfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroidx/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCreateNetwork:Landroidx/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroidx/preference/Preference;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayStartTetherRunnable:Ljava/lang/Runnable;

.field private mDeviceManagementCategory:Landroidx/preference/PreferenceCategory;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEm:Landroid/net/EthernetManager;

.field private mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

.field private mEthernetListener:Lcom/android/settings/MiuiTetherSettings$EthernetListener;

.field private mEthernetRegex:Ljava/lang/String;

.field private mEthernetTether:Landroidx/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMassStorageActive:Z

.field private mNumClients:I

.field private mObserver:Landroid/database/ContentObserver;

.field private mPageRefreshComplete:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mRestartWifiApAfterConfigChange:Z

.field private final mSecondaryWifiReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mShareQrcode:Landroidx/preference/Preference;

.field private mShowDeivces:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mSoftApEnabled:Z

.field private mStartTetheringCallback:Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherDataUsageLimit:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mTetherSettingsActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mTetheringEventCallback:Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;

.field private mTetheringManager:Landroid/net/TetheringManager;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroidx/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiTetherAutoOffController:Lcom/android/settings/wifi/WifiTetherAutoOffController;

.field private mWifiTetherUseWifi6Controller:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;

.field private tetherDialog:Lmiuix/appcompat/app/AlertDialog;

.field private tmpUsbConnected:Z

.field private usbDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$9qkENRytnXybYGSXLVIBXWtGhHs(Lcom/android/settings/MiuiTetherSettings;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->lambda$onStart$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiTetherSettings;->isClickUsb:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableInterfaces(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothEnableForTether:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothPan(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCm(Lcom/android/settings/MiuiTetherSettings;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mDelayHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayStartTetherRunnable(Lcom/android/settings/MiuiTetherSettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mDelayStartTetherRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableWifiAp(Lcom/android/settings/MiuiTetherSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestartWifiApAfterConfigChange(Lcom/android/settings/MiuiTetherSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTetheringCallback(Lcom/android/settings/MiuiTetherSettings;)Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mStartTetheringCallback:Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTetherChoice(Lcom/android/settings/MiuiTetherSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChoice:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsbTether(Lcom/android/settings/MiuiTetherSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApEnabler(Lcom/android/settings/MiuiTetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettetherDialog(Lcom/android/settings/MiuiTetherSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->tetherDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettmpUsbConnected(Lcom/android/settings/MiuiTetherSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiTetherSettings;->tmpUsbConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusbDialog(Lcom/android/settings/MiuiTetherSettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->usbDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisClickUsb(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->isClickUsb:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisStopP2p(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->isStopP2p:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothEnableForTether:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayStartTetherRunnable(Lcom/android/settings/MiuiTetherSettings;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDelayStartTetherRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMassStorageActive(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mMassStorageActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumClients(Lcom/android/settings/MiuiTetherSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiTetherSettings;->mNumClients:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPageRefreshComplete(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mPageRefreshComplete:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRestartWifiApAfterConfigChange(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftApEnabled(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUsbConnected(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtmpUsbConnected(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->tmpUsbConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDelayMsg(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->clearDelayMsg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misShowConfirmDlg(Lcom/android/settings/MiuiTetherSettings;Landroid/content/Context;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->isShowConfirmDlg(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmanageShowConnectedDevices(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->manageShowConnectedDevices()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConfirmDlg(Lcom/android/settings/MiuiTetherSettings;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->showConfirmDlg(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOrHideShareQrcode(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->showOrHideShareQrcode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartProvisioningIfNecessary(Lcom/android/settings/MiuiTetherSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTethering(Lcom/android/settings/MiuiTetherSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->startTethering(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->updateState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->updateState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiTetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 179
    sget v0, Lcom/android/settings/R$string;->wifi_tether_configure_subtext:I

    sput v0, Lcom/android/settings/MiuiTetherSettings;->CONFIG_SUBTEXT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string/jumbo v0, "no_config_tethering"

    .line 361
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    const/4 v1, 0x1

    .line 208
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->isStopP2p:Z

    const/4 v1, 0x0

    .line 218
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 219
    iput v1, p0, Lcom/android/settings/MiuiTetherSettings;->mNumClients:I

    .line 226
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, -0x1

    .line 240
    iput v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChoice:I

    .line 246
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->isClickUsb:Z

    .line 250
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->tmpUsbConnected:Z

    .line 252
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    .line 255
    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    .line 264
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->mPageRefreshComplete:Z

    .line 269
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiTetherSettings$1;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 310
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiTetherSettings$2;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSecondaryWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1490
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$BluetoothListener;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiTetherSettings$BluetoothListener;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private clearDelayMsg()V
    .locals 1

    .line 1651
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mDelayHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1652
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1448
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1449
    array-length v4, p1

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 1450
    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAgreement(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 759
    sget v0, Lcom/android/settings/R$string;->mibi_privacy_manage_user_license:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 760
    sget v1, Lcom/android/settings/R$string;->mibi_cta_description:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 761
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "https://my.au.com/aus/au-cs1/AuHome?PageID=SSO&ActionID=OPTIONSERVICE&agdt=2"

    .line 763
    invoke-static {p0, v2, v1, v0, v3}, Lcom/android/settings/MiuiTetherSettings;->setLicenseHighlight(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private getMillionDigit(I)I
    .locals 0

    const p0, 0xf4240

    .line 967
    div-int/2addr p1, p0

    rem-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    .line 1596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "MiuiTetherSettings"

    if-eqz p0, :cond_0

    .line 1598
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled()+ subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileDataEnabled()- subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retVal="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const-string p0, "getMobileDataEnabled()- remote exception retVal=false"

    .line 1605
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private initWifiTethering()V
    .locals 7

    .line 569
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v0, "wifi"

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 571
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 573
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiUtils;->isWpa3SoftApSupport(Landroid/content/Context;)Z

    move-result v0

    .line 574
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 575
    sget v0, Lcom/android/settings/R$array;->wifi_ap_security_with_sae:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$array;->wifi_ap_security:I

    .line 574
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_5

    .line 579
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "wifi_tether_opened"

    const/4 v2, 0x0

    .line 580
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "wifi_ap_ssid_changed"

    .line 581
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "ro.product.model"

    .line 582
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.product.marketname"

    .line 583
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    .line 585
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_4

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-eqz v4, :cond_4

    const-string v0, "MiuiTetherSettings"

    const-string v1, "Hotspot SSID will be reseted!"

    .line 587
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_1

    .line 589
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_1

    .line 591
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_tether_configure_ssid_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 602
    :cond_3
    :goto_1
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 603
    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->setWifiApConfiguration()V

    .line 608
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_5

    .line 609
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/SoftApConfiguration;)V

    :cond_5
    return-void
.end method

.method private isHighTemperatureProtect()Z
    .locals 3

    .line 974
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "thermal_temp_state_value"

    const/4 v2, 0x0

    .line 973
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 977
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->getMillionDigit(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method private isSecurityEqualsNone()Z
    .locals 2

    .line 351
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 354
    sget v1, Lcom/android/settings/R$string;->wifi_security_none:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isShowConfirmDlg(Landroid/content/Context;)Z
    .locals 3

    .line 988
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->getMobileDataEnabled()Z

    move-result p0

    .line 989
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 991
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private synthetic lambda$onStart$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private manageShowConnectedDevices()V
    .locals 4

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApEnabled:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mShowDeivces:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->connected_devices_number:I

    iget p0, p0, Lcom/android/settings/MiuiTetherSettings;->mNumClients:I

    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 342
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mShowDeivces:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget v1, Lcom/android/settings/R$string;->tether_settings_disabled:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private registerSatelliteSwitchChangeObserver()V
    .locals 3

    const-string/jumbo v0, "registerSatelliteSwitchChangeObserver"

    const-string v1, "MiuiTetherSettings"

    .line 524
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiTetherSettings$3;-><init>(Lcom/android/settings/MiuiTetherSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    .line 538
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "satellite_state"

    .line 540
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    .line 539
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const-string p0, "error for mObserver has inited !!!"

    .line 544
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static setLicenseHighlight(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 769
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 770
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 771
    new-instance v1, Lcom/android/settings/MiuiTetherSettings$IntentSpan;

    invoke-direct {v1, p0, p3, p4}, Lcom/android/settings/MiuiTetherSettings$IntentSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance p3, Lcom/android/settings/MiuiTetherSettings$4;

    invoke-direct {p3, p0, p4}, Lcom/android/settings/MiuiTetherSettings$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v1, p3}, Lcom/android/settings/MiuiTetherSettings$IntentSpan;->setOnClickListener(Lcom/android/settings/MiuiTetherSettings$IntentSpan$OnClickListener;)V

    .line 783
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    const p3, -0xffff01

    invoke-direct {p0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    .line 785
    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 786
    invoke-virtual {p1, p0, p2, v0, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method

.method private setUsbTethering(Z)V
    .locals 3

    .line 1326
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1328
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChoice:I

    new-instance v2, Lcom/android/settings/MiuiTetherSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiTetherSettings$13;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 1340
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_0
    return-void
.end method

.method private showConfirmDlg(Landroid/content/Context;)V
    .locals 2

    .line 1012
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->enable_mobile_data_when_opening_hotspot:I

    .line 1013
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/MiuiTetherSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiTetherSettings$10;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    const v1, 0x104000a    # @android:string/ok

    .line 1014
    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/MiuiTetherSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiTetherSettings$9;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 1024
    invoke-virtual {p1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1032
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showOrHideShareQrcode(Z)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mShareQrcode:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->isSecurityEqualsNone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 332
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mShareQrcode:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mShareQrcode:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showSharePasswordDialog()V
    .locals 8

    .line 1090
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/QRCodeUtils;->getTetherQrcode(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1094
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1095
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1097
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const v4, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    .line 1099
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1100
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const/16 v4, 0x80

    .line 1102
    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/settings/R$layout;->wifi_share_qrcode:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1105
    sget v5, Lcom/android/settings/R$id;->qrcode:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1106
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1107
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v7, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, v5, v7}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v5, Lcom/android/settings/R$string;->wifi_share_qrcode_title:I

    .line 1109
    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->wifi_share_qrcode_finish:I

    .line 1111
    invoke-virtual {v0, v4, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1112
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1114
    new-instance v4, Lcom/android/settings/MiuiTetherSettings$12;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/settings/MiuiTetherSettings$12;-><init>(Lcom/android/settings/MiuiTetherSettings;Landroid/view/WindowManager$LayoutParams;FLandroid/view/Window;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1124
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 4

    .line 1037
    iput p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChoice:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 1044
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1049
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->startTethering(I)V

    :goto_0
    return-void

    .line 1040
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->startTethering()V

    return-void
.end method

.method private startTethering()V
    .locals 5

    .line 1416
    iget v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChoice:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1439
    :cond_0
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mStartTetheringCallback:Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 1419
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 1421
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothEnableForTether:Z

    .line 1422
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1423
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_on:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1424
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1428
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChoice:I

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mStartTetheringCallback:Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 1429
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->bluetooth_tethering_available_subtext:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1433
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/MiuiTetherSettings;->setUsbTethering(Z)V

    :goto_0
    return-void
.end method

.method private startTethering(I)V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    new-instance v1, Lcom/android/settings/MiuiTetherSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiTetherSettings$11;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    return-void
.end method

.method private trackPreferenceClick(Ljava/lang/String;)V
    .locals 1

    .line 563
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "preference"

    .line 564
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "tether_settings_click"

    .line 565
    invoke-static {p1, p0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private unregisterSatelliteSwitchChangeObserver()V
    .locals 2

    const-string v0, "MiuiTetherSettings"

    const-string/jumbo v1, "unregisterSatelliteSwitchChangeObserver"

    .line 1228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    .line 1231
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1232
    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 1347
    array-length p1, p3

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_2

    aget-object v3, p3, v0

    .line 1348
    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v6, p2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 1349
    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1352
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 1355
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 p3, 0xd

    if-ne p1, p3, :cond_4

    .line 1357
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1358
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_turning_off:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    :cond_4
    const/16 p3, 0xb

    if-ne p1, p3, :cond_5

    .line 1360
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1361
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_turning_on:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 1363
    :cond_5
    iget-object p3, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BluetoothPan;

    const/16 v0, 0xc

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_9

    .line 1365
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1366
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1367
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1368
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_6

    .line 1370
    sget p2, Lcom/android/settings/R$string;->bluetooth_tethering_devices_connected_subtext:I

    .line 1372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1370
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1373
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    if-ne p1, v2, :cond_7

    .line 1375
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_tethering_device_connected_subtext:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 1378
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_tethering_errored_subtext:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 1380
    :cond_8
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_tethering_available_subtext:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 1383
    :cond_9
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1384
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1385
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_tethering_available_subtext:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method

.method private updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 1394
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 1395
    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1398
    :cond_0
    array-length p1, p2

    move v0, v1

    move v2, v0

    :goto_1
    const/4 v3, 0x1

    if-ge v0, p1, :cond_2

    aget-object v4, p2, v0

    .line 1399
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 1403
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1404
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 1405
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1406
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1407
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 1409
    :cond_4
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1410
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 1459
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1460
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 1461
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v2}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1462
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiTetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1464
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->updateStateForEnterprise()V

    return-void
.end method

.method private updateState(Z)V
    .locals 3

    .line 1470
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1471
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 1472
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v2}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 1474
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiTetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1476
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/MiuiTetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiTetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->updateStateForEnterprise()V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1485
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiTetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1486
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/MiuiTetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1487
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiTetherSettings;->updateEthernetState([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateStateForEnterprise()V
    .locals 2

    .line 1254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1256
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :cond_0
    const-string v1, "disallow_tether"

    .line 1260
    invoke-static {v0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v0

    invoke-interface {v0, v1}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1265
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1266
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    const-string p0, "Enterprise"

    const-string v0, "Device is in enterprise mode, tether is restricted by enterprise"

    .line 1267
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .line 1275
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mMassStorageActive:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1277
    :goto_0
    array-length v3, p1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, p1, v4

    .line 1278
    iget-object v7, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 1279
    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v5, :cond_1

    .line 1281
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {v5, v6}, Landroid/net/TetheringManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v5

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1287
    :cond_3
    array-length p1, p2

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, p1, :cond_6

    aget-object v6, p2, v3

    .line 1288
    iget-object v7, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v2

    :goto_4
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 1289
    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v4, v1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1293
    :cond_6
    array-length p1, p3

    move p2, v2

    move v3, p2

    :goto_5
    if-ge p2, p1, :cond_9

    aget-object v6, p3, p2

    .line 1294
    iget-object v7, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v2

    :goto_6
    if-ge v9, v8, :cond_8

    aget-object v10, v7, v9

    .line 1295
    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v3, v1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    .line 1299
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    sget p2, Lcom/android/settings/R$string;->usb_tethering_active_subtext:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1300
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1301
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    :cond_a
    if-eqz v0, :cond_d

    if-eqz v5, :cond_c

    const/16 p1, 0x10

    if-ne v5, p1, :cond_b

    goto :goto_7

    .line 1306
    :cond_b
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    sget p2, Lcom/android/settings/R$string;->usb_tethering_errored_subtext:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 1304
    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    sget p2, Lcom/android/settings/R$string;->usb_tethering_available_subtext:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1308
    :goto_8
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1309
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_e

    .line 1311
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    sget p2, Lcom/android/settings/R$string;->usb_tethering_errored_subtext:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1312
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1313
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    .line 1314
    :cond_e
    iget-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mMassStorageActive:Z

    if-eqz p1, :cond_f

    .line 1315
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    sget p2, Lcom/android/settings/R$string;->usb_tethering_storage_active_subtext:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1316
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1317
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_9

    .line 1319
    :cond_f
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    sget p2, Lcom/android/settings/R$string;->usb_tethering_unavailable_subtext:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1320
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1321
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_9
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 1175
    sget p0, Lcom/android/settings/R$string;->help_url_tether:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x5a

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 373
    const-class p0, Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mPageRefreshComplete:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    :cond_0
    return-void
.end method

.method public isModelVersion()Z
    .locals 1

    const-string/jumbo p0, "ro.miui.customized.region"

    .line 791
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jp_kd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1054
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 1056
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/MiuiTetherSettings;->onFragmentResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1129
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiApDialog;->getSoftApConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz p1, :cond_1

    .line 1136
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_0

    .line 1137
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    const/4 p1, 0x1

    .line 1138
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    goto :goto_0

    .line 1140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 1142
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/SoftApConfiguration;)I

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 383
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "setting_Connection_hotspot"

    .line 384
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 385
    sget p1, Lcom/android/settings/R$xml;->miui_tether_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "enable_wifi_ap"

    .line 387
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "wifi_ap_ssid_and_security"

    .line 388
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mCreateNetwork:Landroidx/preference/Preference;

    .line 389
    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->wifi_tether_checkbox_kddi_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 391
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mCreateNetwork:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->wifi_tether_configure_ap_kddi_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    const-string/jumbo p1, "tether_share_qrcode"

    .line 393
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mShareQrcode:Landroidx/preference/Preference;

    const-string/jumbo p1, "tether_device_management"

    .line 394
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDeviceManagementCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "show_connected_devices"

    .line 395
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mShowDeivces:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo p1, "tether_data_usage_limit"

    .line 397
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherDataUsageLimit:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 398
    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo p1, "ro.radio.noril"

    const/4 v1, 0x0

    .line 399
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherDataUsageLimit:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 404
    :cond_1
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 405
    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverEnabled:Z

    const-string p1, "disabled_on_data_saver"

    .line 406
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    .line 407
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const-string/jumbo p1, "user"

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_tethering"

    .line 411
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 412
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_9

    .line 418
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    const-string/jumbo p1, "tethering"

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    const-string p1, "connectivity"

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string p1, "ethernet"

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEm:Landroid/net/EthernetManager;

    .line 423
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiRegexs:[Ljava/lang/String;

    const-string/jumbo p1, "tether_auto_disable"

    .line 425
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const-string/jumbo v2, "tether_use_wifi6"

    .line 426
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 427
    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v1

    .line 428
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 429
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherSettingsActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5

    .line 430
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-nez v3, :cond_5

    .line 431
    new-instance v3, Lcom/android/settings/wifi/WifiTetherAutoOffController;

    .line 432
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-direct {v3, v4, v5, p1}, Lcom/android/settings/wifi/WifiTetherAutoOffController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/Preference;)V

    iput-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiTetherAutoOffController:Lcom/android/settings/wifi/WifiTetherAutoOffController;

    .line 433
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/settings/R$bool;->config_show_softap_wifi6:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 434
    new-instance p1, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherSettingsActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 435
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-direct {p1, v3, v5, v2}, Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiTetherUseWifi6Controller:Lcom/android/settings/wifi/WifiTetherUseWifi6Controller;

    goto :goto_1

    .line 437
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 439
    :goto_1
    new-instance p1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p1, v4, v2, v3}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataSaverBackend;Landroidx/preference/CheckBoxPreference;)V

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 440
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->showOrHideShareQrcode(Z)V

    .line 441
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->manageShowConnectedDevices()V

    .line 442
    new-instance p1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    .line 443
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/MiuiUtils;->getTetherDeviceChangedAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_2

    .line 450
    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 451
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mCreateNetwork:Landroidx/preference/Preference;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 452
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mShareQrcode:Landroidx/preference/Preference;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 453
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mDeviceManagementCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 454
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 455
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 457
    :goto_2
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string/jumbo v2, "track_caller"

    .line 459
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 460
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo p1, "unknown"

    :cond_6
    const-string v3, "caller"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "tether_settings_start"

    .line 462
    invoke-static {p1, v2}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 466
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11030010

    invoke-static {v2, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/res/Resources;I)I

    move-result v2

    .line 466
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mProvisionApp:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "MiuiTetherSettings"

    const-string v2, "Resources not found!"

    .line 470
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_3
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->onDataSaverChanged(Z)V

    const-string/jumbo p1, "usb_tether_settings"

    .line 477
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    .line 478
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "enable_bluetooth_tethering"

    .line 479
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    .line 480
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "enable_ethernet_tethering"

    .line 481
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    .line 482
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 485
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 486
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x1040296    # @android:string/config_systemUIServiceComponent

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetRegex:Ljava/lang/String;

    .line 490
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_4

    :cond_8
    move v2, v1

    .line 491
    :goto_4
    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_9

    move v3, v0

    goto :goto_5

    :cond_9
    move v3, v1

    .line 492
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 494
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 496
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/MiuiTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_a
    if-eqz v2, :cond_b

    .line 500
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 501
    :cond_b
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
    if-nez p1, :cond_d

    .line 505
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 508
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_e

    move p1, v0

    goto :goto_6

    :cond_e
    move p1, v1

    :goto_6
    if-eqz v3, :cond_11

    if-eqz p1, :cond_f

    goto :goto_7

    .line 513
    :cond_f
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    if-eqz p1, :cond_10

    .line 514
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 515
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_8

    .line 517
    :cond_10
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_8

    .line 511
    :cond_11
    :goto_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 520
    :goto_8
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->registerSatelliteSwitchChangeObserver()V

    return-void

    .line 413
    :cond_12
    :goto_9
    iput-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUnavailable:Z

    .line 414
    new-instance p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 617
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 618
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/SoftApConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    .line 1238
    iput-boolean p1, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverEnabled:Z

    .line 1239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set enableWifiApSwitch to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiTetherSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    iget-boolean p0, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1204
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUsbTether:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1205
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetTether:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 1211
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1213
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 1214
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 1217
    :cond_3
    iput-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1218
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 1220
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1222
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 1224
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->unregisterSatelliteSwitchChangeObserver()V

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "config"

    .line 1194
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1195
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->setWifiApConfiguration()V

    .line 1196
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz p1, :cond_0

    .line 1197
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/SoftApConfiguration;)V

    :cond_0
    return-void
.end method

.method public onHotspot()V
    .locals 4

    .line 795
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Wifip2p_connect_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 796
    iput-boolean v2, p0, Lcom/android/settings/MiuiTetherSettings;->isStopP2p:Z

    .line 797
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->ap_p2p_dialog_message:I

    .line 798
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->ap_p2p_dialog_yes:I

    new-instance v2, Lcom/android/settings/MiuiTetherSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiTetherSettings$6;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    .line 799
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/MiuiTetherSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiTetherSettings$5;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 815
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 820
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    const-string v0, "hotspot_on"

    const/4 v3, 0x0

    .line 822
    invoke-static {v0, v3}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 823
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 824
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "wifi_tether_opened"

    .line 825
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 826
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 827
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->isShowConfirmDlg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->showConfirmDlg(Landroid/content/Context;)V

    .line 829
    iput-boolean v2, p0, Lcom/android/settings/MiuiTetherSettings;->isStopP2p:Z

    goto :goto_0

    .line 831
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/MiuiTetherSettings;->startProvisioningIfNecessary(I)V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string/jumbo p0, "track_caller"

    .line 555
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 556
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 557
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "unknown"

    :cond_0
    const-string v0, "caller"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tether_settings_start"

    .line 558
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 882
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->trackPreferenceClick(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "usb_tether_settings"

    .line 887
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 888
    iput-boolean v2, p0, Lcom/android/settings/MiuiTetherSettings;->isClickUsb:Z

    .line 889
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->clearDelayMsg()V

    .line 890
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 893
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->isModelVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "usbnetwork_prompt_state"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 895
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->popupEvent(Ljava/lang/Boolean;)V

    return v1

    .line 899
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/MiuiTetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 901
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->setUsbTethering(Z)V

    :goto_0
    return v2

    :cond_3
    const-string v0, "enable_bluetooth_tethering"

    .line 904
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 905
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_4

    .line 907
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiTetherSettings;->startProvisioningIfNecessary(I)V

    const-string p0, "hotspot_bluetooth_share"

    const/4 p1, 0x0

    .line 908
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 912
    :cond_4
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object p1

    .line 913
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/MiuiTetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 914
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    .line 915
    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->untether(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    move v1, v2

    .line 921
    :cond_5
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    if-eqz v1, :cond_6

    .line 923
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_tethering_errored_subtext:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 925
    :cond_6
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mBluetoothTether:Landroidx/preference/SwitchPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_tethering_available_subtext:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    return v2

    :cond_7
    const-string v0, "enable_wifi_ap"

    .line 929
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 931
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->isHighTemperatureProtect()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 933
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 934
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->wifi_tether_high_temperature_toast:I

    .line 935
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 932
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 937
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 940
    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 943
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->isModelVersion()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 944
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "tethering_prompt_state"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_9

    .line 945
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->popupEvent(Ljava/lang/Boolean;)V

    return v1

    .line 949
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/MiuiTetherSettings;->onHotspot()V

    goto :goto_2

    .line 952
    :cond_a
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 954
    :goto_2
    iget-boolean p0, p0, Lcom/android/settings/MiuiTetherSettings;->isStopP2p:Z

    return p0

    :cond_b
    const-string v0, "enable_ethernet_tethering"

    .line 955
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 956
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_c

    .line 958
    invoke-direct {p0, p2}, Lcom/android/settings/MiuiTetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_3

    .line 960
    :cond_c
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_d
    :goto_3
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 1077
    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiTetherSettings;->trackPreferenceClick(Ljava/lang/String;)V

    .line 1078
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mCreateNetwork:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 1079
    const-class v0, Lcom/android/settings/wifi/EditTetherFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mShareQrcode:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 1081
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1082
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->showSharePasswordDialog()V

    .line 1085
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 550
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 627
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 628
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->initWifiTethering()V

    .line 629
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004    # @android:id/empty

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 632
    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 633
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    :cond_0
    return-void

    .line 638
    :cond_1
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mStartTetheringCallback:Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    .line 639
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;-><init>(Lcom/android/settings/MiuiTetherSettings;Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback-IA;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringEventCallback:Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;

    .line 640
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringEventCallback:Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 644
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 645
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    :cond_2
    const-string/jumbo v0, "shared"

    .line 648
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mMassStorageActive:Z

    .line 649
    new-instance v0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/MiuiTetherSettings;Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver-IA;)V

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 651
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 652
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 653
    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v2, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v2

    .line 655
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.hardware.usb.action.USB_STATE"

    .line 656
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 659
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.MEDIA_SHARED"

    .line 660
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    .line 661
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "file"

    .line 662
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 663
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 665
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 666
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.action.STATE_CHANGED"

    .line 667
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 670
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 671
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    iget-object v5, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 675
    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 677
    :cond_3
    new-instance v2, Lcom/android/settings/MiuiTetherSettings$DelayWeekHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/MiuiTetherSettings$DelayWeekHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/MiuiTetherSettings;)V

    iput-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mDelayHandler:Landroid/os/Handler;

    .line 679
    new-instance v2, Lcom/android/settings/MiuiTetherSettings$EthernetListener;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/MiuiTetherSettings$EthernetListener;-><init>(Lcom/android/settings/MiuiTetherSettings;Lcom/android/settings/MiuiTetherSettings$EthernetListener-IA;)V

    iput-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetListener:Lcom/android/settings/MiuiTetherSettings$EthernetListener;

    .line 680
    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_4

    .line 681
    new-instance v2, Lcom/android/settings/MiuiTetherSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiTetherSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    iget-object v3, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetListener:Lcom/android/settings/MiuiTetherSettings$EthernetListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 683
    :cond_4
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mSecondaryWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->updateState()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 692
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 693
    iget-boolean v0, p0, Lcom/android/settings/MiuiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mEnableWifiAp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 699
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 701
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringEventCallback:Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;

    invoke-virtual {v0, v2}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 703
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_2

    .line 704
    iget-object v2, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetListener:Lcom/android/settings/MiuiTetherSettings$EthernetListener;

    invoke-virtual {v0, v2}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 706
    :cond_2
    iput-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 707
    iput-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mTetheringEventCallback:Lcom/android/settings/MiuiTetherSettings$TetheringEventCallback;

    .line 708
    iput-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mEthernetListener:Lcom/android/settings/MiuiTetherSettings$EthernetListener;

    .line 709
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mDelayStartTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSecondaryWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 711
    invoke-direct {p0}, Lcom/android/settings/MiuiTetherSettings;->clearDelayMsg()V

    return-void
.end method

.method public popupEvent(Ljava/lang/Boolean;)V
    .locals 3

    .line 837
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 838
    sget v1, Lcom/android/settings/R$string;->mibi_cta_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 839
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiTetherSettings;->getAgreement(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 840
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 841
    sget v1, Lcom/android/settings/R$string;->mibi_cta_CANCEL:I

    new-instance v2, Lcom/android/settings/MiuiTetherSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiTetherSettings$7;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 845
    sget v1, Lcom/android/settings/R$string;->mibi_cta_OK:I

    new-instance v2, Lcom/android/settings/MiuiTetherSettings$8;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/MiuiTetherSettings$8;-><init>(Lcom/android/settings/MiuiTetherSettings;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 857
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->mibi_cta_CheckBox:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 858
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 859
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->tetherDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 862
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 864
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->tetherDialog:Lmiuix/appcompat/app/AlertDialog;

    sget p1, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 866
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 869
    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings;->usbDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 872
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 874
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings;->usbDialog:Lmiuix/appcompat/app/AlertDialog;

    sget p1, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 876
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWifiApConfiguration()V
    .locals 3

    .line 1148
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    if-eqz v0, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mCm:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 1152
    iput-boolean v1, p0, Lcom/android/settings/MiuiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1155
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1156
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1157
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    .line 1158
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 1160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 1162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MiuiWifiService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/MiuiWifiManager;

    .line 1164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "AmlMiuiWifiService"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz v0, :cond_2

    .line 1166
    invoke-virtual {v0}, Landroid/net/wifi/MiuiWifiManager;->setHotSpotVendorSpecific()V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    .line 1168
    invoke-virtual {p0}, Landroid/net/wifi/AmlMiuiWifiManager;->setHotSpotVendorSpecific()V

    :cond_3
    :goto_0
    return-void
.end method
