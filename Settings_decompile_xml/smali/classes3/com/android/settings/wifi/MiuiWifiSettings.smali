.class public Lcom/android/settings/wifi/MiuiWifiSettings;
.super Lcom/android/settings/network/NetworkProviderSettings;
.source "MiuiWifiSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/OnBackPressedListener;
.implements Lcom/android/settings/core/OnActivityResultListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;,
        Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;,
        Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;,
        Lcom/android/settings/wifi/MiuiWifiSettings$EasyTetherCoreCallback;
    }
.end annotation


# static fields
.field private static BT_PLUGIN_INITED_NOTIFY:Ljava/lang/String;

.field private static HEADSETPLUGIN_INITED:I

.field private static HEADSETPLUGIN_NOTSET:I

.field private static final TAG:Ljava/lang/String;

.field public static mCanUpdateWifiEntryPreferencesRunnable:Z

.field private static mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

.field private static mEasyTetherHotspotEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mEasyTetherVirtualAPPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstanceRef:I

.field public static mIsDisableBack:Z

.field public static mIsOnScroll:Z

.field private static mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

.field public static final sCmccSSidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isEasyTetherSwitchOn:Z

.field private isMtkPlatform:Z

.field private mBackArrow:Landroid/widget/ImageButton;

.field private mBackButton:Landroid/widget/TextView;

.field private mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDppHandler:Landroid/os/Handler;

.field private mESimCode:I

.field private mEasyTetherConnectingDeviceId:Ljava/lang/String;

.field private mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

.field private mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

.field private mExtraSsid:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsConnecting:Z

.field private mIsDeviceLockNeed:Z

.field private mIsEasyTetherConnecting:Z

.field private mIsFirstWifiStateChange:Z

.field private mIsFromKeyguard:Z

.field private mIsFromPhoneActivation:Z

.field private mIsInProvision:Z

.field private mIsMatchOfWifiSsid:Z

.field private mIsRestricted:Z

.field private mIsShowDataDialog:Z

.field private mIsShown:Z

.field private mIsWifiShareTurnOn:Z

.field private mIsWorkHandlerQuit:Z

.field private mLanguage:Ljava/lang/String;

.field private mLocalSameAccountApCallback:Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;

.field private mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

.field private mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkMobileData:Landroid/net/Network;

.field private mNetworkMobileDataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkState:Landroid/net/NetworkInfo$State;

.field private mNextArrow:Landroid/widget/ImageButton;

.field private mNextButton:Landroid/widget/TextView;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOcrWifiPwd:Ljava/lang/String;

.field private mOpenWifiFilter:Landroid/content/IntentFilter;

.field private mOpenWifiIntent:Landroid/content/Intent;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRefreshListener:Landroid/view/View$OnClickListener;

.field private mSameAccountAPPreference:Lcom/android/settings/wifi/MiuiWifiEntryPreference;

.field private mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

.field private mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSharedDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mSkipButton:Landroid/widget/TextView;

.field private final mUpdateRefreshRunnable:Ljava/lang/Runnable;

.field private final mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field private mUserSelect:Z

.field private mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

.field private mWaitingNetworkId:I

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field protected mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

.field private mWifiHelpClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mWifiHelpThread:Landroid/os/HandlerThread;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

.field private mWifiNormalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/MiuiWifiEntryPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiQrcode:Lcom/android/settings/wifi/dpp/WifiQrCode;

.field private mWifiSavedEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/MiuiWifiEntryPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private recyclerview:Landroidx/recyclerview/widget/RecyclerView;

