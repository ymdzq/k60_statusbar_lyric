.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Lcom/android/settings/wifi/EditPreferenceFragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# instance fields
.field private mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHhapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mIsActivityCreated:Z

.field private mIsAutoConnect:Z

.field private mIsDismiss:Z

.field private mIsSavedInstance:Z

.field private mIsSlaveWifi:Z

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

.field private mModifyConfig:Landroid/net/wifi/WifiConfiguration;

.field private mModifyPasswordListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mOriginalRandomizationValue:I

.field private mPreRefreshWifiConnected:Z

.field private mPrefixLength:I

.field private mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

.field private mRefrshPage:Z

.field private mRootView:Landroid/view/View;

.field private mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mSubnet:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWifiDetailGridMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/wifi/WifiDetailInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$0NfNoZg2nog28aiOB24ZUVhMfLQ(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->lambda$updatePasspointWificonfig$2(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Pou6cvB41QY91jCflXGsRii91-A(Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->lambda$adaptSoftInput$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vjTWft_X72-WHB4PIVlrAP9DvQc(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->lambda$afterTextChanged$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAmlMiuiWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/AmlMiuiWifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHhapticFeedbackCompat(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lmiuix/util/HapticFeedbackCompat;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHhapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDismiss(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsDismiss:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiWifiPrivacyUtils(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModifyConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mModifyConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkId(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkInfo(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/NetworkInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrivacySettingsSpinner(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lmiuix/appcompat/widget/Spinner;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectWifiConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsAutoConnect(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsAutoConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDismiss(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsDismiss:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmModifyConfig(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mModifyConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static bridge synthetic -$$Nest$misPasspoint(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowWifiDialog(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->showWifiDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$musePrimaryWifiInfo(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->usePrimaryWifiInfo()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/EditPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsDismiss:Z

    .line 176
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 177
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 179
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 182
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    .line 183
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 199
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSubnet:Ljava/lang/String;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrefixLength:I

    .line 201
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRefrshPage:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPreRefreshWifiConnected:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsActivityCreated:Z

    .line 1039
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$5;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mModifyPasswordListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    return-void
.end method

.method private adaptSoftInput(Landroid/app/Activity;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    :cond_0
    if-eqz p0, :cond_1

    .line 293
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiuiWifiDetailFragment"

    const-string p1, "Resize decorView layout error!"

    .line 313
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private dimissWifiDialog()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDialog:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1064
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-void
.end method

.method private formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 856
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 858
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 859
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 860
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 861
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrefixLength:I

    .line 862
    invoke-static {v3}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSubnet:Ljava/lang/String;

    goto :goto_0

    .line 864
    :cond_2
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    .line 865
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 869
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 657
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSubnetMask(I)Ljava/lang/String;
    .locals 9

    .line 671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    const/16 v4, 0x8

    if-ge p1, v4, :cond_1

    move v5, p1

    goto :goto_2

    :cond_1
    move v5, v4

    :goto_2
    rsub-int/lit8 v6, v5, 0x8

    add-int/lit8 v5, v5, -0x1

    move v7, v1

    :goto_3
    if-ltz v5, :cond_2

    shl-int v8, v3, v5

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_2
    if-lez v6, :cond_3

    shl-int/2addr v7, v6

    .line 692
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    .line 693
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt p1, v4, :cond_4

    add-int/lit8 p1, p1, -0x8

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 701
    :cond_5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initManageXiaomRouter()V
    .locals 3

    .line 1068
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1069
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTargetScanResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1070
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    invoke-static {v0}, Lcom/android/settings/wifi/XiaomiRouterUtils;->isXiaomiRouter(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->manage_xiaomi_router:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1076
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1077
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$6;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 7

    .line 914
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 916
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    const-string p0, "MiuiWifiDetailFragment"

    const-string v0, "initPreference but config is null, return!"

    .line 917
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 921
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 925
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result v3

    if-nez v3, :cond_2

    .line 926
    sget v3, Lcom/android/settings/R$id;->prefs_container:I

    invoke-direct {p0, v3, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 927
    new-instance v3, Lcom/android/settings/wifi/MiuiWifiDetailPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/wifi/MiuiWifiDetailPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "wifi_detail_modify"

    .line 928
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 929
    sget v4, Lcom/android/settings/R$string;->wifi_menu_modify:I

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    .line 930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->wifi_detail_modify_color:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/MiuiWifiDetailPreference;->setTitleColorRes(I)V

    .line 931
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    xor-int/lit8 v4, v0, 0x1

    .line 933
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez v0, :cond_2

    .line 935
    new-instance v4, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$2;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 947
    :cond_2
    sget-boolean v3, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    const-string v5, "CMCC"

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 948
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    .line 949
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_4

    .line 950
    sget v3, Lcom/android/settings/R$id;->prefs_container:I

    invoke-direct {p0, v3, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 951
    new-instance v3, Lcom/android/settings/wifi/MiuiWifiDetailPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/settings/wifi/MiuiWifiDetailPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "wifi_detail_delete"

    .line 952
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 953
    sget v5, Lcom/android/settings/R$string;->wifi_menu_forget:I

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setTitle(I)V

    .line 954
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/android/settings/R$color;->wifi_detail_delete_color:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/wifi/MiuiWifiDetailPreference;->setTitleColorRes(I)V

    .line 955
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    xor-int/2addr v0, v4

    .line 957
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 958
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$3;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1017
    :cond_4
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    if-eq v0, v1, :cond_5

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_5

    .line 1018
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isConnectedOrConnecting(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1019
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 1020
    new-instance v0, Lcom/android/settings/wifi/MiuiWifiDetailPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "wifi_detail_disconnect"

    .line 1021
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1022
    sget v1, Lcom/android/settings/R$string;->button_disconnect_network:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1023
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->wifi_detail_disconnect_color:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailPreference;->setTitleColorRes(I)V

    .line 1024
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1026
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$4;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    return-void
.end method

.method private initUI()V
    .locals 11

    .line 349
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initPreference()V

    .line 350
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initManageXiaomRouter()V

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-virtual {v1}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->isAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->privacy_settings_fields:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ip_settings:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 360
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->wifi_ip_settings:I

    .line 361
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 360
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    sget v3, Lcom/android/settings/R$string;->wifi_ip_settings:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->proxy_settings:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 365
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->wifi_proxy_settings:I

    .line 366
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 365
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 367
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    sget v3, Lcom/android/settings/R$string;->proxy_settings_title:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->privacy_settings:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 370
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->wifi_privacy_entries:I

    .line 371
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 370
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/MiuiUtils;->setSpinnerAdapter(Landroid/content/Context;[Ljava/lang/String;Lmiuix/appcompat/widget/Spinner;)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    sget v3, Lcom/android/settings/R$string;->wifi_privacy_settings:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->bg_spinner_parent:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    .line 375
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v3

    .line 376
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 377
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 378
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/MiuiUtils;->setSpinnerDisplayLocation(Lmiuix/appcompat/widget/Spinner;I)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->info:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 382
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 384
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_2

    .line 385
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-eqz v4, :cond_3

    .line 387
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v3

    .line 390
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->usePrimaryWifiInfo()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 391
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 390
    invoke-static {v6, v3, v1, v5, v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 393
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 392
    invoke-static {v6, v3, v1, v5, v4}, Lcom/android/settingslib/wifi/AccessPoint;->getSlaveSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v6, Lcom/android/settings/R$drawable;->ic_wifi_status_icon:I

    sget v7, Lcom/android/settings/R$string;->wifi_status:I

    invoke-direct {v5, v6, v7, v1}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v1, "wifi_status"

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiStandard()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/16 v6, 0x8

    if-eq v1, v4, :cond_6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    if-eq v1, v5, :cond_6

    if-ne v1, v6, :cond_a

    :cond_6
    if-ne v1, v6, :cond_8

    .line 405
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsSlaveWifi:Z

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_4

    :cond_7
    const/4 v1, 0x7

    .line 412
    :cond_8
    :goto_4
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string/jumbo v5, "wifi_generation"

    if-nez v4, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "en"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 413
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v7, Lcom/android/settings/R$drawable;->ic_wifi_generation_icon:I

    sget v8, Lcom/android/settings/R$string;->wifi_generation_title:I

    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v9, "Generation %1$d"

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    .line 413
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 418
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v7, Lcom/android/settings/R$drawable;->ic_wifi_generation_icon:I

    sget v8, Lcom/android/settings/R$string;->wifi_generation_title:I

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    sget v10, Lcom/android/settings/R$string;->wifi_generation_status:I

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    .line 418
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const/4 v4, -0x1

    if-eqz v1, :cond_b

    .line 427
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v5

    if-eq v5, v4, :cond_b

    .line 428
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v6, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v7, Lcom/android/settings/R$drawable;->ic_wifi_speed_icon:I

    sget v8, Lcom/android/settings/R$string;->wifi_speed:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Mbps"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v1, "wifi_detail_speed"

    .line 428
    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v4, :cond_d

    .line 437
    sget v6, Lcom/android/settings/R$array;->wifi_signal:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 438
    array-length v6, v0

    if-lt v1, v6, :cond_c

    .line 439
    array-length v1, v0

    sub-int/2addr v1, v5

    .line 441
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v7, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v8, Lcom/android/settings/R$drawable;->ic_wifi_strength_icon:I

    sget v9, Lcom/android/settings/R$string;->wifi_signal:I

    aget-object v0, v0, v1

    invoke-direct {v7, v8, v9, v0}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v0, "wifi_detail_signal"

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_d
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v6, Lcom/android/settings/R$drawable;->ic_network_security_icon:I

    sget v7, Lcom/android/settings/R$string;->wifi_security:I

    iget-object v8, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 451
    invoke-virtual {v8, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v8}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v6, "wifi_detail_security"

    .line 448
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_14

    .line 455
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v1

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v6, :cond_e

    .line 456
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v5}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_6

    .line 458
    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 460
    :goto_6
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v6, :cond_f

    .line 461
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v5}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 462
    :cond_f
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v1

    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v1, v5, :cond_10

    .line 463
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    goto :goto_7

    .line 465
    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 469
    :goto_7
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v4, :cond_14

    .line 473
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 474
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v1

    .line 475
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v6, Lcom/android/settings/R$drawable;->ic_network_ip_icon:I

    sget v7, Lcom/android/settings/R$string;->wifi_ip_address:I

    invoke-direct {v5, v6, v7, v1}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v6, "wifi_detail_ip"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v4, v5, :cond_11

    .line 481
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 482
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 483
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getSubnetMask(I)Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 487
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->usePrimaryWifiInfo()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    goto :goto_8

    .line 488
    :cond_12
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_13

    .line 491
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSubnet:Ljava/lang/String;

    .line 492
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_13
    move-object v0, v3

    .line 497
    :goto_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 498
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v5, Lcom/android/settings/R$drawable;->ic_subnet_mask_icon:I

    sget v6, Lcom/android/settings/R$string;->wifi_subnet_mask:I

    invoke-direct {v4, v5, v6, v3}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v3, "wifi_detail_subnet_mask"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    new-instance v3, Lcom/android/settings/wifi/WifiDetailInfoBean;

    sget v4, Lcom/android/settings/R$drawable;->ic_router_icon:I

    sget v5, Lcom/android/settings/R$string;->wifi_gateway:I

    invoke-direct {v3, v4, v5, v0}, Lcom/android/settings/wifi/WifiDetailInfoBean;-><init>(IILjava/lang/String;)V

    const-string/jumbo v0, "wifi_detail_gateway"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_14
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->network_description_grid_linearlayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailLinearLayout;

    .line 513
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailLinearLayout;->initWifiDetailGrid(Ljava/util/HashMap;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDetailGridMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_15

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_fields_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->wifi_advanced_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->showProxyFields()V

    .line 520
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->showIpConfigFields()V

    .line 521
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->update(Lmiuix/appcompat/widget/Spinner;)V

    .line 522
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_15
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 6

    .line 710
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 716
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    .line 718
    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 719
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v4, :cond_3

    .line 720
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 721
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 728
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 729
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v5, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 730
    iput-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHttpProxy:Landroid/net/ProxyInfo;

    if-ne v4, v2, :cond_5

    .line 731
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 732
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 733
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 735
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 739
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :try_start_1
    invoke-static {v0, v3, v4}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v5, v1

    .line 742
    :catch_1
    sget v3, Lcom/android/settings/R$string;->proxy_error_invalid_port:I

    :goto_2
    if-nez v3, :cond_4

    const-string v1, ","

    .line 746
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 745
    invoke-static {v0, v5, v1}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHttpProxy:Landroid/net/ProxyInfo;

    move v1, v2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/4 v3, 0x2

    if-ne v4, v3, :cond_8

    .line 751
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 752
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 753
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 754
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v1

    .line 757
    :cond_6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7

    return v1

    .line 761
    :cond_7
    invoke-static {v0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHttpProxy:Landroid/net/ProxyInfo;

    move v0, v2

    .line 764
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v3, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v1, v3, :cond_9

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne p0, v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    return v2
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 0

    .line 876
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

.method private isApConnected()Z
    .locals 1

    .line 1091
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPasspoint()Z
    .locals 0

    .line 1260
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$adaptSoftInput$0(Landroid/view/View;)V
    .locals 8

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 296
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 298
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int v0, v1, v2

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current screen height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Current covered height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiWifiDetailFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v2, v0

    int-to-double v4, v1

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 304
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$afterTextChanged$1()V
    .locals 0

    .line 908
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->enableSubmitIfAppropriate()V

    return-void
.end method

.method private synthetic lambda$updatePasspointWificonfig$2(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 1269
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1270
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasspointWifiEntry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1270
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private operatorCustomUi()V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/operatorutils/OperatorFactory;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/operatorutils/Operator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1165
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/operatorutils/Operator;->isOpCustomization(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1166
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/operatorutils/Operator;->opCustomizationView(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshPage()V
    .locals 2

    .line 1238
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getPreferenceScreenResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MiuiWifiDetailFragment"

    const-string v1, "Add preference screen res failed!"

    .line 1240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->updatePasspointWificonfig()V

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->updateAutoConnect()V

    .line 1245
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1247
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setIsEphemeral(Z)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setIsPasspoint(Z)V

    .line 1249
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->getRandomizationValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mOriginalRandomizationValue:I

    .line 1252
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initUI()V

    .line 1253
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->operatorCustomUi()V

    .line 1254
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->enableSubmitIfAppropriate()V

    const/4 v0, 0x0

    .line 1255
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRefrshPage:Z

    .line 1256
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPreRefreshWifiConnected:Z

    return-void
.end method

.method private setVisibility(II)V
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 666
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showIpConfigFields()V
    .locals 5

    .line 582
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ip_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 588
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 589
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->ipaddress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAddressView:Landroid/widget/TextView;

    .line 592
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 593
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->gateway:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mGatewayView:Landroid/widget/TextView;

    .line 594
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 595
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->network_prefix_length:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 597
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 598
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns1View:Landroid/widget/TextView;

    .line 599
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 600
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dns2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns2View:Landroid/widget/TextView;

    .line 601
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mLinkProperties:Landroid/net/LinkProperties;

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 607
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 608
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 609
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_9

    .line 616
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 618
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 619
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    .line 620
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :cond_4
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 625
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :cond_5
    invoke-virtual {v0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 629
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 630
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 633
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 635
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 638
    iget v1, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 639
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 640
    iget v0, v0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrefixLength:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 651
    :cond_8
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->staticip:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method private showProxyFields()V
    .locals 5

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->proxy_settings_fields:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v2, v3, :cond_2

    .line 537
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 538
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 539
    sget v1, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 540
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_hostname:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyHostView:Landroid/widget/TextView;

    .line 542
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_port:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPortView:Landroid/widget/TextView;

    .line 544
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->proxy_exclusionlist:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 546
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 554
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 557
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 558
    sget v2, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 559
    sget v2, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 560
    sget v2, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 562
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPacView:Landroid/widget/TextView;

    .line 564
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 567
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 569
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 573
    :cond_4
    sget v0, Lcom/android/settings/R$id;->proxy_warning_limited_support:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 574
    sget v0, Lcom/android/settings/R$id;->proxy_fields:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    .line 575
    sget v0, Lcom/android/settings/R$id;->proxy_pac:I

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setVisibility(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method private showWifiDialog()V
    .locals 8

    .line 1053
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->dimissWifiDialog()V

    .line 1054
    new-instance v7, Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mModifyPasswordListener:Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZ)V

    iput-object v7, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDialog:Lcom/android/settings/wifi/WifiDialog2;

    const v0, 0x1040013    # @android:string/yes

    .line 1056
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/settings/wifi/WifiDialog2;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiDialog:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateAutoConnect()V
    .locals 3

    .line 1095
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1099
    :cond_0
    sget v1, Lcom/android/settings/R$id;->auto_connect:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1100
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1104
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    sget v1, Lcom/android/settings/R$id;->auto_connect_slidingButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    .line 1106
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsSavedInstance:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsAutoConnect:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsAutoConnect:Z

    .line 1107
    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 1108
    new-instance v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$7;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_3
    :goto_1
    const/16 p0, 0x8

    .line 1101
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateNetworkInfo()V
    .locals 2

    .line 1201
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1202
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->usePrimaryWifiInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getSlaveWifiCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1209
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_1

    .line 1210
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1211
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1212
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1214
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1215
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1216
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_1
    return-void
.end method

.method private updatePasspointWificonfig()V
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    instance-of v0, v0, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    if-eqz v0, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1267
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1268
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    .line 1269
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1272
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1275
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private usePrimaryWifiInfo()Z
    .locals 3

    .line 1221
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsSlaveWifi:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getWifiSlaveConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1225
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 1226
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isMloBothActive()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 5

    .line 771
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 773
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0

    .line 775
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 776
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 781
    :cond_2
    new-instance v2, Landroid/net/StaticIpConfiguration$Builder;

    invoke-direct {v2}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 782
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 783
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 784
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 785
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    move-result-object v2

    .line 790
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_b

    const/16 v4, 0x20

    if-le v3, v4, :cond_3

    goto/16 :goto_1

    .line 794
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 805
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :goto_0
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return p1

    .line 807
    :cond_4
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_5

    .line 809
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_0

    .line 811
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 812
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_gateway:I

    goto :goto_0

    .line 814
    :cond_6
    invoke-virtual {v2, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 817
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 821
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 823
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto :goto_0

    .line 825
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_8

    .line 827
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto :goto_0

    .line 829
    :cond_8
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 834
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    if-nez v0, :cond_9

    .line 837
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_dns:I

    goto :goto_0

    .line 839
    :cond_9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_a
    invoke-virtual {v2, v3}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 848
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    return v1

    .line 792
    :cond_b
    :goto_1
    :try_start_3
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_network_prefix_length:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 799
    :catch_0
    :try_start_4
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    goto :goto_0

    .line 797
    :catch_1
    sget p1, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 848
    :goto_2
    invoke-virtual {v2}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 849
    throw p1

    .line 777
    :cond_c
    :goto_3
    sget p0, Lcom/android/settings/R$string;->wifi_ip_settings_invalid_ip_address:I

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 907
    new-instance p1, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 2

    .line 705
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ipAndProxyFieldsAreValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/EditPreferenceFragment;->onEditStateChange(Z)V

    return-void
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 320
    sget p0, Lcom/android/settings/R$xml;->wifi_detail_bottom:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    sget v1, Lcom/android/settings/R$string;->network_detail:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isConnectedOrConnecting(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1125
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_1

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 1126
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$DetailedState;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12

    .line 225
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsActivityCreated:Z

    if-eqz p1, :cond_0

    const-string v1, "is_autoConnect"

    .line 228
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsAutoConnect:Z

    .line 229
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsSavedInstance:Z

    .line 231
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "is_salve_wifi"

    const/4 v2, 0x0

    .line 232
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsSlaveWifi:Z

    .line 233
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mView:Landroid/view/View;

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mCm:Landroid/net/ConnectivityManager;

    .line 237
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "AmlMiuiWifiService"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/AmlMiuiWifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 241
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-nez p1, :cond_2

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 243
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiWifiDetailFragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsSlaveWifi:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "slave"

    goto :goto_0

    :cond_1
    const-string v2, "primary"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {p1, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 246
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 247
    new-instance v6, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment$1;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Ljava/time/ZoneId;)V

    .line 253
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v1

    .line 256
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v4, Landroid/os/Handler;

    .line 258
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 259
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v7, 0x3a98

    const-wide/16 v9, 0x2710

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v11, "key_chosen_wifientry_key"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-interface/range {v1 .. v11}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkDetailsTracker:Lcom/android/wifitrackerlib/NetworkDetailsTracker;

    if-eqz p1, :cond_3

    .line 266
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/NetworkDetailsTracker;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 267
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 268
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->updateNetworkInfo()V

    .line 271
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 274
    :cond_4
    new-instance p1, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 277
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setIsEphemeral(Z)V

    .line 278
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->setIsPasspoint(Z)V

    .line 279
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mNetworkId:I

    .line 281
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mMiuiWifiPrivacyUtils:Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;

    invoke-virtual {p1}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->getRandomizationValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mOriginalRandomizationValue:I

    .line 282
    new-instance p1, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHhapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 283
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->initUI()V

    .line 284
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->operatorCustomUi()V

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->adaptSoftInput(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 214
    sget v0, Lcom/android/settings/R$layout;->wifi_edit_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRootView:Landroid/view/View;

    .line 215
    sget v1, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 217
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p1, 0x8

    .line 218
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->dimissWifiDialog()V

    .line 339
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/android/settings/wifi/EditPreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 885
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 886
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->showProxyFields()V

    goto :goto_0

    .line 887
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpSettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    if-ne p1, p2, :cond_1

    .line 888
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->showIpConfigFields()V

    .line 890
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 325
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->updateAutoConnect()V

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public onSave(Z)V
    .locals 3

    .line 1131
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1132
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mModifyConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    if-eqz v0, :cond_3

    .line 1134
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1135
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 1136
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 1137
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1139
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1140
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsAutoConnect:Z

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 1142
    :cond_1
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 1143
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mSelectWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 1144
    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1145
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1147
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPrivacySettingsSpinner:Lmiuix/appcompat/widget/Spinner;

    .line 1149
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 1148
    invoke-static {v1}, Lcom/android/settings/wifi/details/WifiPrivacyPreferenceController;->translatePrefValueToMacRandomizedValue(I)I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    const-string v1, "config"

    .line 1150
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1152
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mOriginalRandomizationValue:I

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-static {v1, v0}, Lcom/android/settings/wifi/MiuiWifiPrivacyUtils;->isSamePrefValue(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    const-string v1, "mac_random_changed"

    .line 1151
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 1156
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/EditPreferenceFragment;->onSave(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 332
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_autoConnect"

    .line 333
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsAutoConnect:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUpdated()V
    .locals 2

    .line 1191
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mPreRefreshWifiConnected:Z

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->isApConnected()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1192
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRefrshPage:Z

    .line 1194
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mRefrshPage:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->mIsActivityCreated:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1195
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->updateNetworkInfo()V

    .line 1196
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->refreshPage()V

    :cond_1
    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    .line 0
    return-void
.end method
