.class public Lcom/android/settings/network/telephony/MobileNetworkSettings;
.super Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;
.source "MobileNetworkSettings.java"

# interfaces
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# static fields
.field static final KEY_CLICKED_PREF:Ljava/lang/String; = "key_clicked_pref"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig; = null

.field private static mImsMgr:Landroid/telephony/ims/ImsManager; = null

.field private static mSubId:I = -0x1

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

.field private mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

.field private mClickedPrefKey:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mExtTelServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelServiceConnected:Z

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

.field private mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field private mSubInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

.field private mSubscriptionInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$1sHNtXSHEhtUzqYCAkmgx61HHVc(Lcom/android/settings/network/telephony/MobileNetworkSettings;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$2(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RlnNBztPMicUJi-ASOOT4j2s1Lc(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$createPreferenceControllers$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$owdYh_VGIpeXtztSPFMkH-5HXbs(Lcom/android/settings/network/telephony/MobileNetworkSettings;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->lambda$onSubscriptionDetailChanged$1(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/android/settings/network/telephony/MobileNetworkSettings;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExtTelServiceConnected(Lcom/android/settings/network/telephony/MobileNetworkSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelServiceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCiwlanConfig(Lcom/android/settings/network/telephony/MobileNetworkSettings;)Lcom/qti/extphone/CiwlanConfig;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getCiwlanConfig()Lcom/qti/extphone/CiwlanConfig;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetmSubId()I
    .locals 1

    .line 0
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmCiwlanConfig(Lcom/qti/extphone/CiwlanConfig;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 604
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$3;

    sget v1, Lcom/android/settings/R$xml;->mobile_network_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "no_config_mobile_networks"

    .line 236
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubInfoEntityList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelServiceConnected:Z

    .line 136
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelServiceCallback:Lcom/qti/extphone/ServiceCallback;

    return-void
.end method

.method private getCiwlanConfig()Lcom/qti/extphone/CiwlanConfig;
    .locals 2

    .line 152
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;
    .locals 0

    .line 625
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 626
    invoke-static {p1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    return-object p0
.end method

.method private static getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 3

    .line 184
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetworkSettings"

    if-nez v0, :cond_0

    const-string v0, "getImsMmTelManager: subId unusable"

    .line 185
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 188
    :cond_0
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mImsMgr:Landroid/telephony/ims/ImsManager;

    if-nez v0, :cond_1

    const-string v0, "getImsMmTelManager: ImsManager null"

    .line 189
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 192
    :cond_1
    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    return-object v0
.end method

.method static isCiwlanEnabled()Z
    .locals 4

    .line 171
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "NetworkSettings"

    const-string v3, "Failed to get C_IWLAN toggle status"

    .line 178
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method static isCiwlanModeSupported()Z
    .locals 2

    .line 207
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    if-nez v0, :cond_0

    const-string v0, "NetworkSettings"

    const-string v1, "isCiwlanModeSupported: C_IWLAN config null"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/qti/extphone/CiwlanConfig;->isCiwlanModeSupported()Z

    move-result v0

    return v0
.end method

.method static isInCiwlanOnlyMode()Z
    .locals 2

    .line 196
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    if-nez v0, :cond_0

    const-string v0, "NetworkSettings"

    const-string v1, "isInCiwlanOnlyMode: C_IWLAN config null"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    invoke-virtual {v0}, Lcom/qti/extphone/CiwlanConfig;->isCiwlanOnlyInRoam()Z

    move-result v0

    return v0

    .line 203
    :cond_1
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    invoke-virtual {v0}, Lcom/qti/extphone/CiwlanConfig;->isCiwlanOnlyInHome()Z

    move-result v0

    return v0
.end method

.method static isRoaming()Z
    .locals 5

    .line 215
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const-string v2, "NetworkSettings"

    if-nez v0, :cond_0

    const-string v0, "isRoaming: TelephonyManager null"

    .line 216
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 220
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 223
    invoke-virtual {v0, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRoaming()Z

    move-result v1

    goto :goto_0

    :cond_1
    const-string v0, "isRoaming: network registration info null"

    .line 227
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "isRoaming: service state null"

    .line 230
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private synthetic lambda$createPreferenceControllers$0()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 295
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->getSubInfoById(Ljava/lang/String;)Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 296
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 298
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->queryMobileNetworkInfoBySubId(Ljava/lang/String;)Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method

.method private synthetic lambda$onSubscriptionDetailChanged$1(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 503
    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSubscriptionDetailChanged$2(Ljava/util/function/Consumer;)V
    .locals 1

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->redrawPreferenceControllers()V

    return-void
.end method

.method private onSubscriptionDetailChanged()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    .line 508
    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private removeContactDiscoveryDialog(I)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method private showContactDiscoveryDialog()V
    .locals 2

    .line 638
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->getContactDiscoveryFragment(I)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v0

    .line 640
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-nez v1, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showContactDiscoveryDialog, Invalid subId request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onDestroy()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 647
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v1, v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->newInstance(ILjava/lang/CharSequence;)Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;

    move-result-object v0

    .line 652
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 653
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 654
    invoke-static {v1}, Lcom/android/settings/network/telephony/ContactDiscoveryDialogFragment;->getFragmentTag(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 15
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

    move-object v6, p0

    move-object/from16 v7, p1

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 274
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.provider.extra.SUB_ID"

    const-string v2, "NetworkSettings"

    if-nez v0, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSearchableSubscriptionId(Landroid/content/Context;)I

    move-result v3

    .line 279
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display subId from intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent is null, can not get subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from intent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSearchableSubscriptionId(Landroid/content/Context;)I

    move-result v3

    .line 286
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display subId from getArguments(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static/range {p1 .. p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    .line 293
    iget-object v0, v6, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 301
    new-instance v8, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-direct {v8, v0, v1, p0, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    new-instance v9, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    const-string v2, "button_roaming_key"

    .line 304
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    sget v5, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/RoamingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V

    new-instance v10, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;

    const-string v0, "data_preference"

    .line 307
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v10, v7, v0, v1, p0}, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v11, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;

    const-string v0, "calls_preference"

    .line 309
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v11, v7, v0, v1, p0}, Lcom/android/settings/network/telephony/CallsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v12, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;

    const-string/jumbo v0, "sms_preference"

    .line 310
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v12, v7, v0, v1, p0}, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    new-instance v13, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    const-string/jumbo v2, "mobile_data_enable"

    .line 313
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    sget v5, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V

    new-instance v14, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;

    const-string v2, "convert_to_esim"

    .line 315
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    sget v5, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    filled-new-array/range {v2 .. v8}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    .line 301
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "NetworkSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x623

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 539
    sget p0, Lcom/android/settings/R$xml;->mobile_network_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x11

    if-eq p1, p3, :cond_1

    const/16 p3, 0x12

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 569
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 570
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 571
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 559
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    .line 560
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 562
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 320
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 322
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Invalid subId, get the default subscription to show."

    const-string v2, "NetworkSettings"

    .line 323
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid subId request "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 329
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    sput v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show NetworkSettings fragment for subId"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    const-class v0, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mImsMgr:Landroid/telephony/ims/ImsManager;

    .line 336
    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyUtils;->connectExtTelephonyService(Landroid/content/Context;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "android.provider.extra.SUB_ID"

    .line 340
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 344
    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 345
    sput v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    if-ne v2, v1, :cond_2

    .line 353
    invoke-static {v0}, Lcom/android/settings/Settings$MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 354
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->removeContactDiscoveryDialog(I)V

    .line 360
    :cond_3
    invoke-static {v0}, Lcom/android/settings/Settings$MobileNetworkActivity;->doesIntentContainOptInAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->showContactDiscoveryDialog()V

    .line 367
    :cond_4
    const-class v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    .line 368
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    if-eqz v0, :cond_5

    .line 370
    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->init(I)V

    .line 372
    :cond_5
    const-class v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->init(I)V

    .line 373
    const-class v0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->init(I)V

    .line 374
    const-class v0, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/BillingCyclePreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/BillingCyclePreferenceController;->init(I)V

    .line 375
    const-class v0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->init(I)V

    .line 376
    const-class v0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->init(I)V

    .line 377
    const-class v0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->init(I)V

    .line 378
    const-class v0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->init(I)V

    .line 379
    const-class v0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->init(ILandroidx/fragment/app/Fragment;I)V

    .line 381
    const-class v0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/DisableSimFooterPreferenceController;->init(I)V

    .line 382
    const-class v0, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/NrDisabledInDsdsFooterPreferenceController;->init(I)V

    .line 384
    const-class v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    .line 385
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    if-eqz v0, :cond_6

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    .line 389
    new-instance v1, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 390
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    .line 389
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    .line 394
    :cond_6
    const-class p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/RoamingPreferenceController;

    if-eqz p1, :cond_7

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    .line 400
    :cond_7
    const-class p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ApnPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/ApnPreferenceController;->init(I)V

    .line 401
    const-class p1, Lcom/android/settings/network/telephony/UserPLMNPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/UserPLMNPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/UserPLMNPreferenceController;->init(I)V

    .line 402
    const-class p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/CarrierPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/CarrierPreferenceController;->init(I)V

    .line 403
    const-class p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataUsagePreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->init(I)V

    .line 404
    const-class p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 405
    const-class p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->init(I)V

    .line 406
    const-class p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/DataServiceSetupPreferenceController;->init(I)V

    .line 407
    const-class p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enable2gPreferenceController;->init(I)Lcom/android/settings/network/telephony/Enable2gPreferenceController;

    .line 408
    const-class p1, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)V

    .line 410
    const-class p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/WifiCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/WifiCallingPreferenceController;

    move-result-object p1

    .line 413
    const-class v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    .line 414
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/OpenNetworkSelectPagePreferenceController;

    move-result-object v0

    .line 415
    const-class v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 416
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    .line 417
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    sget v3, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v1

    .line 418
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    move-result-object v0

    .line 420
    const-class v1, Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController;

    .line 421
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController;

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 422
    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController;->init(I)Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController;

    move-result-object v1

    .line 423
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController;->addListener(Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController$OnNetworkScanTypeListener;)Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController;

    .line 425
    const-class v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2}, Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;->init(I)Lcom/android/settings/network/telephony/NetworkPreferenceCategoryController;

    move-result-object v1

    filled-new-array {v0}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    .line 426
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 427
    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSystemSelectPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSystemSelectPreferenceController;

    .line 428
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 429
    const-class v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mCdmaSubscriptionPreferenceController:Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;

    .line 430
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    .line 432
    const-class v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    .line 433
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    move-result-object v0

    .line 434
    const-class v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    .line 435
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    move-result-object v1

    .line 436
    const-class v2, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    invoke-virtual {p0, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    filled-new-array {p1, v0, v1}, [Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    .line 437
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 436
    invoke-virtual {v2, p1}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 439
    const-class p1, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enabled5GPreferenceController;->init(I)Lcom/android/settings/network/telephony/Enabled5GPreferenceController;

    .line 440
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 441
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 442
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gCallingPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 443
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 444
    const-class p1, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gAdvancedCallingPreferenceController;

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    move-result-object p1

    .line 445
    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 448
    const-class p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/ContactDiscoveryPreferenceController;->init(Landroidx/fragment/app/FragmentManager;I)V

    .line 449
    const-class p1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    .line 450
    const-class p1, Lcom/android/settings/network/telephony/TransferEsimPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/TransferEsimPreferenceController;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/TransferEsimPreferenceController;->init(ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    .line 451
    const-class p1, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;

    if-eqz p1, :cond_8

    .line 454
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/ConvertToEsimPreferenceController;->init(ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    .line 457
    :cond_8
    const-class p1, Lcom/android/settings/network/telephony/AbstractSubscriptionPreferenceController;

    .line 458
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->useAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 460
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/AbstractSubscriptionPreferenceController;

    .line 461
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Lcom/android/settings/network/telephony/AbstractSubscriptionPreferenceController;->init(I)V

    goto :goto_0

    :cond_9
    return-void
.end method

.method public onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 665
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoMap:Ljava/util/Map;

    iget-object v1, v1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 669
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    .line 677
    :cond_2
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubInfoEntityList:Ljava/util/List;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 678
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 680
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    .line 681
    iget-object v3, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 682
    iget-object v4, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget v4, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v5, -0x1

    const-string v6, "NetworkSettings"

    if-eq v4, v5, :cond_3

    if-ne v3, v4, :cond_3

    .line 684
    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 685
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set subInfo for subId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 687
    :cond_3
    iget-boolean v3, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isDefaultSubscriptionSelection:Z

    if-eqz v3, :cond_4

    .line 688
    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    const-string v2, "Set subInfo to default subInfo."

    .line 689
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onSubscriptionDetailChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "NetworkSettings"

    const-string/jumbo v1, "onCreate:+"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->getPreferenceControllersAsList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->setTelephonyAvailabilityStatus(Ljava/util/Collection;)Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    move-result-object v0

    .line 472
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 474
    invoke-static {v1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 475
    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    const-string/jumbo v2, "user"

    .line 476
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mUserManager:Landroid/os/UserManager;

    .line 477
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    .line 478
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 480
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->close()V

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->onRestoreInstance(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 583
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 584
    sget v0, Lcom/android/settings/R$id;->edit_sim_name:I

    sget v1, Lcom/android/settings/R$string;->mobile_network_sim_name:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080515    # @android:drawable/ic_perm_group_audio_settings

    .line 586
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 587
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 589
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 523
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelServiceConnected:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->disconnectService(Lcom/qti/extphone/ServiceCallback;)V

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 527
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onExpandButtonClick()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/android/settings/network/telephony/AbstractMobileNetworkSettings;->onExpandButtonClick()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 594
    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 595
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->edit_sim_name:I

    if-ne v0, v1, :cond_0

    .line 596
    sget p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-static {p1}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;->newInstance(I)Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    move-result-object p1

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "RenameMobileNetwork"

    .line 596
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 601
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    .line 518
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cdma_system_select_key"

    .line 256
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cdma_subscription_key"

    .line 257
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 258
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_3
    return v1
.end method

.method onRestoreInstance(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_clicked_pref"

    .line 533
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const-string/jumbo v0, "onResume:+"

    const-string v1, "NetworkSettings"

    .line 487
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 489
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    sget v2, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {v0, p0, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    .line 490
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    .line 492
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onResume() subId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mSubId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 549
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_clicked_pref"

    .line 550
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;->mClickedPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
