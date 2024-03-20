.class public Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController2.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;,
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;,
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"

.field static final KEY_DATA_USAGE_HEADER:Ljava/lang/String; = "status_header"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_EAP_SIM_SUBSCRIPTION_PREF:Ljava/lang/String; = "eap_sim_subscription"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "rx_link_speed"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SSID_PREF:Ljava/lang/String; = "ssid"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "tx_link_speed"

.field static final KEY_WIFI_TYPE_PREF:Ljava/lang/String; = "type"


# instance fields
.field private mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

.field private final mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field mDataUsageSummaryPref:Landroidx/preference/Preference;

.field private mDnsPref:Landroidx/preference/Preference;

.field private mEapSimSubscriptionPref:Landroidx/preference/Preference;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mFrequencyPref:Landroidx/preference/Preference;

.field private mGatewayPref:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

.field private mIpAddressPref:Landroidx/preference/Preference;

.field private mIpv6AddressPref:Landroidx/preference/Preference;

.field private mIpv6Category:Landroidx/preference/PreferenceCategory;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMacAddressPref:Landroidx/preference/Preference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mRssiSignalLevel:I

.field private mRxLinkSpeedPref:Landroidx/preference/Preference;

.field private mSecurityPref:Landroidx/preference/Preference;

.field mShowX:Z

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Landroidx/preference/Preference;

.field private mSsidPref:Landroidx/preference/Preference;

.field private mSubnetPref:Landroidx/preference/Preference;

.field mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

.field private mTxLinkSpeedPref:Landroidx/preference/Preference;