.field private rootView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$AbnNhrEYrqCShjrica-KdkqFodI(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$CKxjYVDuTKdcNFb6yFbPEzEFf44(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->lambda$showWifiSwitchDialogIfNeed$2(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mD_8MUxStzzq43S0LjOVBZsg9xE(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$r3CEp-0fzcyWIBDa1Jlqo7pUeBI(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->lambda$displayNearbyButtonIfNeeded$3(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisEasyTetherSwitchOn(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->isEasyTetherSwitchOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDppHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mDppHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmESimCode(Lcom/android/settings/wifi/MiuiWifiSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mESimCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEasyTetherCoreCallback(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDeviceLockNeed(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDeviceLockNeed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEasyTetherConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsEasyTetherConnecting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShowDataDialog(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShowDataDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWorkHandlerQuit(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWorkHandlerQuit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkMobileData:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkState(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextArrow(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/ImageButton;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSameAccountAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAPPreference:Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateWifiEntryPreferencesRunnable(Lcom/android/settings/wifi/MiuiWifiSettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSelect(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUserSelect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingNetworkId(Lcom/android/settings/wifi/MiuiWifiSettings;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWaitingNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiHelpClickListener(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNetworkConfig(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiQrcode(Lcom/android/settings/wifi/MiuiWifiSettings;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiQrcode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEasyTetherConnectingDeviceId(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingDeviceId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEasyTetherCoreCallback(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsConnecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEasyTetherConnecting(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsEasyTetherConnecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShown(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/Network;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkMobileData(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/Network;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkMobileData:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkState(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOpenWifiIntent(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/content/Intent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOpenWifiIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSameAccountAccessPoint(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSharedDialog(Lcom/android/settings/wifi/MiuiWifiSettings;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSharedDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserSelect(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUserSelect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitingNetworkId(Lcom/android/settings/wifi/MiuiWifiSettings;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWaitingNetworkId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConfig(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiNetworkConfig(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiQrcode(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiQrcode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddVirtualAPPrefForEasyTetherInternal(Lcom/android/settings/wifi/MiuiWifiSettings;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->addVirtualAPPrefForEasyTetherInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapConnectedStatusUpdated(Lcom/android/settings/wifi/MiuiWifiSettings;ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->apConnectedStatusUpdated(ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEnableHelpPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->checkEnableHelpPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleEasyConnectChanged(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/net/NetworkInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->handleEasyConnectChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minternalSmoothScrollToPosition(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->internalSmoothScrollToPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCustShowSkipButton(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isCustShowSkipButton()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMobileNetValidated(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isMobileNetValidated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiConnected(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misWifiValidated(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiValidated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrefreshVirtualApInfo(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshVirtualApInfo(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshVirtualApInfoForEasyEther(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshVirtualApInfoForEasyEther()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->registerEasyTetherCoreService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveVirtualAPPreference(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeVirtualAPPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNoInternetToast(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->showNoInternetToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterEasyTetherCoreService(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->unregisterEasyTetherCoreService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePrefForEasyTetherConnectFail(Lcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updatePrefForEasyTetherConnectFail()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmEasyTetherConnectingPreference()Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmEasyTetherHotspotEntries()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmEasyTetherVirtualAPPreferences()Ljava/util/Map;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmWifiHelpWorkHandler()Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmEasyTetherConnectingPreference(Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$smisPad()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smupdateEasyTetherHotspotEntries(Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateEasyTetherHotspotEntries(Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 172
    const-class v0, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v0, "BLUETOOTHHEADSETPLUGIN_INITED"

    .line 178
    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->BT_PLUGIN_INITED_NOTIFY:Ljava/lang/String;

    const/4 v0, -0x1

    .line 179
    sput v0, Lcom/android/settings/wifi/MiuiWifiSettings;->HEADSETPLUGIN_NOTSET:I

    const/4 v0, 0x1

    .line 180
    sput v0, Lcom/android/settings/wifi/MiuiWifiSettings;->HEADSETPLUGIN_INITED:I

    const/4 v0, 0x0

    .line 235
    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDisableBack:Z

    .line 265
    sput v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    const/4 v1, 0x0

    .line 290
    sput-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    .line 322
    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsOnScroll:Z

    .line 323
    sput-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCanUpdateWifiEntryPreferencesRunnable:Z

    .line 332
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    .line 334
    sput-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    .line 1776
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->sCmccSSidSet:Ljava/util/HashSet;

    const-string v1, "CMCC"

    .line 1777
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "CMCC-AUTO"

    .line 1778
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "CMCC-EDU"

    .line 1779
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "CMCC-WEB"

    .line 1780
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 169
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;-><init>()V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->isEasyTetherSwitchOn:Z

    .line 244
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    const/4 v1, 0x0

    .line 262
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShowDataDialog:Z

    .line 263
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWorkHandlerQuit:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsMatchOfWifiSsid:Z

    const/4 v2, 0x0

    .line 293
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, -0x1

    .line 305
    iput v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mESimCode:I

    .line 312
    iput v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWaitingNetworkId:I

    .line 326
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    .line 330
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 331
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    .line 335
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingDeviceId:Ljava/lang/String;

    .line 337
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    .line 350
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUpdateRefreshRunnable:Ljava/lang/Runnable;

    .line 1067
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$5;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 1074
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$6;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 1445
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$7;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 1938
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShown:Z

    .line 2223
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFirstWifiStateChange:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsDppQrCodeFgShow:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsDppQrCodeFgShow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/MiuiWifiSettings;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsShareDialogShow:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/MiuiWifiSettings;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsShareDialogShow:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/MiuiWifiSettings;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method private addCmccNetworkNotificationPref()V
    .locals 2

    .line 1830
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    return-void

    .line 1832
    :cond_0
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    const-string v1, "cmcc_network_notification"

    .line 1833
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1834
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_notify_cmcc_connected_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1835
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_notify_cmcc_connected_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1836
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "wifi_settings"

    .line 1838
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 1839
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1841
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateCmccNetworkNotificationState()V

    return-void
.end method

.method private addVirtualAPPrefForEasyTether(I)V
    .locals 2

    .line 2444
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$18;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$18;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addVirtualAPPrefForEasyTetherInternal(I)V
    .locals 11

    .line 2458
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "addVirtualAPPrefForEasyTetherInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2460
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2461
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 2466
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move v4, v5

    .line 2467
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 2468
    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 2469
    invoke-virtual {v6}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2470
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2471
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is exist in mSavedWifiEntryCategory, ignore add."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    goto :goto_0

    .line 2483
    :cond_4
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2484
    new-instance v4, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    .line 2485
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBatteryPercent()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getIs5G()Z

    move-result v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 2487
    :cond_5
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    :goto_3
    if-nez v4, :cond_6

    .line 2491
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "addVirtualAPPrefForEasyTether preference is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2495
    :cond_6
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2496
    invoke-virtual {v4}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateIcon()V

    .line 2497
    new-instance v5, Lcom/android/settings/wifi/MiuiWifiSettings$19;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/settings/wifi/MiuiWifiSettings$19;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2528
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 2529
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2530
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_9

    add-int/lit8 v2, p1, 0x1

    .line 2531
    invoke-virtual {v4, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 2532
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2533
    sget-object p1, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EasyTether addPreference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_7
    invoke-virtual {v4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2536
    invoke-virtual {v4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 2538
    :cond_8
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move p1, v2

    .line 2540
    :cond_9
    sget-object v2, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2541
    sget-object v2, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private addVirtualAPPreference(ZI)V
    .locals 7

    .line 2294
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    if-eqz p1, :cond_1

    .line 2296
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    if-nez v0, :cond_0

    .line 2297
    new-instance v0, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 2298
    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getBatteryPercent()I

    move-result v5

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->isIs5G()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    .line 2300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2301
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateIcon()V

    .line 2302
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$14;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$14;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2324
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2325
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2326
    invoke-virtual {p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_2

    .line 2327
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 2328
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 2329
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsConnecting:Z

    if-eqz p1, :cond_2

    .line 2330
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateState(I)V

    .line 2331
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mVirtualAPPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;->updateSummary()V

    goto :goto_0

    .line 2335
    :cond_1
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "mSameAccountAccessPoint is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private apConnectedStatusUpdated(ILcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 1

    .line 2384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2385
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$17;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$17;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkEnableHelpPreference()V
    .locals 7

    .line 893
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

    .line 894
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

    .line 898
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsApplication;

    iget v3, v3, Lcom/android/settings/SettingsApplication;->mQigsawStarted:I

    .line 899
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    sget v4, Lcom/android/settings/wifi/MiuiWifiSettings;->HEADSETPLUGIN_INITED:I

    if-ne v3, v4, :cond_1

    .line 902
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManagerService;->getInstance()Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 904
    invoke-interface {v3}, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoManager;->getCurrentSplitInfoVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 905
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v4, "wifi_help"

    invoke-static {v0, v3, v4}, Lcom/android/settings/connectivity/MiuiBluetoothDataBaseOperaterUtil;->queryPluginSupport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 913
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->setConnectHelpPreferenceVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 916
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private connectWifiEntry(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 5

    .line 1558
    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->connectDbsApForPrimary(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1559
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->maybeSameBandAsSlaveWifi(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 1561
    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->getHBSBssid(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p1

    .line 1562
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sameBandResult = 2, hbsIsEmpty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1562
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 1564
    :goto_0
    invoke-virtual {p0, p2, v2, v2, v1}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1567
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiSwitchPromptNotRemind()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1568
    invoke-virtual {p0, v1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->showWifiSwitchPrompt(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_1

    .line 1570
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 1571
    invoke-virtual {p0, p2, v2, v2}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_1

    .line 1574
    :cond_4
    invoke-virtual {p0, p2, v2, v2}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    :goto_1
    return-void
.end method

.method private createEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;
    .locals 7

    const-string v0, "createEntryPreference "

    .line 1128
    new-instance v1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    .line 1130
    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->update(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 1131
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1132
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    if-eqz v3, :cond_3

    .line 1134
    :try_start_0
    invoke-interface {v3}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1136
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1137
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "easytether getRealSsid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getRealSsid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " getBssid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBssid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1137
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1143
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getRealSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1144
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 1145
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1146
    sget-object v3, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " wifiInfo is null, set title "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1150
    :cond_1
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBssid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1151
    invoke-virtual {v3}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    .line 1152
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1153
    sget-object v3, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " bssid is same, set title "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1159
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createEntryPreference failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1162
    sget-object v3, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " set title "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_3
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1166
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 1168
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->setArrowClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v1
.end method

.method private determineShowDialog()V
    .locals 9

    .line 865
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wifi_start_connect_ssid"

    .line 866
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ssid"

    .line 867
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_ocr_wifi_token"

    .line 868
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOcrWifiPwd:Ljava/lang/String;

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    .line 871
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v0, "Not show connect dialog, there\'s no ssid."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 874
    :cond_0
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mExtraSsid:Ljava/lang/String;

    .line 875
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 876
    sget-object v6, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show connect dialog, connectSsid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extraSsid: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mExtraSsid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->showDialogForWifiTile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsMatchOfWifiSsid:Z

    .line 883
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 884
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private displayNearbyButtonIfNeeded(Landroid/view/View;)V
    .locals 7

    .line 1984
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1985
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1987
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "Do not support Nearby Sharing!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1990
    :cond_0
    sget v2, Lcom/android/settings/R$id;->layout_wifi_share_qrcode:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 1991
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090059    # @android:layout/chooser_action_button

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1993
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x1

    .line 1995
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1996
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050289    # @android:dimen/secondary_rounded_corner_radius_adjustment

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    .line 1998
    invoke-virtual {v3, v5, v6, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1999
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2000
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2001
    invoke-interface {v1}, Lcom/android/internal/app/chooser/TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 2003
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105009b    # @android:dimen/chooser_direct_share_label_placeholder_max_width

    .line 2004
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2005
    invoke-virtual {p1, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2006
    invoke-virtual {v2, p1, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2008
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2009
    new-instance p1, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/content/Intent;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2023
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2024
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAllCaps(Z)V

    return-void
.end method

.method private focusOnBackIcon()V
    .locals 1

    .line 2243
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFirstWifiStateChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2244
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFirstWifiStateChange:Z

    return-void

    .line 2248
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x1020019    # @android:id/button1

    .line 2251
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 2253
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method private getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 9

    .line 2056
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2059
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2060
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2061
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    .line 2062
    invoke-virtual {p0, v7, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2064
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_2

    .line 2074
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 2077
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "android.service.chooser.chip_label"

    .line 2078
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2079
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "android.service.chooser.chip_icon"

    .line 2080
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2081
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    :goto_0
    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2085
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2086
    invoke-virtual {v4, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_3
    move-object v5, v1

    if-nez v0, :cond_4

    .line 2089
    invoke-virtual {v4, p0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2092
    :cond_4
    new-instance p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const-string v6, ""

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 2094
    invoke-virtual {p0, v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    return-object p0

    .line 2065
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device-specified nearby sharing component ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not available"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3

    .line 2028
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SAE"

    return-object p0

    .line 2031
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const-string v1, "nopass"

    if-eqz v0, :cond_1

    return-object v1

    .line 2034
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    .line 2035
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2038
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "WEP"

    :goto_0
    return-object v1

    :cond_4
    :goto_1
    const-string p0, "WPA"

    return-object p0
.end method

.method private handleEasyConnectChanged(Landroid/net/NetworkInfo;)V
    .locals 5

    .line 2607
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_9

    .line 2608
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 2609
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2610
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2611
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEasyConnectChanged onReceive connected: ssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2615
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    if-eqz v0, :cond_4

    .line 2616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2617
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$22;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$22;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2629
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2630
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_2

    .line 2631
    sget-object v2, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 2633
    :cond_2
    sget-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2634
    sget-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingDeviceId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    sget-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v2, "mEasyTetherVirtualAPPreferences remove easytether entry."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 2640
    :cond_4
    :goto_0
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x0

    .line 2641
    :try_start_3
    sput-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    const/4 v1, 0x0

    .line 2642
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsEasyTetherConnecting:Z

    .line 2643
    sget-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2644
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2645
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2646
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    .line 2647
    invoke-virtual {v2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2648
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2649
    sget-object v2, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEasyTetherVirtualAPPreferences remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2654
    :cond_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2656
    :try_start_4
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz p1, :cond_8

    .line 2658
    :try_start_5
    invoke-interface {p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherHotspotEntries()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateEasyTetherHotspotEntries(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2660
    :try_start_6
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEasyTetherHotspotEntries failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->refreshVirtualApInfoForEasyEther()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_1
    move-exception p0

    .line 2654
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception p0

    .line 2666
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    return-void
.end method

.method private initBroadcastReceiver(Landroid/os/Handler;)V
    .locals 13

    .line 548
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 549
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "show_dpp_qr_code"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "scan_dpp_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDeviceLockNeed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const-string v1, "miui.intent.CACHE_OPENWIFI"

    .line 564
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 568
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$2;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 635
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const/4 v10, 0x0

    const/4 v12, 0x2

    move-object v11, p1

    invoke-virtual/range {v7 .. v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private initDppHandler()V
    .locals 1

    .line 2202
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$11;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mDppHandler:Landroid/os/Handler;

    return-void
.end method

.method private initHandler()V
    .locals 3

    .line 483
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiuiWifiSetting"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpThread:Landroid/os/HandlerThread;

    .line 484
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 485
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 486
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;-><init>(Landroid/os/Looper;Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler-IA;)V

    sput-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    return-void
.end method

.method private initMiuiSynergySdk()V
    .locals 2

    .line 2282
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$13;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initOperatorDialog()V
    .locals 2

    .line 791
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$3;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    .line 821
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 823
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initUI()V
    .locals 4

    .line 1030
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "wifi_enable"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    .line 1031
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiEnabler;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/MiuiWifiEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEnabler:Lcom/android/settings/wifi/MiuiWifiEnabler;

    .line 1032
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1036
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    const-string/jumbo v1, "saved_access_point"

    const-string v2, "network_acceleration"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isWifiAssistAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1053
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1055
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1059
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    .line 1062
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    sget v1, Lcom/android/settings/R$layout;->miuix_preference_category_layout_empty:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1064
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addCmccNetworkNotificationPref()V

    return-void

    :cond_3
    :goto_0
    const-string/jumbo v0, "wifi_settings"

    .line 1037
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1039
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1041
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1043
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1045
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    .line 1047
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    return-void
.end method

.method private internalSmoothScrollToPosition()V
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private isCustShowSkipButton()V
    .locals 2

    .line 2226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$12;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isEasyTetherWifiConnected()Z
    .locals 4

    .line 1181
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1186
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 1191
    sget-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEasyTetherWifiConnected failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private isMobileNetValidated()Z
    .locals 2

    .line 1824
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1825
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    .line 1826
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isPad()Z
    .locals 2

    .line 2412
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    const-string v0, "MiuiQuickHotspotTest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWifiConnected()Z
    .locals 2

    .line 1807
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1808
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1809
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isWifiConnecting()Z
    .locals 0

    .line 1174
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1176
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWifiEntryConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 1935
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWifiValidated()Z
    .locals 2

    .line 1815
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1816
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    .line 1817
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$displayNearbyButtonIfNeeded$3(Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    const-string p2, "android.intent.action.SEND"

    .line 2010
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 2011
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x8000

    .line 2012
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2013
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2015
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SSID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2017
    invoke-static {v0}, Lcom/android/settings/wifi/QRCodeUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.PASSWORD"

    .line 2016
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->getSecurityString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.SECURITY_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string v1, "android.intent.extra.HIDDEN_SSID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.intent.extra.WIFI_CREDENTIALS_BUNDLE"

    .line 2020
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2021
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 338
    sget-boolean v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsOnScroll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 339
    sput-boolean v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mCanUpdateWifiEntryPreferencesRunnable:Z

    return-void

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeAccessPointPre()V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsMatchOfWifiSsid:Z

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mExtraSsid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->showDialogForWifiTile(Ljava/lang/String;)Z

    .line 346
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsMatchOfWifiSsid:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateScanState(Z)V

    return-void
.end method

.method private static synthetic lambda$showWifiSwitchDialogIfNeed$2(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 1741
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private manuallyAddNetwork()V
    .locals 7

    .line 1601
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    const-class v0, Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    :cond_0
    return-void
.end method

.method private refreshVirtualApInfo(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V
    .locals 2

    .line 2355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2356
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$16;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$16;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshVirtualApInfoForEasyEther()V
    .locals 3

    .line 2567
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshVirtualApInfoForEasyEther size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    .line 2568
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2567
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "refreshVirtualApInfoForEasyEther getActivity is null."

    .line 2570
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2573
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$21;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$21;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerEasyTetherCoreService()V
    .locals 4

    .line 2701
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "registerEasyTetherCoreService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    .line 2704
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$24;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$24;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;

    const-string v1, "registerEasyTetherCoreService start to get the binder"

    .line 2731
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.mible.EasyTetherCoreService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth"

    .line 2733
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2734
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 2735
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 2734
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2738
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerEasyTetherCoreService error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private registerSameAccountApCallback()V
    .locals 2

    .line 2266
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initMiuiSynergySdk()V

    .line 2267
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLocalSameAccountApCallback:Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;

    .line 2268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2269
    :cond_0
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLocalSameAccountApCallback:Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;

    invoke-virtual {v0, v1, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->registerSameAccountApCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountApCallback;)I

    return-void
.end method

.method private registerSatelliteSwitchChangeObserver()V
    .locals 3

    .line 456
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "registerSatelliteSwitchChangeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 458
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings$1;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    .line 470
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "satellite_state"

    .line 472
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    .line 471
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const-string p0, "error for mObserver has inited !!!"

    .line 476
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeAccessPointPre()V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private removeVirtualAPPreference()V
    .locals 2

    .line 2340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2341
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$15;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resortAccessPoint(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiSavedEntries:Ljava/util/ArrayList;

    .line 1854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiNormalEntries:Ljava/util/ArrayList;

    .line 1855
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1856
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 1857
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 1858
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 1859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 1860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1863
    :cond_0
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1865
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/MiuiWifiSettings;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    if-eqz v5, :cond_2

    .line 1867
    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v6

    if-ne v6, v1, :cond_1

    .line 1869
    invoke-virtual {v5}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateRssi()V

    move-object v2, v5

    goto :goto_1

    .line 1872
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 1876
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings;->createEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    move-result-object v2

    .line 1877
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1879
    :cond_3
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1880
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiSavedEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1882
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiNormalEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1884
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1886
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 1887
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 1888
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 1889
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiSavedEntries:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getSuperComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1890
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiNormalEntries:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getSuperComparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private setConnectHelpPreferenceVisible(Z)V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings$4;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showDialogForWifiTile(Ljava/lang/String;)Z
    .locals 10

    .line 1337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1340
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1342
    new-instance p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1345
    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLjava/lang/String;Ljava/util/List;)V

    .line 1346
    invoke-static {v2}, Lcom/android/settings/wifi/WifiUtils;->getWifiEntrySecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOcrWifiPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOcrWifiPwd:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;ILjava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 1353
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mExtraSsid:Ljava/lang/String;

    .line 1354
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mOcrWifiPwd:Ljava/lang/String;

    :cond_4
    :goto_1
    return v1
.end method

.method private showNoInternetToast()V
    .locals 2

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_assistant_confirm_connection_title:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void
.end method

.method private showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    const-string/jumbo v0, "wifi_share_password"

    .line 1942
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1943
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 1945
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1946
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/QRCodeUtils;->getWifiQrcode(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1950
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShown:Z

    .line 1951
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1953
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const v4, 0x3f4ccccd    # 0.8f

    .line 1954
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1955
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v4, 0x80

    .line 1956
    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1957
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/settings/R$layout;->wifi_share_qrcode:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1958
    sget v5, Lcom/android/settings/R$id;->qrcode:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1959
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1960
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/MiuiWifiSettings;->displayNearbyButtonIfNeeded(Landroid/view/View;)V

    .line 1961
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v5, Lcom/android/settings/R$string;->wifi_share_qrcode_title:I

    .line 1963
    invoke-virtual {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1964
    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v4, Lcom/android/settings/R$string;->wifi_share_qrcode_finish:I

    .line 1965
    invoke-virtual {p1, v4, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1966
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSharedDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 1967
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$8;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/wifi/MiuiWifiSettings$8;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/view/WindowManager$LayoutParams;FLandroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1978
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSharedDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_1

    .line 1979
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method private showWifiSwitchDialogIfNeed(I)V
    .locals 12

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1701
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "newNetworkId is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1704
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1705
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 1706
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 1709
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1713
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    .line 1714
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-eq p1, v2, :cond_d

    if-ne p1, v1, :cond_2

    goto/16 :goto_2

    .line 1720
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1722
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v3

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 1723
    iget v6, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, p1, :cond_3

    if-nez v4, :cond_4

    .line 1725
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v5}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1728
    :cond_4
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration;->addSecurityParams(Landroid/net/wifi/SecurityParams;)V

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    .line 1732
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "config is null?!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1736
    :cond_6
    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1738
    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1739
    invoke-static {v4}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v11

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLjava/lang/String;Ljava/util/List;)V

    .line 1740
    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v5}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lcom/android/settings/wifi/MiuiWifiSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 1741
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 1742
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    .line 1744
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1745
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 1747
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->maybeSameBandAsSlaveWifi(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result v5

    .line 1748
    sget-object v6, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sameBandResult = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_9

    .line 1750
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->getHBSBssid(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 1751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hbsIsEmpty = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 1753
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v1, v3

    .line 1752
    :cond_8
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToPrimaryApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    goto :goto_1

    :cond_9
    const/4 v7, 0x1

    if-ne v5, v7, :cond_c

    .line 1755
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiSwitchPromptNotRemind()Z

    move-result v5

    if-nez v5, :cond_b

    if-ne v2, v0, :cond_a

    .line 1756
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isDBS()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p0, "primary disconnected, waiting for auto connect."

    .line 1757
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1760
    :cond_a
    invoke-virtual {p0, v4, v3}, Lcom/android/settings/network/NetworkProviderSettings;->showWifiSwitchPrompt(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void

    .line 1763
    :cond_b
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 1765
    :cond_c
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 1716
    :cond_d
    :goto_2
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : has already connected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1710
    :cond_e
    :goto_3
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private unRegisterSameAccountApCallback()V
    .locals 1

    .line 2274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2275
    :cond_0
    invoke-static {}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->getInstance()Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->unRegisterSameAccountApCallback(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 2277
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unRegisterSameAccountApCallback failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private unregisterEasyTetherCoreService()V
    .locals 3

    .line 2743
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterEasyTetherCoreService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2746
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    invoke-interface {v0, v2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->unregister(Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V

    .line 2747
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherCoreCallback:Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    .line 2749
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 2750
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2751
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2754
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService.unregister error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private unregisterSatelliteSwitchChangeObserver()V
    .locals 2

    .line 682
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterSatelliteSwitchChangeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    .line 685
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 686
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private updateCmccNetworkNotificationState()V
    .locals 2

    .line 1845
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1847
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->getCmccConnectedTipValue(Landroid/content/Context;)Z

    move-result v0

    .line 1848
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 1849
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mCmccNetworkNotification:Landroidx/preference/CheckBoxPreference;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static updateEasyTetherHotspotEntries(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;",
            ">;)V"
        }
    .end annotation

    .line 2584
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2585
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2586
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2587
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 2589
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2590
    new-instance v2, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    .line 2591
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v5

    .line 2592
    invoke-virtual {v1}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getIs5G()Z

    move-result v6

    invoke-virtual {v1}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBatteryPercent()I

    move-result v1

    invoke-direct {v2, v4, v5, v6, v1}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2593
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ssid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " battery: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getBatteryPercent()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is5G: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getIs5G()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2597
    sget-object v4, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEasyTetherHotspotEntries from Core Service, apInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_0
    sget-object v1, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2601
    :cond_1
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EasyTether, onApInfoUpdate from size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " size "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherHotspotEntries:Ljava/util/Map;

    .line 2602
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2601
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePrefForEasyTetherConnectFail()V
    .locals 2

    .line 2671
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2672
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherVirtualAPPreferences:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2673
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsEasyTetherConnecting:Z

    const/4 p0, 0x0

    .line 2674
    sput-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mEasyTetherConnectingPreference:Lcom/android/settings/wifi/MiuiVirtualWifiEntryPreference;

    .line 2675
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2678
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$23;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1897
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1899
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 1900
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1903
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected changeNextButtonState(Z)V
    .locals 4

    .line 1785
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->changeNextButtonState(Z)V

    .line 1786
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1787
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDeviceLockNeed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiValidated()Z

    move-result p1

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1791
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    .line 1792
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->provision_btn_next_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1791
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1793
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1794
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1795
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1797
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    .line 1798
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->provision_btn_next_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1797
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1799
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1800
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1801
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public closeFragment()V
    .locals 2

    const-string v0, "provision_wifi_skip"

    const/4 v1, 0x0

    .line 2260
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 2261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2262
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected getCachedCount()I
    .locals 0

    .line 1921
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 1908
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 357
    const-class p0, Lcom/android/settings/wifi/MiuiWifiSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNearbySharingComponent()Landroid/content/ComponentName;
    .locals 2

    .line 2043
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nearby_sharing_component"

    .line 2042
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2045
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x104026b    # @android:string/config_pdp_reject_service_not_subscribed

    .line 2046
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2052
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method protected miuiHandleClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1475
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return v2

    .line 1479
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "manually_add_network"

    .line 1480
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1481
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->manuallyAddNetwork()V

    return v2

    :cond_1
    const-string/jumbo v0, "wifi_available_click"

    .line 1484
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 1485
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v0, :cond_11

    .line 1486
    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUserSelect:Z

    .line 1488
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_2

    const-string v0, "provision_wifi_connect_count"

    .line 1489
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 1490
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 1492
    :cond_2
    check-cast p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    .line 1493
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 1495
    instance-of v3, v0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    if-eqz v3, :cond_5

    .line 1496
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->maybeSameBandAsSlaveWifi(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 1497
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiSwitchPromptNotRemind()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1498
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showWifiSwitchPrompt(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 1500
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 1501
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showPrivacyDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 1504
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showPrivacyDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    :goto_0
    return v2

    .line 1509
    :cond_5
    iget-object v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1510
    instance-of v3, v3, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    if-eqz v3, :cond_6

    .line 1511
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removeAllUnregisteredConfig(Landroid/content/Context;)V

    .line 1515
    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiEntryConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v3, :cond_a

    .line 1516
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 1517
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p1, :cond_7

    const/16 v3, 0x11

    .line 1518
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1519
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isInMishow(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSharedDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_8

    .line 1520
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 1521
    :cond_8
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1522
    invoke-virtual {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    :cond_9
    :goto_1
    return v2

    .line 1526
    :cond_a
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    .line 1527
    invoke-virtual {p1, v3}, Lcom/android/settings/wifi/WifiEntryPreference;->setConnected(Z)V

    const-string/jumbo v3, "wifi_saved_click"

    .line 1528
    invoke-static {v3, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 1529
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1530
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1531
    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ltz v4, :cond_d

    if-eqz v1, :cond_b

    .line 1532
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v4, :cond_c

    :cond_b
    iget v1, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_d

    .line 1534
    :cond_c
    invoke-direct {p0, v3, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->connectWifiEntry(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_2

    .line 1535
    :cond_d
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1536
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1537
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .line 1539
    :cond_e
    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/WifiEntryPreference;->setConnected(Z)V

    :goto_2
    return v2

    .line 1543
    :cond_f
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1544
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->getConnectingType(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p1

    if-ne p1, v2, :cond_10

    .line 1545
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1546
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->connectWifiEntry(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    return v2

    .line 1549
    :cond_10
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-nez p1, :cond_11

    .line 1550
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    :cond_11
    return v2
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 829
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1624
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 1625
    sget-boolean p2, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz p2, :cond_1

    .line 1626
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "pref_set_mobile_data_show"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShowDataDialog:Z

    if-eqz p3, :cond_1

    if-ne p1, v1, :cond_1

    const-string p2, "next"

    .line 1628
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1629
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->closeFragment()V

    :cond_1
    if-eqz p3, :cond_2

    .line 1633
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings;->onFragmentResult(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onApAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;ILcom/android/settings/wifi/MiuiWifiSettings;)V
    .locals 2

    .line 2837
    :try_start_0
    invoke-direct {p3}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p3, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsEasyTetherConnecting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2842
    :cond_0
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiSettings$25;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/settings/wifi/MiuiWifiSettings$25;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/settings/wifi/MiuiWifiSettings;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2839
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "wifi is connected or connecting"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2875
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 1770
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDisableBack:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 2181
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2182
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 362
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onCreate(Landroid/os/Bundle;)V

    .line 363
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-boolean v1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pref_set_mobile_data_show"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShowDataDialog:Z

    .line 367
    :cond_1
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMCustmized()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "eSim"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mESimCode:I

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "is_dialog_shown"

    .line 371
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShown:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "wifi_configuration_info"

    .line 373
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 374
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V

    :cond_3
    const-string/jumbo p1, "wifi"

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "wifi_setup_wizard"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v1, "wifi_settings_keyguard"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_phone_activation"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromPhoneActivation:Z

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isDeviceLockNeed(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDeviceLockNeed:Z

    .line 383
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz p1, :cond_7

    .line 384
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_4

    .line 385
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 387
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 388
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 390
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_6

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 393
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 397
    :cond_6
    sget p1, Lcom/android/settings/R$style;->Theme_Provision_Notitle_WifiSettings:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 400
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_disable_back"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDisableBack:Z

    goto :goto_2

    .line 402
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/MiuiSettings;

    if-eqz p1, :cond_8

    .line 403
    sget p1, Lcom/android/settings/R$style;->Theme_WifiSettings_showTitle:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    goto :goto_1

    .line 405
    :cond_8
    sget p1, Lcom/android/settings/R$style;->Theme_WifiSettings:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    .line 407
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/ScreenUtils;->setScreenPortraitModeIfNeed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 410
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 414
    :goto_2
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromKeyguard:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromPhoneActivation:Z

    if-eqz p1, :cond_a

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x80000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 418
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initUI()V

    .line 419
    new-instance p1, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    .line 420
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWorkThread:Landroid/os/HandlerThread;

    .line 423
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 424
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWorkHandler:Landroid/os/Handler;

    .line 426
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    .line 427
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    .line 429
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->initBroadcastReceiver(Landroid/os/Handler;)V

    .line 430
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->registerSatelliteSwitchChangeObserver()V

    .line 431
    iput-boolean v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWorkHandlerQuit:Z

    .line 433
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLanguage:Ljava/lang/String;

    .line 435
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initDppHandler()V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsRestricted:Z

    .line 438
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initHandler()V

    .line 440
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pref_key_connectivity_service_state"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_b

    move p1, v2

    goto :goto_3

    :cond_b
    move p1, v3

    :goto_3
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->isEasyTetherSwitchOn:Z

    .line 442
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->registerSameAccountApCallback()V

    .line 443
    sget-object p1, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    if-eqz p1, :cond_c

    const/4 v0, 0x2

    .line 444
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    const-string/jumbo p1, "wifi_connect_help"

    .line 447
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 449
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_d
    const-string/jumbo p1, "vendor"

    .line 451
    invoke-static {p1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediatek"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->isMtkPlatform:Z

    .line 452
    sget p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    add-int/2addr p0, v2

    sput p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 693
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/MiuiUtils;->updateFragmentView(Landroid/app/Activity;Landroid/view/View;)V

    .line 696
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/R$layout;->provision_base_layout:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$layout;->wifi_settings:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->rootView:Landroid/view/View;

    .line 697
    iget-boolean p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz p2, :cond_2

    .line 698
    new-instance p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 700
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->rootView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->rootView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 703
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 704
    sget p3, Lcom/android/settings/R$id;->recycler_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    .line 705
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 706
    iget-object p3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 707
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 708
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    .line 651
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 654
    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLocalSameAccountApCallback:Lcom/android/settings/wifi/MiuiWifiSettings$LocalSameAccountApCallback;

    .line 657
    :cond_0
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onDestroy()V

    .line 658
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 659
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x1

    .line 660
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWorkHandlerQuit:Z

    .line 662
    sget v3, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    sub-int/2addr v3, v1

    sput v3, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInstanceRef "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    sget v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mInstanceRef:I

    if-gtz v0, :cond_2

    .line 665
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 670
    :cond_1
    sput-object v2, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    .line 674
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->unRegisterSameAccountApCallback()V

    .line 676
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->unregisterEasyTetherCoreService()V

    .line 678
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->unregisterSatelliteSwitchChangeObserver()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 643
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onDestroyView()V

    .line 644
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 646
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->rootView:Landroid/view/View;

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/16 v1, 0x64

    const/4 v2, 0x0

    const-string v3, "config"

    if-eq p1, v1, :cond_5

    const/16 v1, 0x65

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 1660
    :cond_0
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_9

    .line 1662
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1663
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v3, :cond_9

    const/4 v1, -0x1

    if-eq v3, v1, :cond_9

    const-string v1, "mac_random_changed"

    .line 1665
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result p2

    if-ne p2, v0, :cond_1

    .line 1666
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1667
    iget p2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWaitingNetworkId:I

    .line 1669
    :cond_1
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1671
    invoke-virtual {p2, v2}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    .line 1673
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1688
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1689
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "fail to get DPP parameters"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "dpp_network_id"

    .line 1692
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1693
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->showWifiSwitchDialogIfNeed(I)V

    goto :goto_0

    .line 1641
    :cond_5
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_9

    .line 1643
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUserSelect:Z

    .line 1644
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isSlaveWifiConnectedWhenAddNetwork()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1645
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiSwitchPromptNotRemind()Z

    move-result p2

    if-nez p2, :cond_6

    .line 1646
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/network/NetworkProviderSettings;->showWifiSwitchPrompt(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 1648
    :cond_6
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 1649
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1650
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1653
    :cond_7
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1654
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_8
    const-string/jumbo p1, "wifi_configuration"

    .line 1681
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_9

    .line 1683
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->showWifiSwitchDialogIfNeed(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1098
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-eq v0, v1, :cond_0

    .line 1110
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 1100
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDisableBack:Z

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 1023
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onPause()V

    .line 1024
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1025
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 1580
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1581
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string/jumbo v0, "wifi_enable"

    .line 1582
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1583
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1586
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEnabler:Lcom/android/settings/wifi/MiuiWifiEnabler;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/MiuiWifiEnabler;->checkedChanged(Z)V

    if-eqz p2, :cond_1

    const-string/jumbo p0, "wifi_switch_click"

    const/4 p1, 0x0

    .line 1588
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1590
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 1591
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeSavedWifiEntryPreference()V

    .line 1592
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    goto :goto_0

    :cond_2
    const-string v0, "cmcc_network_notification"

    .line 1594
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1595
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiTipActivity;->setCmccConnectedTipValue(Landroid/content/Context;Z)V

    :cond_3
    :goto_0
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 1469
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 834
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onResume()V

    .line 835
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiShareUtils;->isWifiShareTurnOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsWifiShareTurnOn:Z

    .line 836
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateCmccNetworkNotificationState()V

    .line 838
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_0

    const-string v0, "provision_wifi_page"

    .line 839
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPageStart(Ljava/lang/String;)V

    const-string v0, "provision_wifi_page_count"

    .line 840
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    .line 843
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->determineShowDialog()V

    .line 844
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    if-nez v0, :cond_1

    .line 845
    new-instance v0, Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/MiuiNearbyApPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiNearbyApPreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUpdateRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 849
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsRestricted:Z

    .line 851
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiHelpWorkHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MessageHandler;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 852
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 854
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 2100
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_dialog_shown"

    .line 2101
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2102
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsShown:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "wifi_configuration_info"

    .line 2103
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 2109
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onStart()V

    .line 2110
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDeviceLockNeed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz v0, :cond_0

    .line 2112
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 2113
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2114
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 2115
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 2116
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 2117
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 2118
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 2119
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 2120
    new-instance v2, Lcom/android/settings/wifi/MiuiWifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$9;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2149
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2151
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiSettings$10;-><init>(Lcom/android/settings/wifi/MiuiWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkMobileDataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2175
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 2187
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onStop()V

    .line 2188
    sget-object v0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 2193
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2194
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 2196
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkMobileDataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2

    .line 2197
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2198
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkMobileDataCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_2
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 713
    invoke-super {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 714
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-eqz p1, :cond_9

    .line 715
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_next_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_skip_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    .line 717
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_back_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mBackButton:Landroid/widget/TextView;

    .line 718
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_global_back_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mBackArrow:Landroid/widget/ImageButton;

    .line 719
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->provision_global_next_btn:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    .line 720
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 723
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    sget-object p1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 727
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsFromPhoneActivation:Z

    if-eqz p1, :cond_1

    .line 728
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 729
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 734
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mBackArrow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 735
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 737
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mBackArrow:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 740
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 742
    :goto_1
    sget-boolean p1, Lmiui/os/Build;->IS_MIPAD:Z

    if-eqz p1, :cond_3

    .line 747
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 749
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x1

    .line 750
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 751
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    :cond_3
    sget-boolean p1, Lmiui/os/Build;->IS_PRIVATE_BUILD:Z

    if-eqz p1, :cond_4

    .line 754
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 757
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsDeviceLockNeed:Z

    if-eqz p1, :cond_5

    .line 758
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isCustShowSkipButton()V

    .line 759
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    .line 760
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->provision_btn_next_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 759
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 761
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 762
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNextArrow:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 765
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiSettings;->changeNextButtonState(Z)V

    .line 767
    sget-boolean p1, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedESIMCustmized()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 768
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initOperatorDialog()V

    .line 771
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 772
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 773
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 771
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 776
    sget-boolean p1, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    if-eqz p1, :cond_9

    .line 777
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "from_dpc_initial"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    .line 778
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 779
    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 3

    .line 1115
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->changeNextButtonState(Z)V

    .line 1116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 1117
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1120
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1123
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 3

    .line 1386
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    .line 1391
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1392
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v0, "onWifiStateChanged shouldn\'t run when fragment is finishing or destroyed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 1421
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string v0, "Invalid state"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1398
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->focusOnBackIcon()V

    .line 1399
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1400
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1402
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1403
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->initMiuiSynergySdk()V

    .line 1405
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 1414
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 1415
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeSavedWifiEntryPreference()V

    .line 1416
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    .line 1417
    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_wifi_off:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->addMessagePreference(I)V

    .line 1418
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->focusOnBackIcon()V

    goto :goto_0

    .line 1409
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 1410
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->removeSavedWifiEntryPreference()V

    .line 1411
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    :goto_0
    return-void
.end method

.method protected reloadDialog(ILjava/lang/String;)V
    .locals 9

    .line 1363
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1364
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    if-eqz p2, :cond_0

    .line 1365
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1367
    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiWifiSettings$MainThreadHandler;

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1370
    invoke-static {v1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v8

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLjava/lang/String;Ljava/util/List;)V

    .line 1371
    invoke-static {v1}, Lcom/android/settings/wifi/WifiUtils;->getWifiEntrySecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1372
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    :cond_1
    return-void

    .line 1377
    :cond_2
    sget-object p0, Lcom/android/settings/wifi/MiuiWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "No scanResult for reload dialog."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1915
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 1916
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected removeSavedWifiEntryPreference()V
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1428
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1429
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method protected updateScanState(Z)V
    .locals 1

    .line 1612
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1616
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiNearbyApPreference;->startScanAnimation()V

    goto :goto_0

    .line 1618
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiNearbyApPreference;->stopScanAnimation()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateWifiEntryPreferences()V
    .locals 13

    .line 1197
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 1204
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 1210
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiConnecting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1211
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 1214
    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v2

    .line 1215
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiWifiSettings;->resortAccessPoint(Ljava/util/List;)V

    .line 1219
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAPPreference:Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 1224
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    .line 1227
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 1230
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 1231
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    .line 1232
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1233
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1234
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 1236
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1237
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1239
    :goto_1
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eqz v1, :cond_7

    .line 1244
    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/wifitrackerlib/WifiEntry;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 1248
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->update(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_3

    .line 1245
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiSettings;->createEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    move-result-object v1

    .line 1250
    :goto_3
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1251
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->setWifiConnected(Z)V

    .line 1252
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1253
    iget-object v4, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1255
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1257
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1258
    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v5}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1259
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isEasyTetherWifiConnected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1261
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAPPreference:Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 1262
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v4}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getBatteryPercent()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateBatteryLevel(I)V

    move v1, v2

    goto :goto_4

    :cond_8
    move v1, v3

    :goto_4
    move v4, v2

    goto :goto_5

    :cond_9
    move v1, v3

    move v4, v1

    .line 1268
    :goto_5
    iget-boolean v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v5, :cond_a

    .line 1269
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1270
    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1274
    :cond_a
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiSavedEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x2

    move v8, v3

    move v7, v6

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 1275
    invoke-virtual {v9}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v10

    .line 1276
    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->update(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 1277
    iget-boolean v11, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v11, :cond_10

    if-eqz v0, :cond_b

    .line 1279
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v12

    if-ne v11, v12, :cond_b

    goto :goto_6

    .line 1283
    :cond_b
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroidx/preference/Preference;->isVisible()Z

    move-result v8

    if-nez v8, :cond_c

    .line 1284
    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_c
    add-int/lit8 v8, v7, 0x1

    .line 1286
    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1287
    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1289
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1291
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    if-eqz v4, :cond_e

    invoke-virtual {v9}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1292
    invoke-virtual {v9}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v7}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1293
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->isEasyTetherWifiConnected()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1295
    iput-object v9, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAPPreference:Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 1296
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiEntryConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1297
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSameAccountAccessPoint:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;

    invoke-virtual {v1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->getBatteryPercent()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->updateBatteryLevel(I)V

    :cond_d
    move v1, v2

    :cond_e
    move v4, v2

    move v7, v8

    move v8, v4

    goto :goto_6

    :cond_f
    move v7, v8

    move v8, v2

    goto :goto_6

    .line 1303
    :cond_10
    invoke-direct {p0, v10}, Lcom/android/settings/wifi/MiuiWifiSettings;->isWifiEntryConnected(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v10

    if-eqz v10, :cond_11

    move v10, v6

    move v6, v3

    goto :goto_7

    :cond_11
    add-int/lit8 v10, v6, 0x1

    :goto_7
    invoke-virtual {v9, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1304
    iget-object v6, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v6, v10

    goto/16 :goto_6

    .line 1308
    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mWifiNormalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 1309
    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v5

    .line 1310
    invoke-virtual {v2, v5}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->update(Lcom/android/wifitrackerlib/WifiEntry;)V

    add-int/lit8 v5, v6, 0x1

    .line 1311
    invoke-virtual {v2, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1312
    iget-object v6, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 1313
    iget-object v6, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v6, v5

    goto :goto_8

    .line 1316
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v0, :cond_14

    if-nez v8, :cond_14

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mSavedWifiEntryCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_14

    .line 1317
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1320
    :cond_14
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiSettings;->isPad()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiSettings;->mIsInProvision:Z

    if-nez v0, :cond_16

    if-nez v1, :cond_15

    .line 1322
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->addVirtualAPPreference(ZI)V

    .line 1324
    :cond_15
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/MiuiWifiSettings;->addVirtualAPPrefForEasyTether(I)V

    .line 1327
    :cond_16
    new-instance v0, Lcom/android/settings/wifi/OtherAccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/OtherAccessPoint;-><init>(Landroid/content/Context;)V

    const-string v1, "manually_add_network"

    .line 1328
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1329
    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1330
    invoke-virtual {v0, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1331
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1333
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiSettings;->updateCmccNetworkNotificationState()V

    return-void

    .line 1205
    :cond_17
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    return-void
.end method
