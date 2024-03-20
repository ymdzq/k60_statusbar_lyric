.class public Lcom/android/settings/wifi/MiuiSlaveWifiSettings;
.super Lcom/android/settings/network/NetworkProviderSettings;
.source "MiuiSlaveWifiSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/OnBackPressedListener;
.implements Lcom/android/settings/core/OnActivityResultListener;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mCanUpdateWifiEntryPreferencesRunnable:Z

.field public static mIsOnScroll:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mEasyTetherConnection:Landroid/content/ServiceConnection;

.field private mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsDbsDualWifiSupport:Z

.field private mIsHbsDualWifiSupport:Z

.field private mIsRestricted:Z

.field private mIsShown:Z

.field private mMainHandler:Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

.field private mMiuiSlaveWifiEnabler:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

.field private mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

.field private mNetworkState:Landroid/net/NetworkInfo$State;

.field private mOpenWifiFilter:Landroid/content/IntentFilter;

.field private mOpenWifiIntent:Landroid/content/Intent;

.field protected mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRefreshListener:Landroid/view/View$OnClickListener;

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

.field private final mUpdateRefreshRunnable:Ljava/lang/Runnable;

.field private final mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field private mUserSelect:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private recyclerview:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$EeevagvbY1RHUHaijYPIlAtF8q4(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rP7eOHKCr6DH6mJO8bYK7vgmH0c(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkState(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateWifiEntryPreferencesRunnable(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserSelect(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUserSelect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShown(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsShown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkState(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOpenWifiIntent(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/content/Intent;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mOpenWifiIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiConfig(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$minternalSmoothScrollToPosition(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->internalSmoothScrollToPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterEasyTetherCoreService(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->registerEasyTetherCoreService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSlaveWifiEnabler(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateSlaveWifiEnabler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 124
    const-class v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 176
    sput-boolean v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsOnScroll:Z

    .line 177
    sput-boolean v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mCanUpdateWifiEntryPreferencesRunnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;-><init>()V

    .line 157
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    .line 165
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    .line 179
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    .line 409
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUpdateRefreshRunnable:Ljava/lang/Runnable;

    .line 453
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$2;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 460
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$3;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 v0, 0x0

    .line 1057
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsShown:Z

    return-void
.end method

.method private addConnectedWifiEntryPreferenceCategory()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "connected_access_point"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_slave_wifi_connected:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 715
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 716
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 717
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private createEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;
    .locals 2

    .line 569
    new-instance v0, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    .line 571
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->update(Lcom/android/wifitrackerlib/WifiEntry;)V

    .line 572
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 573
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/MiuiWifiEntryPreference$ArrowClickListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 575
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->setArrowClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v0
.end method

.method private focusOnBackIcon()V
    .locals 1

    .line 766
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 769
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private initBroadcastReceiver(Landroid/os/Handler;)V
    .locals 13

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SLAVE_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const-string v1, "miui.intent.DUAL_WIFI.CACHE_OPENWIFI"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 305
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$1;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mOpenWifiFilter:Landroid/content/IntentFilter;

    const/4 v10, 0x0

    const/4 v12, 0x2

    move-object v11, p1

    invoke-virtual/range {v7 .. v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private initUI()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/MiuiNearbyApPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    sget v1, Lcom/android/settings/R$string;->dual_wifi_avaliable_slave_wifi:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 444
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiNearbyApPreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "connected_primary_wifi"

    .line 445
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    .line 446
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 447
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 448
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    sget v1, Lcom/android/settings/R$layout;->miuix_preference_category_layout_primary_text:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string/jumbo v0, "wifi"

    .line 450
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private internalSmoothScrollToPosition()V
    .locals 2

    .line 287
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 290
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUserSelect:Z

    :cond_0
    return-void
.end method

.method private isSlaveWifiConnecting()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isMloBothActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 582
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 584
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 180
    sget-boolean v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsOnScroll:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 181
    sput-boolean p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mCanUpdateWifiEntryPreferencesRunnable:Z

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateWifiEntryPreferences()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateScanState(Z)V

    return-void
.end method

.method private manuallyAddNetwork()V
    .locals 7

    .line 963
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isSlaveWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
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

.method private registerEasyTetherCoreService()V
    .locals 4

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 1118
    new-instance v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$5;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    .line 1139
    sget-object v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    const-string v1, "registerEasyTetherCoreService start to get the binder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.bluetooth.mible.EasyTetherCoreService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth"

    .line 1141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    .line 1143
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 1142
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1146
    sget-object v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

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

.method private removeAccessPointPre()V
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private removeAccessPointsPreference()V
    .locals 1

    .line 775
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->removeAccessPointPre()V

    .line 776
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 777
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private removeConnectedAccessPointPreferenceCategory()V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 822
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private resortAccessPoint(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/wifi/MiuiWifiEntryPreference;",
            ">;"
        }
    .end annotation

    .line 1027
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1029
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 1030
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 1036
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    if-eqz v5, :cond_2

    .line 1038
    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v6

    if-ne v6, v2, :cond_1

    goto :goto_1

    .line 1042
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    .line 1046
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->createEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    move-result-object v5

    .line 1047
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1049
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1052
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 1053
    invoke-static {}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->getSuperComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private setPrimaryPreferenceEnabled(Z)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 785
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updatePrimaryPreference()V

    return-void
.end method

.method private showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    const-string/jumbo v0, "wifi_share_password"

    .line 1061
    invoke-static {v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1062
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 1064
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1065
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/wifi/QRCodeUtils;->getWifiQrcode(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1069
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsShown:Z

    .line 1070
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1072
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const v4, 0x3f4ccccd    # 0.8f

    .line 1073
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1074
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v4, 0x80

    .line 1075
    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1076
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/settings/R$layout;->wifi_share_qrcode:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1077
    sget v5, Lcom/android/settings/R$id;->qrcode:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1078
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1079
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v5, Lcom/android/settings/R$string;->wifi_share_qrcode_title:I

    .line 1081
    invoke-virtual {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1082
    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v4, Lcom/android/settings/R$string;->wifi_share_qrcode_finish:I

    .line 1083
    invoke-virtual {p1, v4, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1084
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1085
    new-instance v1, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$4;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/view/WindowManager$LayoutParams;FLandroid/view/Window;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1095
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterEasyTetherCoreService()V
    .locals 3

    .line 1151
    sget-object v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterEasyTetherCoreService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1155
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1158
    sget-object v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

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

    :cond_0
    :goto_0
    return-void
.end method

.method private updatePrimaryPreference()V
    .locals 6

    .line 789
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 793
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v1, "connected_primary_wifi"

    .line 794
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 795
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    const/4 v1, 0x0

    .line 800
    :try_start_0
    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_2

    .line 801
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mEasyTetherCoreService:Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    if-eqz v2, :cond_2

    .line 802
    invoke-interface {v2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;->getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 804
    invoke-virtual {v2}, Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {}, Lcom/android/settings/network/NetworkProviderSettings;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 806
    sget-object v2, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePrimaryPreference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 812
    sget-object v3, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePrimaryPreference failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;->setWifiInfo(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 816
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mPrimaryPreference:Lcom/android/settings/wifi/MiuiWifiPrimaryPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    return-void
.end method

.method private updateSlaveWifiEnabler()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->supportDualWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 340
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 339
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 194
    const-class p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected miuiHandleClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 840
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "manually_add_network"

    .line 841
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->manuallyAddNetwork()V

    return v1

    .line 845
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v0, :cond_16

    .line 846
    check-cast p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    .line 847
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 849
    instance-of v2, v0, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 850
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->maybeSameBandAsSlaveWifi(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiSwitchPromptNotRemind()Z

    move-result p1

    if-nez p1, :cond_1

    .line 852
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showWifiSwitchPrompt(Landroid/net/wifi/WifiConfiguration;Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 855
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showPrivacyDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showPrivacyDialog(Lcom/android/wifitrackerlib/WifiEntry;)V

    :goto_0
    return v1

    .line 863
    :cond_3
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->getConnectingType(Lcom/android/wifitrackerlib/WifiEntry;)I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ne v2, v1, :cond_b

    .line 865
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    if-ne p1, v5, :cond_4

    .line 866
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 867
    invoke-virtual {v0, v3}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    return v1

    .line 870
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 871
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isDBS()Z

    move-result p1

    if-nez p1, :cond_7

    .line 872
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    if-ne p1, v5, :cond_5

    return v1

    .line 874
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 875
    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsHbsDualWifiSupport:Z

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    .line 876
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isOnly5Ghz()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 877
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 878
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getHBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    .line 877
    invoke-virtual {v0, v3, v1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;ZLjava/lang/String;)V

    return v1

    .line 881
    :cond_6
    invoke-virtual {v0, v3, v1}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;Z)V

    return v1

    .line 883
    :cond_7
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isDBS()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 884
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    if-ne p1, v5, :cond_8

    return v1

    .line 887
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 888
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    if-ne v2, v4, :cond_9

    goto :goto_1

    .line 892
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(I)Z

    move-result v2

    .line 893
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mApplicationContext:Landroid/content/Context;

    .line 895
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    xor-int/2addr v2, v1

    .line 894
    invoke-static {v0, p0, p1, v2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getDBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 893
    invoke-virtual {v0, v3, v1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;ZLjava/lang/String;)V

    return v1

    .line 889
    :cond_a
    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;Z)V

    return v1

    .line 900
    :cond_b
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUserSelect:Z

    .line 902
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    if-ne v2, v5, :cond_e

    const-string p1, "connectivity"

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 906
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 907
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz p1, :cond_c

    const/16 v2, 0x11

    .line 908
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_d

    .line 909
    :cond_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isInMishow(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 910
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V

    :cond_d
    return v1

    .line 914
    :cond_e
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    .line 915
    invoke-virtual {p1, v2}, Lcom/android/settings/wifi/WifiEntryPreference;->setConnected(Z)V

    .line 916
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 917
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v2, :cond_10

    .line 920
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    if-eq v7, v4, :cond_10

    .line 921
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isDBS()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v6, :cond_10

    .line 922
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, v7, :cond_f

    .line 923
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v4

    if-eq v4, v5, :cond_10

    .line 924
    :cond_f
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(I)Z

    move-result p1

    .line 925
    iget-object v4, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    iget v5, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mApplicationContext:Landroid/content/Context;

    .line 927
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    xor-int/2addr p1, v1

    .line 926
    invoke-static {v0, p0, v2, p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getDBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 925
    invoke-virtual {v4, v3, v5, p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    goto :goto_2

    .line 928
    :cond_10
    iget-boolean v4, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsHbsDualWifiSupport:Z

    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    if-eqz v6, :cond_11

    .line 929
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    invoke-static {v4}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isOnly5Ghz()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 930
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    iget p1, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 931
    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getHBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    goto :goto_2

    :cond_11
    if-eqz v2, :cond_12

    if-eqz v6, :cond_12

    .line 933
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget v2, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v2, :cond_13

    :cond_12
    if-eqz v6, :cond_14

    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v0, v1, :cond_14

    .line 935
    :cond_13
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p0, v6}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2

    .line 937
    :cond_14
    invoke-virtual {p1, v1}, Lcom/android/settings/wifi/WifiEntryPreference;->setConnected(Z)V

    :goto_2
    return v1

    .line 941
    :cond_15
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-nez p1, :cond_16

    .line 942
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    :cond_16
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 385
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 386
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->setIsSlave(Z)V

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mApplicationContext:Landroid/content/Context;

    .line 388
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "wifi_enable"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    .line 389
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    new-instance p1, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroidx/preference/CheckBoxPreference;Lcom/android/settingslib/wifi/SlaveWifiUtils;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMiuiSlaveWifiEnabler:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    .line 391
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateSlaveWifiEnabler()V

    .line 393
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 394
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 395
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    .line 393
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 397
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updatePrimaryPreference()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 987
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    .line 989
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->onFragmentResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 429
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 430
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "is_dialog_shown"

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsShown:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi_configuration_info"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 204
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->showSharePasswordDialog(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    const-string/jumbo p1, "wifi"

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 212
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/MiuiSettings;

    if-eqz p1, :cond_2

    .line 213
    sget p1, Lcom/android/settings/R$style;->Theme_WifiSettings_showTitle:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    goto :goto_0

    .line 215
    :cond_2
    sget p1, Lcom/android/settings/R$style;->Theme_WifiSettings:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    .line 218
    :goto_0
    new-instance p1, Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/MiuiSearchDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    .line 219
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->initUI()V

    .line 220
    new-instance p1, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;-><init>(Lcom/android/settings/wifi/MiuiSlaveWifiSettings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    .line 221
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWorkThread:Landroid/os/HandlerThread;

    .line 224
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWorkHandler:Landroid/os/Handler;

    .line 226
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object p1

    const-string v0, "connectivity"

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mConnManager:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_3

    .line 229
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->initBroadcastReceiver(Landroid/os/Handler;)V

    .line 235
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_4

    .line 236
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsRestricted:Z

    .line 240
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->supportDbsDualWifi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsDbsDualWifiSupport:Z

    .line 241
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->supportHbsDualWifi()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsHbsDualWifiSupport:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/MiuiUtils;->updateFragmentView(Landroid/app/Activity;Landroid/view/View;)V

    .line 372
    :cond_0
    sget v0, Lcom/android/settings/R$layout;->wifi_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 373
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 374
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 375
    sget p3, Lcom/android/settings/R$id;->recycler_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 377
    iget-object p3, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 2

    .line 347
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->unregisterEasyTetherCoreService()V

    .line 351
    :cond_0
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onDestroy()V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 355
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public onFragmentResult(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x1

    const-string v2, "config"

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1009
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsDbsDualWifiSupport:Z

    if-eqz v0, :cond_1

    .line 1010
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v2, :cond_1

    .line 1011
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v0, v2, :cond_4

    const/4 v0, -0x1

    if-eq v2, v0, :cond_4

    const-string v0, "mac_random_changed"

    .line 1016
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result p2

    if-ne p2, v1, :cond_2

    .line 1017
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->disconnectSlaveWifi()Z

    .line 1019
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 997
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    .line 999
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUserSelect:Z

    .line 1000
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 508
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c    # @android:id/home

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v2

    .line 513
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateScanState(Z)V

    .line 518
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 952
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wifi_enable"

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 954
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 957
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMiuiSlaveWifiEnabler:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->checkedChanged(Z)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 835
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1112
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 402
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onResume()V

    const-string/jumbo v0, "wifi_slave_click"

    const/4 v1, 0x0

    .line 403
    invoke-static {v0, v1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUpdateRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsRestricted:Z

    .line 406
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1100
    invoke-super {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_dialog_shown"

    .line 1101
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1102
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsShown:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "wifi_configuration_info"

    .line 1103
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 415
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onStart()V

    .line 416
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMiuiSlaveWifiEnabler:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->start()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 435
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onStop()V

    .line 436
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMiuiSlaveWifiEnabler:Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiEnabler;->stop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 6

    .line 537
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getMode()I

    move-result v0

    .line 538
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 539
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 544
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 546
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_5

    .line 549
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    .line 551
    invoke-virtual {p1, p0, v2}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;Z)V

    goto :goto_0

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 556
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isDBS()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 557
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-static {v3}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(I)Z

    move-result v3

    .line 558
    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mApplicationContext:Landroid/content/Context;

    .line 560
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    xor-int/2addr v2, v3

    .line 559
    invoke-static {p1, p0, v0, v2}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getDBSBssid(Lcom/android/wifitrackerlib/WifiEntry;Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 558
    invoke-virtual {v5, v1, v4, p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveApWithBssid(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 0
    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 3

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 524
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 525
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isSlaveWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 5

    .line 722
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    .line 726
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiState()I

    move-result v1

    .line 728
    invoke-static {}, Lcom/android/settings/network/NetworkProviderSettings;->isVerboseLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    sget-object v2, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWifiStateChanged called with slave wifi state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 735
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->setPrimaryPreferenceEnabled(Z)V

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updateWifiEntryPreferences()V

    .line 737
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->focusOnBackIcon()V

    .line 738
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 739
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 752
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->removeAccessPointsPreference()V

    .line 753
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->setPrimaryPreferenceEnabled(Z)V

    .line 754
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->removeConnectedAccessPointPreferenceCategory()V

    .line 755
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->focusOnBackIcon()V

    .line 756
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 757
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 744
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->removeAccessPointsPreference()V

    .line 745
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->setPrimaryPreferenceEnabled(Z)V

    .line 746
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->removeConnectedAccessPointPreferenceCategory()V

    .line 747
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 762
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onWifiStateChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected reloadDialog(ILjava/lang/String;)V
    .locals 10

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    if-eqz p2, :cond_1

    .line 490
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mMainHandler:Lcom/android/settings/wifi/MiuiSlaveWifiSettings$MainThreadHandler;

    iget-object v6, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 495
    invoke-static {v1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v9

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLjava/lang/String;Ljava/util/List;)V

    .line 496
    invoke-static {v1}, Lcom/android/settings/wifi/WifiUtils;->getWifiEntrySecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    :cond_2
    return-void

    .line 502
    :cond_3
    sget-object p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    const-string p1, "No scanResult for reload dialog."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method protected updateScanState(Z)V
    .locals 0

    .line 975
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiNearbyApPreference;->startScanAnimation()V

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiNearbyApPreference;->stopScanAnimation()V

    :goto_0
    return-void
.end method

.method protected updateWifiEntryPreferences()V
    .locals 16

    move-object/from16 v0, p0

    .line 589
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 596
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 598
    :cond_1
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isSlaveWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_b

    .line 601
    :cond_2
    iget-object v1, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 602
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-static {v5}, Lcom/android/settingslib/wifi/WifiUtils;->is24GHz(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 603
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v6

    invoke-static {v6}, Lcom/android/settingslib/wifi/WifiUtils;->is5GHz(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 604
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v7

    invoke-static {v7}, Lcom/android/settingslib/wifi/WifiUtils;->is6GHz(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_2

    :cond_5
    move v7, v3

    .line 606
    :goto_2
    iget-object v8, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    const-string v9, "access_points"

    invoke-virtual {v8, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 607
    iget-object v8, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 609
    iget-object v8, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 611
    iget-object v8, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v8, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 612
    iget-object v8, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    iget-object v9, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mNearbyAccessPointPre:Lcom/android/settings/wifi/MiuiNearbyApPreference;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 614
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 616
    iget-object v8, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v8}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v8

    .line 617
    invoke-direct {v0, v8}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->resortAccessPoint(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    .line 622
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->updatePrimaryPreference()V

    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->isSlaveWifiConnecting()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 624
    iget-object v9, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v9

    goto :goto_3

    :cond_6
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_9

    .line 627
    iget-object v10, v0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 629
    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->addConnectedWifiEntryPreferenceCategory()V

    if-eqz v10, :cond_8

    .line 635
    invoke-virtual {v10}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/wifitrackerlib/WifiEntry;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_4

    .line 639
    :cond_7
    invoke-virtual {v10, v9}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->update(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_5

    .line 636
    :cond_8
    :goto_4
    invoke-direct {v0, v9}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->createEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    move-result-object v10

    .line 641
    :goto_5
    invoke-virtual {v10, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 642
    invoke-virtual {v10, v4}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->setWifiConnected(Z)V

    .line 643
    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 644
    iget-object v11, v0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v11, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v10, v4

    goto :goto_6

    :cond_9
    move v10, v3

    .line 646
    :goto_6
    invoke-static {}, Lcom/android/settings/network/NetworkProviderSettings;->isVerboseLoggingEnabled()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 647
    sget-object v11, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "slaveConnectedEntry is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x2

    move v11, v4

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/wifi/MiuiWifiEntryPreference;

    .line 651
    invoke-virtual {v12}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v13

    .line 652
    instance-of v14, v13, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    if-nez v14, :cond_19

    instance-of v14, v13, Lcom/android/settingslib/wifi/PasspointR1WifiEntry;

    if-eqz v14, :cond_b

    goto/16 :goto_a

    .line 654
    :cond_b
    iget-boolean v14, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsDbsDualWifiSupport:Z

    if-nez v14, :cond_c

    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->isDBS()Z

    move-result v14

    if-eqz v14, :cond_c

    goto/16 :goto_a

    .line 656
    :cond_c
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v14

    .line 657
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v15

    .line 658
    iget-boolean v3, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsDbsDualWifiSupport:Z

    if-nez v3, :cond_d

    iget-boolean v3, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsHbsDualWifiSupport:Z

    if-nez v3, :cond_d

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 659
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto/16 :goto_a

    .line 663
    :cond_d
    iget-boolean v3, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsHbsDualWifiSupport:Z

    if-eqz v3, :cond_12

    if-eqz v5, :cond_e

    if-nez v6, :cond_e

    .line 664
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->isOnly24Ghz()Z

    move-result v3

    if-eqz v3, :cond_e

    goto/16 :goto_a

    :cond_e
    if-nez v7, :cond_f

    if-eqz v6, :cond_15

    .line 667
    :cond_f
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->has24Ghz()Z

    move-result v3

    if-nez v3, :cond_15

    .line 669
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResults()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    .line 670
    iget-object v15, v0, Lcom/android/settings/network/NetworkProviderSettings;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 671
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    iget v14, v14, Landroid/net/wifi/ScanResult;->frequency:I

    .line 670
    invoke-virtual {v15, v4, v14}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isCombineBandHbsSupport(II)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v4, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_15

    goto :goto_a

    :cond_12
    if-eqz v5, :cond_13

    if-nez v6, :cond_13

    .line 681
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->isOnly24Ghz()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_a

    :cond_13
    if-nez v7, :cond_14

    if-eqz v6, :cond_15

    .line 682
    :cond_14
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->has24Ghz()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_a

    .line 684
    :cond_15
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 685
    invoke-virtual {v13}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 686
    iget-boolean v4, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mIsDbsDualWifiSupport:Z

    if-eqz v4, :cond_16

    .line 687
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v3

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v3, v4, :cond_16

    goto :goto_a

    :cond_16
    if-nez v10, :cond_17

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->addConnectedWifiEntryPreferenceCategory()V

    const/4 v10, 0x1

    :cond_17
    add-int/lit8 v3, v11, 0x1

    .line 694
    invoke-virtual {v12, v11}, Landroidx/preference/Preference;->setOrder(I)V

    .line 695
    iget-object v4, v0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v12}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v11, v3

    goto :goto_a

    :cond_18
    add-int/lit8 v3, v9, 0x1

    .line 697
    invoke-virtual {v12, v9}, Landroidx/preference/Preference;->setOrder(I)V

    .line 698
    iget-object v4, v0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v12}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 699
    iget-object v4, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v12}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v9, v3

    :cond_19
    :goto_a
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_7

    .line 703
    :cond_1a
    new-instance v1, Lcom/android/settings/wifi/OtherAccessPoint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/wifi/OtherAccessPoint;-><init>(Landroid/content/Context;)V

    const-string v3, "manually_add_network"

    .line 704
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 705
    sget v3, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 706
    invoke-virtual {v1, v9}, Landroidx/preference/Preference;->setOrder(I)V

    .line 707
    iget-object v3, v0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 709
    iget-object v0, v0, Lcom/android/settings/wifi/MiuiSlaveWifiSettings;->mWifiEnablePreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_b
    return-void
.end method