.field private mTypePref:Landroidx/preference/Preference;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$8pZd9TrMp4KDJScInEh9wiFUue4(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$96J45skRGMJTXbgLMsub9mxnTeU(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_NbvJvswadtP-OPhp0BjDSFXHQ(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$showConfirmForgetDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XhRTL29CpHXcFCoerGjBlycRX9Q(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$5(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YE5wiIG6PDKGgzCf9i04OpFelUI(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBjGIdWGM23oFNLtW9Qltt49bvc(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w6TrBV5fSnzNJYwqdgLK5yV1U0I(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xZPmZe__yGT-C6QWpyclhq2-Wqw(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$shareNetwork$7()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEapSimSubscriptionPref(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/LinkProperties;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkCapabilities(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLinkProperties(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/LinkProperties;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkCapabilities(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshButtons(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshEntityHeader(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshIpLayerInfo(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const/4 v1, 0x3

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V
    .locals 2

    .line 323
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 198
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 199
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 231
    new-instance v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 325
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 326
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 327
    iput-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 328
    iput-object p4, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 329
    iput-object p5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    .line 330
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    .line 331
    iput-object p7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 332
    iput-object p8, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 333
    iput-object p9, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    .line 334
    iput-object p10, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    .line 336
    iput-object p6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 337
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private canShareNetwork()Z
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p0

    return p0
.end method

.method private canSignIntoNetwork()Z
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    return p0
.end method

.method private forgetNetwork()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->showConfirmForgetDialog()V

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 950
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 951
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private getCaptivePortalVenueInfoUrl()Landroid/net/Uri;
    .locals 1

    .line 417
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 425
    :cond_1
    invoke-virtual {p0}, Landroid/net/CaptivePortalData;->getVenueInfoUrl()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getConnectDisconnectButtonIconResource()I
    .locals 1

    .line 831
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 836
    sget p0, Lcom/android/settings/R$drawable;->ic_settings_close:I

    return p0

    .line 838
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 834
    :cond_1
    sget p0, Lcom/android/settings/R$drawable;->ic_settings_wireless:I

    return p0
.end method

.method private getConnectDisconnectButtonTextResource()I
    .locals 1

    .line 818
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 822
    sget p0, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    return p0

    .line 826
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 824
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_connecting:I

    return p0

    .line 820
    :cond_2
    sget p0, Lcom/android/settings/R$string;->wifi_connect:I

    return p0
.end method

.method private getExpiryTimeSummary()Ljava/lang/String;
    .locals 6

    .line 455
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/CaptivePortalData;->getExpiryTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return-object v1

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 465
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 466
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    .line 464
    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 468
    invoke-virtual {v0, v2}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    const-wide/16 v3, 0x2

    .line 472
    invoke-virtual {v0, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_time_remaining:I

    .line 476
    invoke-static {v0, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-double v2, v2

    const/4 v0, 0x0

    .line 474
    invoke-static {p0, v2, v3, v0, v0}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 481
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->wifi_expiry_time:I

    sget-object v1, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    .line 482
    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 481
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private getMacAddressTitle()I
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 778
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 779
    sget p0, Lcom/android/settings/R$string;->wifi_advanced_randomized_mac_address_title:I

    goto :goto_0

    .line 780
    :cond_0
    sget p0, Lcom/android/settings/R$string;->wifi_advanced_randomized_mac_address_disconnected_title:I

    :goto_0
    return p0

    .line 782
    :cond_1
    sget p0, Lcom/android/settings/R$string;->wifi_advanced_device_mac_address_title:I

    return p0
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 0

    .line 900
    :try_start_0
    invoke-static {p0}, Lcom/android/net/module/util/Inet4AddressUtils;->getPrefixMaskAsInet4Address(I)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->forgetNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroid/view/View;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->signIntoNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$2(Landroid/view/View;)V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->connectDisconnectNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$3(Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->shareNetwork()V

    return-void
.end method

.method private synthetic lambda$shareNetwork$7()V
    .locals 0

    .line 999
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->launchWifiDppConfiguratorActivity()V

    return-void
.end method

.method private synthetic lambda$showConfirmForgetDialog$6(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 960
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 962
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove Passpoint configuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDetailsPrefCtrl2"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 965
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x89

    .line 964
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 966
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateCaptivePortalButton$4(Landroid/view/View;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->signIntoNetwork()V

    return-void
.end method

.method private synthetic lambda$updateCaptivePortalButton$5(Landroid/net/Uri;Landroid/view/View;)V
    .locals 1

    .line 407
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 408
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 410
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity()V
    .locals 7

    .line 979
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WifiDetailsPrefCtrl2"

    const-string v0, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 983
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/16 v3, 0x6ae

    const/16 v4, 0x63b

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 991
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
    .locals 12

    .line 306
    new-instance v11, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    new-instance v9, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-direct {v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;-><init>()V

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V

    return-object v11
.end method

.method private redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->wifi_detail_page_header_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 610
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 611
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-eq v2, v0, :cond_1

    .line 613
    :cond_0
    const-class v1, Landroid/graphics/drawable/VectorDrawable;

    .line 614
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 619
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 622
    invoke-static {p1, v0, v0}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 625
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 628
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x1010036    # @android:attr/textColorPrimary

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private refreshButtons()V
    .locals 8

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canForgetNetwork()Z

    move-result v0

    .line 796
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    move-result v1

    .line 797
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 798
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 799
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canShareNetwork()Z

    move-result v5

    .line 801
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 802
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 805
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v2, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 806
    invoke-virtual {v7}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v7

    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v4

    .line 805
    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 807
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 808
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 809
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 810
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 811
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshEapSimSubscription()V
    .locals 11

    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 689
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v1, :cond_1

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 699
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    .line 700
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 702
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 703
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 702
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->fineSubscriptionInfo(ILjava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 705
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 706
    invoke-static {v1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 705
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 711
    :cond_3
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 712
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->wifi_no_related_sim_card:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 717
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    if-nez v1, :cond_5

    .line 718
    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler-IA;)V

    iput-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    .line 720
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 721
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "carrier_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "carrier_id=?"

    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 726
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 721
    invoke-virtual/range {v3 .. v10}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private refreshEntityHeader()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 490
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 491
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getExpiryTimeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 492
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private refreshFrequency()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getBandString()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshIpLayerInfo()V
    .locals 9

    .line 844
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 857
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 859
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 860
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 861
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 862
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 863
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_1

    .line 864
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 870
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 871
    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 872
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_4

    .line 873
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 879
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda6;-><init>()V

    .line 880
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 881
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 884
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 885
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v6}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 890
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 891
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 892
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 894
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void

    .line 846
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 847
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 848
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 849
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 850
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshMacAddress()V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 757
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getMacAddressTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "02:00:00:00:00:00"

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 762
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshPage()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const-string v1, "Update UI!"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    .line 542
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    .line 545
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshRssiViews()V

    .line 547
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshFrequency()V

    .line 549
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshSecurity()V

    .line 551
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshTxSpeed()V

    .line 553
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshRxSpeed()V

    .line 555
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    .line 557
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshSsid()V

    .line 559
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEapSimSubscription()V

    .line 561
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshMacAddress()V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshWifiType()V

    return-void
.end method

.method private refreshRssiViews()V
    .locals 4

    .line 567
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 580
    iput v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    return-void

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    .line 586
    iget v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mShowX:Z

    if-ne v2, v1, :cond_1

    return-void

    .line 589
    :cond_1
    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 590
    iput-boolean v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mShowX:Z

    .line 591
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->getIcon(ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 595
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 599
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x1010429    # @android:attr/colorControlNormal

    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 601
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 604
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshRxSpeed()V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 662
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    .line 668
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->rx_link_speed:I

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 670
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 669
    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 663
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshSecurity()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshSsid()V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 678
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private refreshTxSpeed()V
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 649
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    .line 655
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 656
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->tx_link_speed:I

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 657
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 656
    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 650
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshWifiType()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getStandardString()Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 770
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 772
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private setupEntityHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "connection_header"

    .line 429
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 431
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 432
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo v0, "status_header"

    .line 433
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    .line 434
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 435
    new-instance p1, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 436
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 438
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getAllNetworkKeys()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    return-void

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 444
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    sget v2, Lcom/android/settings/R$id;->entity_header:I

    .line 445
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 443
    invoke-static {p1, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 447
    sget p1, Lcom/android/settings/R$id;->entity_header_icon:I

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 449
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 451
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method private shareNetwork()V
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 1007
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x3f0

    .line 1006
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    return-void
.end method

.method private updateCaptivePortalButton()Z
    .locals 3

    .line 396
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getCaptivePortalVenueInfoUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->wifi_sign_in_button_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_sign_in:I

    .line 399
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 401
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canSignIntoNetwork()Z

    move-result p0

    return p0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v2, Lcom/android/settings/R$string;->wifi_venue_website_button_text:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_settings_sign_in:I

    .line 405
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;)V

    .line 406
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 413
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 786
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 787
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 788
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 790
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private usingDataUsageHeader(Landroid/content/Context;)Z
    .locals 0

    const-string/jumbo p0, "settings_wifi_details_datausage_header"

    .line 1056
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canForgetNetwork()Z
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 919
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canModifyNetwork()Z
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 911
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method connectDisconnectNetwork()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 353
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->setupEntityHeader(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "buttons"

    .line 357
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    sget v1, Lcom/android/settings/R$string;->forget:I

    .line 358
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_delete:I

    .line 359
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 360
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_sign_in_button_text:I

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_settings_sign_in:I

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 363
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 365
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 366
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->share:I

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->ic_qrcode_24dp:I

    .line 368
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 369
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 370
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    const-string/jumbo v0, "signal_strength"

    .line 372
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "tx_link_speed"

    .line 373
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "rx_link_speed"

    .line 374
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 375
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "security"

    .line 376
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "ssid"

    .line 378
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "eap_sim_subscription"

    .line 379
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 380
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 381
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 382
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "subnet_mask"

    .line 383
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "dns"

    .line 384
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "type"

    .line 385
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const-string v0, "ipv6_category"

    .line 387
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const-string v0, "ipv6_addresses"

    .line 388
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    return-void
.end method

.method fineSubscriptionInfo(ILjava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    .line 734
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 737
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne p3, v1, :cond_2

    .line 738
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    if-nez p2, :cond_0

    .line 742
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    if-ne p1, v1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onConnectResult(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1087
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_connected_to_message:I

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1088
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1087
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1089
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1090
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1091
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_not_in_range_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1093
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1095
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_failed_connect_message:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1097
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onDisconnectResult(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1107
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1109
    sget v0, Lcom/android/settings/R$string;->wifi_disconnected_from:I

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1110
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1109
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1111
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "WifiDetailsPrefCtrl2"

    const-string p1, "Disconnect Wi-Fi network failed"

    .line 1114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onForgetResult(I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "WifiDetailsPrefCtrl2"

    const-string v0, "Forget Wi-Fi network failed"

    .line 1124
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1129
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/util/Pair;

    const/16 v1, 0x89

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1130
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 519
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 525
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    .line 526
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 2

    .line 1013
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 1075
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    .line 1078
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->refreshPreferences()V

    return-void
.end method

.method protected showConfirmForgetDialog()V
    .locals 3

    .line 957
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->forget:I

    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 958
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->cancel:I

    const/4 v1, 0x0

    .line 968
    invoke-virtual {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->wifi_forget_dialog_title:I

    .line 969
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->forget_passpoint_dialog_message:I

    .line 970
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 971
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 972
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method updateNetworkInfo()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 501
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 502
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 506
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 507
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 508
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 509
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 510
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    :goto_0
    return-void
.end method
