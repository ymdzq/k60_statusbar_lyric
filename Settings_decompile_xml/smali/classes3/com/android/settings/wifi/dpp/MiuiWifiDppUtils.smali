.class public Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;
.super Ljava/lang/Object;
.source "MiuiWifiDppUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MiuiWifiDppUtils"


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

.field private mHandler:Landroid/os/Handler;

.field private mIsEasyConnectCallback:Z

.field private mIsShareWifi:Z

.field private mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

.field private mTimesOfReStartEasyConnect:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

.field private mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;


# direct methods
.method public static synthetic $r8$lambda$PJ1D-r3_buyR2DiFOPAs_Ux7f3k(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->lambda$new$0(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDppModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEasyConnectCallback(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mIsEasyConnectCallback:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mIsShareWifi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharingDialog(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mTimesOfReStartEasyConnect:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNetworkConfig(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiQrCode(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)Lcom/android/settings/wifi/dpp/WifiQrCode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectivityManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDppModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEasyConnectCallback(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mIsEasyConnectCallback:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mIsShareWifi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimesOfReStartEasyConnect(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mTimesOfReStartEasyConnect:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdppToast(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->dppToast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSharingDialog(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->showSharingDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiDppConfiguratorInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->startWifiDppConfiguratorInitiator()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mIsShareWifi:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mIsEasyConnectCallback:Z

    .line 78
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mTimesOfReStartEasyConnect:I

    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSlaveWifiUtils:Lcom/android/settingslib/wifi/SlaveWifiUtils;

    .line 85
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 86
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 88
    new-instance p1, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback-IA;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->initHandler()V

    return-void
.end method

.method private dppToast(Ljava/lang/String;)V
    .locals 1

    .line 392
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 396
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private initHandler()V
    .locals 1

    .line 321
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$5;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;Ljava/lang/Integer;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 99
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 101
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->onConfiguratorSuccess(I)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 105
    iput-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedSsid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedChannels()Landroid/util/SparseArray;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getBandArray()[I

    move-result-object p0

    .line 107
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$EasyConnectConfiguratorStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    :goto_0
    return-void
.end method

.method private setAlphaFolme(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 388
    :cond_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    sget-object v0, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v0}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-interface {p0, v1, v0}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private showSharingDialog()V
    .locals 4

    .line 238
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 239
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 240
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->miui_wifi_dpp_sharing_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 241
    sget v2, Lcom/android/settings/R$id;->sharing_anim_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 242
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->setAlphaFolme(Landroid/view/View;)V

    .line 243
    sget v2, Lcom/android/settings/R$id;->icon_sharing:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 244
    sget v3, Lcom/android/settings/R$drawable;->dpp_share_loading:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->startSharingAnimation(Landroid/widget/ImageView;)V

    .line 246
    sget v2, Lcom/android/settings/R$id;->dpp_sharing_wifi:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 247
    sget v3, Lcom/android/settings/R$string;->dpp_sharing_wifi_summary:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 248
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 251
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 254
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x821

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startSharingAnimation(Landroid/widget/ImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method private startWifiDppConfiguratorInitiator()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getHiddenSsid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mSharingDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->dpp_not_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->dppToast(Ljava/lang/String;)V

    .line 268
    sget-object p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->TAG:Ljava/lang/String;

    const-string v0, "Selected network is hiddenNetwork"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mDppModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result p0

    .line 271
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public setWifiNetworkConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-void
.end method

.method public setWifiQrCode(Lcom/android/settings/wifi/dpp/WifiQrCode;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    return-void
.end method

.method public showWifiShareDialog()V
    .locals 4

    .line 211
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 212
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 213
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dpp_theme_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 214
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dpp_before_share_summary:I

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    .line 215
    invoke-virtual {v3}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 214
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 216
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->cancel_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$3;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 225
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils$4;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppUtils;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
