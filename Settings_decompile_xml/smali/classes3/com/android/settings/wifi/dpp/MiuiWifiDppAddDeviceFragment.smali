.class public Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;
.super Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;
.source "MiuiWifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;,
        Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;
    }
.end annotation


# instance fields
.field private MSG_CLICK_SHARE_WIFI_BUTTON:I

.field private MSG_DPP_BASE:I

.field private MSG_FAIL_TO_SHARE_WIFI:I

.field private MSG_RE_START_EASY_CONNECT:I

.field private mChooseDifferentNetwork:Landroid/widget/Button;

.field private mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsShareWifi:Z

.field private mLatestStatusCode:I

.field private mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

.field private mShareWifi:Landroid/widget/Button;

.field private mWifiApPictureView:Landroid/widget/ImageView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$9qk2SS4-tUkzqN87-CO3VH9bB1Y(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$onViewCreated$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0FB6uMbzbiAMmcGCMxK3U-jbA4(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$showSuccessUi$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YucV0UQ_uBt5AIzq-MZmrfT8r8s(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$onCreate$3(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bj5w0460ECpRXxnlk5eaVMPFBs8(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$onViewCreated$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$izx4VoNQ9gBVstatQOt8AsSyeH4(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j8LeUm-Zp2TrxbSOjNpcNCIeUDY(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$showSuccessUi$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFVy-7ZYWln4F4dpjXYZP-CLt0Q(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$onViewCreated$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x8v-xuT1_u63wpTr2VVwoTMIYMc(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->lambda$showErrorUi$2(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMSG_CLICK_SHARE_WIFI_BUTTON(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_CLICK_SHARE_WIFI_BUTTON:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMSG_FAIL_TO_SHARE_WIFI(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_FAIL_TO_SHARE_WIFI:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMSG_RE_START_EASY_CONNECT(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_RE_START_EASY_CONNECT:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mIsShareWifi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsShareWifi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mIsShareWifi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmModel(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiManager(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetResultIntent(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->getResultIntent(ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowErrorUi(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;ILandroid/content/Intent;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartWifiDppConfiguratorInitiator(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    const/16 v1, 0x300

    .line 67
    iput v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_DPP_BASE:I

    add-int/lit8 v2, v1, 0x1

    .line 68
    iput v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_CLICK_SHARE_WIFI_BUTTON:I

    add-int/lit8 v2, v1, 0x2

    .line 69
    iput v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_RE_START_EASY_CONNECT:I

    add-int/lit8 v1, v1, 0x3

    .line 70
    iput v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->MSG_FAIL_TO_SHARE_WIFI:I

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mIsShareWifi:Z

    return-void
.end method

.method private DelayShareWifi()V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getResultIntent(ILjava/lang/String;Landroid/util/SparseArray;[I)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "[I>;[I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 144
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.provider.extra.EASY_CONNECT_ERROR_CODE"

    .line 145
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.provider.extra.EASY_CONNECT_ATTEMPTED_SSID"

    .line 148
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_2

    .line 150
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 p2, 0x0

    move v0, p2

    .line 159
    :goto_0
    :try_start_0
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 165
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v4, p2

    .line 166
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 167
    aget v5, v3, v4

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 170
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :catch_1
    const-string p2, "android.provider.extra.EASY_CONNECT_CHANNEL_LIST"

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    .line 181
    array-length p1, p4

    if-eqz p1, :cond_3

    const-string p1, "android.provider.extra.EASY_CONNECT_BAND_LIST"

    .line 182
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_3
    return-object p0
.end method

.method private getSsid()Ljava/lang/String;
    .locals 1

    .line 415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p0

    .line 417
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 418
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasRetryButton(I)Z
    .locals 0

    .line 0
    const/4 p0, -0x3

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initHandler()V
    .locals 1

    .line 499
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$4;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isEasyConnectHandshaking()Z
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$3(Ljava/lang/Integer;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->isWifiDppHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 331
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback-IA;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onConfiguratorSuccess(I)V

    goto :goto_0

    .line 333
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback-IA;)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedSsid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 334
    invoke-virtual {v2}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getTriedChannels()Landroid/util/SparseArray;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getBandArray()[I

    move-result-object p0

    .line 333
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$EasyConnectConfiguratorStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;->onClickChooseDifferentNetwork()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$5(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 376
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mShareWifi:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->updateShareSummary()V

    .line 378
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->DelayShareWifi()V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->reStartEasyConnect()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;)V
    .locals 0

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$7(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 388
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 389
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->updateSummary()V

    return-void
.end method

.method private synthetic lambda$showErrorUi$2(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showSuccessUi$0(Landroid/view/View;)V
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method private synthetic lambda$showSuccessUi$1(Landroid/view/View;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private reStartEasyConnect()V
    .locals 2

    .line 488
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$3;

    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$2;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$3;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Ljava/lang/Runnable;)V

    .line 495
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showErrorUi(ILandroid/content/Intent;Z)V
    .locals 6

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show error UI error code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiWifiDppAddDeviceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 262
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected Wi-Fi DPP error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :pswitch_0
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_qr_code_is_not_valid_format:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :pswitch_1
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_authentication_or_configuration:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 205
    :pswitch_2
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_not_compatible:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_3
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_authentication_or_configuration:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_1

    return-void

    .line 218
    :cond_1
    iget p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    if-eq p1, p2, :cond_2

    .line 223
    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 226
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    return-void

    .line 219
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried restarting EasyConnectSession but stillreceiving EASY_CONNECT_EVENT_FAILURE_BUSY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :pswitch_5
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_timeout:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_6
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_generic:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_7
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_not_supported:I

    .line 240
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 239
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Wi-Fi DPP configurator used a non-PSK/non-SAEnetwork to handshake"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :pswitch_9
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_cannot_find_network:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_a
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_enrollee_authentication:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_b
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_failure_enrollee_rejected_configuration:I

    .line 258
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    :goto_0
    sget v1, Lcom/android/settings/R$string;->wifi_dpp_could_not_add_device:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->wifi_dpp_error:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 270
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->hasRetryButton(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->retry:I

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 275
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v3, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 277
    :goto_1
    new-instance v3, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 283
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_sharing_wifi_with_this_device:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 286
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 287
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {p2, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p3, :cond_6

    .line 290
    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showSuccessUi(Z)V
    .locals 4

    .line 121
    sget v0, Lcom/android/settings/R$drawable;->ic_devices_check_circle_green_32dp:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    .line 122
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_wifi_shared_with_device:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    sget v3, Lcom/android/settings/R$drawable;->wifi_dpp_success:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->wifi_dpp_add_another_device:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->done:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 138
    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_0
    return-void
.end method

.method private startWifiDppConfiguratorInitiator()V
    .locals 2

    .line 424
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;

    .line 428
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getQrCode()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->getWifiNetworkConfig()Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getNetworkId()I

    move-result v1

    .line 432
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;I)V

    return-void
.end method

.method private updateShareSummary()V
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_sharing_wifi_with_this_device:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 461
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->wifi_dpp_sharing_wifi_with_this_device:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->wifi_dpp_add_device_to_wifi:I

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->getSsid()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x63b

    return p0
.end method

.method protected isFooterAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 443
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 445
    check-cast p1, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 314
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_0

    const-string v0, "key_latest_status_code"

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    .line 320
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mModel:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    .line 322
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->getStatusCode()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 337
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->initHandler()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 526
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 527
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 450
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    .line 452
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 345
    sget p0, Lcom/android/settings/R$layout;->miui_wifi_dpp_add_device_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_latest_status_code"

    .line 409
    iget v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 351
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 353
    sget v0, Lcom/android/settings/R$drawable;->ic_devices_other_32dp:I

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;

    .line 356
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppConfiguratorActivity;->getWifiDppQrCode()Lcom/android/settings/wifi/dpp/WifiQrCode;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiQrCode;->getInformation()Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 359
    sget v0, Lcom/android/settings/R$string;->wifi_dpp_device_found:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setHeaderTitle(Ljava/lang/String;)V

    .line 364
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->updateSummary()V

    .line 365
    sget v0, Lcom/android/settings/R$id;->wifi_ap_picture_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    .line 367
    sget v0, Lcom/android/settings/R$id;->choose_different_network:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    .line 368
    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    sget v0, Lcom/android/settings/R$id;->share_wifi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mShareWifi:Landroid/widget/Button;

    .line 374
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p1, v0, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 383
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->wifi_dpp_share_wifi:I

    invoke-virtual {p1, v0, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 386
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_4

    .line 394
    iget p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->mLatestStatusCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 395
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->showSuccessUi(Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    .line 398
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 401
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    :cond_4
    :goto_1
    return-void
.end method
